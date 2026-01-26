using UnityEngine;

/// <summary>
/// Drop-in replacement for TimeFlow's AudioSample that outputs transient detection
/// instead of raw amplitude. Exposes the same 'Amplitude' property so it works
/// directly with AudioReactive.
///
/// Setup:
/// 1. Add this component alongside your existing AudioSample
/// 2. Drag AudioSample into the "Source Sample" field
/// 3. Point your AudioReactive at this TransientSample instead of AudioSample
/// </summary>
[ExecuteInEditMode]
public class TransientSample : MonoBehaviour
{
    [Header("Source")]
    [Tooltip("The TimeFlow AudioSample to read amplitude from")]
    [SerializeField] private Component _sourceSample;

    [Header("Transient Detection")]
    [Tooltip("Minimum amplitude change to register as a transient")]
    [SerializeField] [Range(0f, 1f)] private float _threshold = 0.05f;

    [Tooltip("Multiplier for transient output")]
    [SerializeField] [Range(0.1f, 10f)] private float _sensitivity = 1f;

    [Tooltip("How fast the transient decays (higher = snappier response)")]
    [SerializeField] [Range(1f, 100f)] private float _decayRate = 20f;

    [Tooltip("Smoothing on input to reduce noise (higher = more smoothing)")]
    [SerializeField] [Range(0f, 0.95f)] private float _inputSmoothing = 0.2f;

    [Header("Output Shaping")]
    [Tooltip("Minimum output value (baseline when no transient)")]
    [SerializeField] private float _outputMin = 0f;

    [Tooltip("Maximum output value (peak of transient)")]
    [SerializeField] private float _outputMax = 1f;

    [Tooltip("Curve to shape the output (X = raw transient, Y = shaped output)")]
    [SerializeField] private AnimationCurve _outputCurve = AnimationCurve.Linear(0f, 0f, 1f, 1f);

    [Header("Debug")]
    [SerializeField] private float _debugAmplitude;
    [SerializeField] private float _debugSourceAmplitude;
    [SerializeField] private bool _debugIsHit;

    // Internal state
    private float _lastSourceAmplitude;
    private float _smoothedSourceAmplitude;
    private float _currentTransient;
    private System.Reflection.PropertyInfo _sourceAmplitudeProperty;

    /// <summary>
    /// The main output - mimics AudioSample.Amplitude so AudioReactive can use it directly.
    /// Returns shaped transient value instead of raw amplitude.
    /// </summary>
    public float Amplitude => _debugAmplitude;

    /// <summary>
    /// True on frames when a new hit/transient is detected.
    /// </summary>
    public bool IsHit => _debugIsHit;

    /// <summary>
    /// Raw transient value before output shaping (0 to ~1+).
    /// </summary>
    public float RawTransient => _currentTransient;

    private void OnEnable()
    {
        CacheSourceProperty();
        ResetState();
    }

    private void OnValidate()
    {
        CacheSourceProperty();

        // Ensure curve has valid keys
        if (_outputCurve == null || _outputCurve.keys.Length == 0)
        {
            _outputCurve = AnimationCurve.Linear(0f, 0f, 1f, 1f);
        }
    }

    private void Update()
    {
        if (_sourceSample == null || _sourceAmplitudeProperty == null)
        {
            _debugAmplitude = _outputMin;
            return;
        }

        // Read source amplitude
        float sourceAmplitude = (float)_sourceAmplitudeProperty.GetValue(_sourceSample);
        _debugSourceAmplitude = sourceAmplitude;

        // Smooth the input
        _smoothedSourceAmplitude = Mathf.Lerp(_smoothedSourceAmplitude, sourceAmplitude, 1f - _inputSmoothing);

        // Calculate delta (positive changes only = attacks)
        float delta = _smoothedSourceAmplitude - _lastSourceAmplitude;
        _lastSourceAmplitude = _smoothedSourceAmplitude;

        // Detect transient
        _debugIsHit = false;
        if (delta > _threshold)
        {
            _currentTransient = Mathf.Clamp01(delta * _sensitivity);
            _debugIsHit = true;
        }
        else
        {
            // Decay
            _currentTransient = Mathf.MoveTowards(_currentTransient, 0f, _decayRate * Time.deltaTime);
        }

        // Shape output
        float shaped = _outputCurve.Evaluate(_currentTransient);
        _debugAmplitude = Mathf.Lerp(_outputMin, _outputMax, shaped);
    }

    private void CacheSourceProperty()
    {
        _sourceAmplitudeProperty = null;

        if (_sourceSample == null)
            return;

        _sourceAmplitudeProperty = _sourceSample.GetType().GetProperty("Amplitude");

        if (_sourceAmplitudeProperty == null)
        {
            Debug.LogWarning($"TransientSample: '{_sourceSample.GetType().Name}' doesn't have an 'Amplitude' property. " +
                           "Make sure you're referencing a TimeFlow AudioSample.");
        }
    }

    private void ResetState()
    {
        _lastSourceAmplitude = 0f;
        _smoothedSourceAmplitude = 0f;
        _currentTransient = 0f;
        _debugAmplitude = _outputMin;
    }

    /// <summary>
    /// Set the source AudioSample at runtime.
    /// </summary>
    public void SetSourceSample(Component sample)
    {
        _sourceSample = sample;
        CacheSourceProperty();
        ResetState();
    }
}
