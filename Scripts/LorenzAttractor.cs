using UnityEngine;

/// <summary>
/// Generates and animates a Lorenz attractor - the classic "butterfly" chaotic system.
/// Uses a Trail Renderer to create a laser-drawing effect.
///
/// The Lorenz attractor is defined by three differential equations that create
/// beautiful, never-repeating spiral patterns.
/// </summary>
[RequireComponent(typeof(TrailRenderer))]
public class LorenzAttractor : MonoBehaviour
{
    [Header("Lorenz Parameters")]
    [Tooltip("Sigma (σ) - Prandtl number. Classic value: 10")]
    [SerializeField] private float _sigma = 10f;

    [Tooltip("Rho (ρ) - Rayleigh number. Classic value: 28")]
    [SerializeField] private float _rho = 28f;

    [Tooltip("Beta (β) - Geometric factor. Classic value: 8/3 ≈ 2.667")]
    [SerializeField] private float _beta = 8f / 3f;

    [Header("Animation")]
    [Tooltip("Speed of the simulation")]
    [SerializeField] private float _speed = 1f;

    [Tooltip("Scale of the attractor in world space")]
    [SerializeField] private float _scale = 0.1f;

    [Tooltip("Time step for simulation (smaller = smoother, more expensive)")]
    [SerializeField] [Range(0.001f, 0.05f)] private float _timeStep = 0.01f;

    [Tooltip("Steps to calculate per frame (higher = faster drawing)")]
    [SerializeField] [Range(1, 50)] private int _stepsPerFrame = 10;

    [Header("Starting Position")]
    [Tooltip("Initial X position (small changes create vastly different paths)")]
    [SerializeField] private float _startX = 0.1f;

    [Tooltip("Initial Y position")]
    [SerializeField] private float _startY = 0f;

    [Tooltip("Initial Z position")]
    [SerializeField] private float _startZ = 0f;

    [Header("Rotation")]
    [Tooltip("Rotate the entire attractor over time")]
    [SerializeField] private bool _autoRotate = false;

    [Tooltip("Rotation speed in degrees per second")]
    [SerializeField] private Vector3 _rotationSpeed = new Vector3(0f, 10f, 0f);

    [Header("Audio Reactive (Optional)")]
    [Tooltip("Optional - link to TransientSample or AudioSample to modulate speed")]
    [SerializeField] private Component _audioSource;

    [Tooltip("How much audio amplitude affects speed (0 = none, 1 = doubles at full amplitude)")]
    [SerializeField] [Range(0f, 2f)] private float _audioSpeedInfluence = 0.5f;

    // Current position in the attractor
    private Vector3 _currentPoint;
    private TrailRenderer _trailRenderer;
    private System.Reflection.PropertyInfo _amplitudeProperty;

    // Center offset (Lorenz attractor is centered around 0,0,~25)
    private Vector3 _centerOffset = new Vector3(0f, 0f, -25f);

    #region Public Properties (for TimeFlow / Animation)

    /// <summary>Speed of the simulation. Animatable via TimeFlow.</summary>
    public float Speed
    {
        get => _speed;
        set => _speed = value;
    }

    /// <summary>Scale of the attractor in world space. Animatable via TimeFlow.</summary>
    public float Scale
    {
        get => _scale;
        set => _scale = value;
    }

    /// <summary>Sigma (σ) parameter. Classic: 10. Animatable via TimeFlow.</summary>
    public float Sigma
    {
        get => _sigma;
        set => _sigma = value;
    }

    /// <summary>Rho (ρ) parameter. Classic: 28. Animatable via TimeFlow.</summary>
    public float Rho
    {
        get => _rho;
        set => _rho = value;
    }

    /// <summary>Beta (β) parameter. Classic: 2.667. Animatable via TimeFlow.</summary>
    public float Beta
    {
        get => _beta;
        set => _beta = value;
    }

    /// <summary>Steps per frame (drawing speed). Animatable via TimeFlow.</summary>
    public int StepsPerFrame
    {
        get => _stepsPerFrame;
        set => _stepsPerFrame = Mathf.Clamp(value, 1, 50);
    }

    /// <summary>Rotation speed in degrees/sec. Animatable via TimeFlow.</summary>
    public Vector3 RotationSpeed
    {
        get => _rotationSpeed;
        set => _rotationSpeed = value;
    }

    /// <summary>How much audio affects speed. Animatable via TimeFlow.</summary>
    public float AudioSpeedInfluence
    {
        get => _audioSpeedInfluence;
        set => _audioSpeedInfluence = value;
    }

    #endregion

    private void OnEnable()
    {
        _trailRenderer = GetComponent<TrailRenderer>();
        ResetAttractor();
        CacheAudioProperty();
    }

    private void OnValidate()
    {
        CacheAudioProperty();
    }

    private void Update()
    {
        float speedMultiplier = _speed;

        // Apply audio reactivity if linked
        if (_audioSource != null && _amplitudeProperty != null)
        {
            float amplitude = (float)_amplitudeProperty.GetValue(_audioSource);
            speedMultiplier *= 1f + (amplitude * _audioSpeedInfluence);
        }

        // Calculate multiple steps per frame for smooth drawing
        for (int i = 0; i < _stepsPerFrame; i++)
        {
            StepSimulation(_timeStep * speedMultiplier);
        }

        // Apply position
        transform.localPosition = (_currentPoint + _centerOffset) * _scale;

        // Auto rotation
        if (_autoRotate)
        {
            transform.parent?.Rotate(_rotationSpeed * Time.deltaTime, Space.Self);
        }
    }

    private void StepSimulation(float dt)
    {
        // Lorenz equations:
        // dx/dt = σ(y - x)
        // dy/dt = x(ρ - z) - y
        // dz/dt = xy - βz

        float dx = _sigma * (_currentPoint.y - _currentPoint.x);
        float dy = _currentPoint.x * (_rho - _currentPoint.z) - _currentPoint.y;
        float dz = _currentPoint.x * _currentPoint.y - _beta * _currentPoint.z;

        _currentPoint.x += dx * dt;
        _currentPoint.y += dy * dt;
        _currentPoint.z += dz * dt;
    }

    private void CacheAudioProperty()
    {
        _amplitudeProperty = null;
        if (_audioSource != null)
        {
            _amplitudeProperty = _audioSource.GetType().GetProperty("Amplitude");
        }
    }

    /// <summary>
    /// Reset the attractor to its starting position.
    /// </summary>
    public void ResetAttractor()
    {
        _currentPoint = new Vector3(_startX, _startY, _startZ);

        if (_trailRenderer != null)
        {
            _trailRenderer.Clear();
        }
    }

    /// <summary>
    /// Randomize starting position for a unique path.
    /// </summary>
    public void RandomizeStart()
    {
        _startX = Random.Range(-1f, 1f);
        _startY = Random.Range(-1f, 1f);
        _startZ = Random.Range(-1f, 1f);
        ResetAttractor();
    }

    /// <summary>
    /// Set Lorenz parameters at runtime.
    /// </summary>
    public void SetParameters(float sigma, float rho, float beta)
    {
        _sigma = sigma;
        _rho = rho;
        _beta = beta;
    }
}
