using UnityEngine;

/// <summary>
/// BPM-based timing generator for TimeFlow integration.
/// Outputs beat pulses and progress values that can drive light sequences,
/// animations, and any time-based effects synced to the beat.
///
/// Exposes 'Amplitude' property for direct use with AudioReactive.
///
/// Setup:
/// 1. Set your BPM
/// 2. Optionally link an AudioSource to sync timing with playback
/// 3. Point AudioReactive at this component (reads Amplitude)
/// </summary>
[ExecuteInEditMode]
public class BeatSample : MonoBehaviour
{
    [Header("BPM Settings")]
    [Tooltip("Beats per minute")]
    [SerializeField] [Range(20f, 300f)] private float _bpm = 120f;

    [Tooltip("Beats per bar (4 = standard 4/4 time)")]
    [SerializeField] [Range(1, 16)] private int _beatsPerBar = 4;

    [Tooltip("Beat subdivision (1 = quarter notes, 2 = eighth notes, 4 = sixteenth notes)")]
    [SerializeField] [Range(1, 8)] private int _subdivision = 1;

    [Header("Sync Source (Optional)")]
    [Tooltip("Link an AudioSource to sync beat timing with audio playback")]
    [SerializeField] private AudioSource _audioSource;

    [Tooltip("Offset in seconds to align beats with audio (nudge if beats feel off)")]
    [SerializeField] [Range(-0.5f, 0.5f)] private float _syncOffset = 0f;

    [Header("Pulse Shape")]
    [Tooltip("How fast the beat pulse decays (higher = snappier)")]
    [SerializeField] [Range(5f, 100f)] private float _pulseDecay = 30f;

    [Tooltip("Pulse output curve (X = time since beat 0-1, Y = pulse strength)")]
    [SerializeField] private AnimationCurve _pulseCurve = AnimationCurve.EaseInOut(0f, 1f, 1f, 0f);

    [Header("Output Values")]
    [SerializeField] private float _amplitude;           // Pulse on each beat (for AudioReactive)
    [SerializeField] [Range(0f, 1f)] private float _beatProgress;    // 0-1 progress between beats
    [SerializeField] [Range(0f, 1f)] private float _barProgress;     // 0-1 progress across full bar
    [SerializeField] private int _currentBeat;           // Which beat in the bar (0 to beatsPerBar-1)
    [SerializeField] private bool _isOnBeat;             // True on the frame a beat occurs

    // Internal timing
    private double _lastBeatTime;
    private double _currentTime;
    private int _lastBeatIndex;

    /// <summary>
    /// Beat pulse amplitude (0-1). Spikes on each beat, then decays.
    /// Use this with AudioReactive as a drop-in replacement for AudioSample.
    /// </summary>
    public float Amplitude => _amplitude;

    /// <summary>
    /// Progress between beats (0 to 1). Use for smooth animations that complete each beat.
    /// Example: Lerp a light position from A to B using this value.
    /// </summary>
    public float BeatProgress => _beatProgress;

    /// <summary>
    /// Progress across a full bar (0 to 1). Use for sequences that span multiple beats.
    /// Example: Bounce lights back and forth over a full bar.
    /// </summary>
    public float BarProgress => _barProgress;

    /// <summary>
    /// Current beat index within the bar (0 to BeatsPerBar-1).
    /// Use for step sequencers or per-beat light selection.
    /// </summary>
    public int CurrentBeat => _currentBeat;

    /// <summary>
    /// True on the frame when a beat occurs. Use for triggering one-shot events.
    /// </summary>
    public bool IsOnBeat => _isOnBeat;

    /// <summary>
    /// Current BPM (can be changed at runtime).
    /// </summary>
    public float BPM
    {
        get => _bpm;
        set => _bpm = Mathf.Clamp(value, 20f, 300f);
    }

    /// <summary>
    /// Seconds per beat at current BPM.
    /// </summary>
    public float SecondsPerBeat => 60f / (_bpm * _subdivision);

    /// <summary>
    /// Seconds per bar at current BPM.
    /// </summary>
    public float SecondsPerBar => SecondsPerBeat * _beatsPerBar;

    private void OnEnable()
    {
        _lastBeatTime = GetCurrentTime();
        _lastBeatIndex = -1;
    }

    private void Update()
    {
        UpdateTiming();
    }

    private void UpdateTiming()
    {
        _currentTime = GetCurrentTime() + _syncOffset;

        float spb = SecondsPerBeat;
        float spBar = SecondsPerBar;

        // Calculate beat progress
        double timeSinceStart = _currentTime;
        double beatNumber = timeSinceStart / spb;
        int currentBeatIndex = Mathf.FloorToInt((float)beatNumber);

        _beatProgress = (float)(beatNumber - currentBeatIndex);
        _currentBeat = currentBeatIndex % _beatsPerBar;

        // Bar progress
        double barNumber = timeSinceStart / spBar;
        _barProgress = (float)(barNumber - Mathf.Floor((float)barNumber));

        // Detect beat transition
        _isOnBeat = currentBeatIndex != _lastBeatIndex;

        if (_isOnBeat)
        {
            _lastBeatTime = _currentTime;
            _lastBeatIndex = currentBeatIndex;
        }

        // Calculate pulse amplitude (decays after each beat)
        float timeSinceBeat = (float)(_currentTime - _lastBeatTime);
        float normalizedTime = Mathf.Clamp01(timeSinceBeat * _pulseDecay / 10f);
        _amplitude = _pulseCurve.Evaluate(normalizedTime);
    }

    private double GetCurrentTime()
    {
        if (_audioSource != null && _audioSource.isPlaying)
        {
            return _audioSource.time;
        }

        // Use unscaled time for editor preview and when no audio source
        if (Application.isPlaying)
        {
            return Time.timeAsDouble;
        }
        else
        {
#if UNITY_EDITOR
            return UnityEditor.EditorApplication.timeSinceStartup;
#else
            return Time.timeAsDouble;
#endif
        }
    }

    /// <summary>
    /// Reset timing to beat 0. Call this when starting a song.
    /// </summary>
    public void ResetTiming()
    {
        _lastBeatTime = GetCurrentTime();
        _lastBeatIndex = -1;
        _currentBeat = 0;
        _beatProgress = 0f;
        _barProgress = 0f;
    }

    /// <summary>
    /// Tap to set BPM. Call this repeatedly in rhythm to detect BPM.
    /// </summary>
    public void TapTempo()
    {
        double now = GetCurrentTime();
        double interval = now - _lastBeatTime;

        // Ignore taps that are too fast (< 200ms) or too slow (> 3s)
        if (interval > 0.2 && interval < 3.0)
        {
            _bpm = Mathf.Lerp(_bpm, (float)(60.0 / interval), 0.3f);
        }

        _lastBeatTime = now;
    }

    /// <summary>
    /// Manually trigger a beat (useful for external sync).
    /// </summary>
    public void TriggerBeat()
    {
        _lastBeatTime = GetCurrentTime();
        _isOnBeat = true;
        _amplitude = 1f;
    }
}
