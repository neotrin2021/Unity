using UnityEngine;

/// <summary>
/// Detects audio transients (attacks) by tracking the rate of change in amplitude.
/// Use this instead of raw amplitude when you need distinct spikes per drum hit,
/// even when hits are close together.
/// </summary>
[ExecuteInEditMode]
public class TransientDetector : MonoBehaviour
{
    [Header("Audio Source")]
    [Tooltip("Reference to TimeFlow's AudioSample component")]
    [SerializeField] private Component _audioSample;

    [Header("Detection Settings")]
    [Tooltip("Minimum amplitude change to register as a transient (filters noise)")]
    [SerializeField] [Range(0f, 1f)] private float _threshold = 0.05f;

    [Tooltip("Multiplier for the transient output")]
    [SerializeField] [Range(0.1f, 10f)] private float _sensitivity = 1f;

    [Tooltip("How fast the transient value decays after a hit (higher = faster decay)")]
    [SerializeField] [Range(1f, 50f)] private float _decayRate = 15f;

    [Tooltip("Smoothing applied to input amplitude (reduces jitter, higher = more smoothing)")]
    [SerializeField] [Range(0f, 0.99f)] private float _inputSmoothing = 0.3f;

    [Header("Output")]
    [Tooltip("Current transient value (spikes on hits, then decays)")]
    [SerializeField] [Range(0f, 2f)] private float _transientValue;

    [Tooltip("True during the frame when a transient is detected")]
    [SerializeField] private bool _isHit;

    // Internal state
    private float _lastAmplitude;
    private float _smoothedAmplitude;
    private float _currentTransient;

    // Cached reflection for AudioSample.Amplitude
    private System.Reflection.PropertyInfo _amplitudeProperty;

    /// <summary>
    /// Current transient value (0 to ~1+). Spikes on each hit, then decays.
    /// Use this to drive your effects instead of raw amplitude.
    /// </summary>
    public float TransientValue => _transientValue;

    /// <summary>
    /// True on the frame when a new transient/hit is detected.
    /// </summary>
    public bool IsHit => _isHit;

    /// <summary>
    /// Current smoothed amplitude from the audio source.
    /// </summary>
    public float SmoothedAmplitude => _smoothedAmplitude;

    private void OnEnable()
    {
        CacheAmplitudeProperty();
        _lastAmplitude = 0f;
        _smoothedAmplitude = 0f;
        _currentTransient = 0f;
    }

    private void OnValidate()
    {
        CacheAmplitudeProperty();
    }

    private void Update()
    {
        if (_audioSample == null || _amplitudeProperty == null)
            return;

        // Get current amplitude from AudioSample
        float rawAmplitude = (float)_amplitudeProperty.GetValue(_audioSample);

        // Apply input smoothing to reduce jitter
        _smoothedAmplitude = Mathf.Lerp(_smoothedAmplitude, rawAmplitude, 1f - _inputSmoothing);

        // Calculate delta (rate of change)
        float delta = _smoothedAmplitude - _lastAmplitude;
        _lastAmplitude = _smoothedAmplitude;

        // Only care about positive changes (attacks, not releases)
        _isHit = false;
        if (delta > _threshold)
        {
            // New transient detected - spike the value
            _currentTransient = delta * _sensitivity;
            _isHit = true;
        }
        else
        {
            // Decay the transient value
            _currentTransient = Mathf.MoveTowards(_currentTransient, 0f, _decayRate * Time.deltaTime);
        }

        _transientValue = _currentTransient;
    }

    private void CacheAmplitudeProperty()
    {
        if (_audioSample == null)
        {
            _amplitudeProperty = null;
            return;
        }

        // Cache the Amplitude property via reflection (works with TimeFlow's AudioSample)
        _amplitudeProperty = _audioSample.GetType().GetProperty("Amplitude");

        if (_amplitudeProperty == null)
        {
            Debug.LogWarning($"TransientDetector: '{_audioSample.GetType().Name}' does not have an 'Amplitude' property.");
        }
    }

    /// <summary>
    /// Manually set the audio sample source at runtime.
    /// </summary>
    public void SetAudioSample(Component audioSample)
    {
        _audioSample = audioSample;
        CacheAmplitudeProperty();
    }
}
