using System.Collections;
using System.Collections.Generic;
using UnityEngine;

#if UNITY_EDITOR
using UnityEditor;
#endif

public class StripLightController : MonoBehaviour
{
    [Header("Strip Range")]
    [Tooltip("Which strip to start the effect at (1-14)")]
    [Range(1, 14)]
    public int startStrip = 1;

    [Tooltip("Which strip to end the effect at (1-14)")]
    [Range(1, 14)]
    public int endStrip = 14;

    [Header("Timing")]
    [Tooltip("Time in seconds between each strip lighting up")]
    public float delayBetweenStrips = 2f;

    [Header("Direction")]
    [Tooltip("Light up from front to back, or back to front")]
    public bool frontToBack = true;

    [Header("Colors")]
    [Tooltip("Color when lights are OFF")]
    [ColorUsage(false, true)] // HDR color
    public Color offColor = Color.black;

    [Tooltip("Color when lights are ON")]
    [ColorUsage(false, true)] // HDR color
    public Color onColor = Color.white;

    [Header("Emission")]
    [Tooltip("Emission intensity for the ON state")]
    [Range(0f, 10f)]
    public float emissionIntensity = 1f;

    [Header("Control")]
    [Tooltip("Start the effect automatically on Start()")]
    public bool autoStart = false;

    [Tooltip("Loop the effect continuously")]
    public bool loop = false;

    // Internal references
    private Transform lightsParent;
    private Dictionary<string, List<Renderer>> stripRenderers = new Dictionary<string, List<Renderer>>();
    private bool isPlaying = false;

#if UNITY_EDITOR
    // Preview mode variables (Edit mode only)
    private bool isPreviewMode = false;
    private float previewTimer = 0f;
    private int currentPreviewStrip = 0;
    private bool previewInitialized = false;
#endif

    void Start()
    {
        // Find the MRA_Lights parent object
        lightsParent = transform.Find("Main Room/MR_Attic/MRA_Lights");

        if (lightsParent == null)
        {
            Debug.LogError("Could not find MRA_Lights in hierarchy! Make sure this script is on VR_Room.");
            return;
        }

        // Initialize and instance all materials
        InitializeStripMaterials();

        // Set all lights to OFF state initially
        SetAllLightsOff();

        if (autoStart)
        {
            StartEffect();
        }
    }

    /// <summary>
    /// Initialize all strip materials and create instances
    /// </summary>
    void InitializeStripMaterials()
    {
        stripRenderers.Clear();

        for (int stripNum = 1; stripNum <= 14; stripNum++)
        {
            string stripName = "MRAL_Strip_" + stripNum;
            Transform stripTransform = lightsParent.Find(stripName);

            if (stripTransform == null)
            {
                Debug.LogWarning($"Strip {stripName} not found!");
                continue;
            }

            List<Renderer> renderers = new List<Renderer>();

            // Find the 18 lights in this strip by name (MRALS{stripNum}_1 through MRALS{stripNum}_18)
            for (int lightNum = 1; lightNum <= 18; lightNum++)
            {
                string lightName = "MRALS" + stripNum + "_" + lightNum;
                Transform lightTransform = stripTransform.Find(lightName);

                if (lightTransform != null)
                {
                    Renderer rend = lightTransform.GetComponent<Renderer>();
                    if (rend != null)
                    {
                        // Instance the material so each light has its own
                        if (rend.sharedMaterial != null)
                        {
                            rend.material = new Material(rend.sharedMaterial);
                        }
                        renderers.Add(rend);
                    }
                    else
                    {
                        Debug.LogWarning($"Light {lightName} found but has no Renderer component!");
                    }
                }
                else
                {
                    Debug.LogWarning($"Light {lightName} not found in {stripName}!");
                }
            }

            stripRenderers[stripName] = renderers;

            Debug.Log($"Initialized {stripName} with {renderers.Count} lights");
        }
    }

    /// <summary>
    /// Set all lights to the OFF state
    /// </summary>
    void SetAllLightsOff()
    {
        foreach (var kvp in stripRenderers)
        {
            SetStripColor(kvp.Value, offColor, 0f);
        }
    }

    /// <summary>
    /// Set a specific strip's color and emission (HDRP Lit shader)
    /// </summary>
    void SetStripColor(List<Renderer> renderers, Color baseColor, float emission)
    {
        foreach (Renderer rend in renderers)
        {
            if (rend.sharedMaterial != null)
            {
                // HDRP Lit shader properties
                // Set base color
                rend.material.SetColor("_BaseColor", baseColor);
                rend.material.SetColor("_UnlitColor", baseColor); // For unlit mode if used

                // Set emission
                if (emission > 0)
                {
                    // Calculate emission color (color * intensity)
                    Color emissionColor = baseColor * emission;

                    // HDRP requires these properties for emission
                    rend.material.SetColor("_EmissiveColor", emissionColor);
                    rend.material.SetFloat("_EmissiveIntensity", emission);

                    // Enable emission in HDRP
                    rend.material.EnableKeyword("_EMISSION");
                    rend.material.SetFloat("_UseEmissiveIntensity", 1);

                    // Make sure surface type allows emission
                    rend.material.globalIlluminationFlags = MaterialGlobalIlluminationFlags.RealtimeEmissive;
                }
                else
                {
                    // Turn off emission
                    rend.material.SetColor("_EmissiveColor", Color.black);
                    rend.material.SetFloat("_EmissiveIntensity", 0);
                    rend.material.DisableKeyword("_EMISSION");
                }
            }
        }
    }

    /// <summary>
    /// Start the lighting effect
    /// </summary>
    public void StartEffect()
    {
        if (isPlaying)
        {
            Debug.LogWarning("Effect is already playing!");
            return;
        }

        StartCoroutine(RunLightingEffect());
    }

    /// <summary>
    /// Stop the lighting effect
    /// </summary>
    public void StopEffect()
    {
        StopAllCoroutines();
        isPlaying = false;
    }

    /// <summary>
    /// Reset all lights to OFF (works in both Play mode and Edit mode)
    /// </summary>
    public void ResetLights()
    {
#if UNITY_EDITOR
        // If in preview mode, stop preview
        if (isPreviewMode)
        {
            StopPreview();
        }

        // If not initialized for preview, do so
        if (!Application.isPlaying && !previewInitialized)
        {
            InitializeForPreview();
        }
#endif

        // Stop any running effects
        if (Application.isPlaying)
        {
            StopEffect();
        }

        // Reset all lights
        SetAllLightsOff();

#if UNITY_EDITOR
        // Refresh scene view if in editor
        if (!Application.isPlaying)
        {
            SceneView.RepaintAll();
        }
#endif
    }

    /// <summary>
    /// Main coroutine that runs the sequential lighting effect
    /// </summary>
    IEnumerator RunLightingEffect()
    {
        isPlaying = true;

        do
        {
            // Reset all to off
            SetAllLightsOff();

            // Determine order
            int start = frontToBack ? startStrip : endStrip;
            int end = frontToBack ? endStrip : startStrip;
            int step = frontToBack ? 1 : -1;

            // Light up strips sequentially
            for (int i = start; frontToBack ? i <= end : i >= end; i += step)
            {
                string stripName = "MRAL_Strip_" + i;

                if (stripRenderers.ContainsKey(stripName))
                {
                    // Turn ON this strip
                    SetStripColor(stripRenderers[stripName], onColor, emissionIntensity);

                    Debug.Log($"Lighting strip {i}");

                    // Wait before next strip
                    yield return new WaitForSeconds(delayBetweenStrips);
                }
            }

            // If not looping, wait a bit before finishing
            if (!loop)
            {
                yield return new WaitForSeconds(delayBetweenStrips);
            }

        } while (loop);

        isPlaying = false;
    }

#if UNITY_EDITOR
    // ===== EDITOR PREVIEW MODE METHODS =====

    /// <summary>
    /// Initialize for preview mode (Edit mode only)
    /// </summary>
    private void InitializeForPreview()
    {
        if (previewInitialized)
            return;

        // Find the MRA_Lights parent object
        lightsParent = transform.Find("Main Room/MR_Attic/MRA_Lights");

        if (lightsParent == null)
        {
            Debug.LogError("Could not find MRA_Lights in hierarchy! Make sure this script is on VR_Room.");
            return;
        }

        // Initialize and instance all materials
        InitializeStripMaterials();

        // Set all lights to OFF state initially
        SetAllLightsOff();

        previewInitialized = true;
    }

    /// <summary>
    /// Start preview in Edit mode
    /// </summary>
    public void StartPreview()
    {
        if (isPreviewMode)
        {
            Debug.LogWarning("Preview is already running!");
            return;
        }

        // Initialize if needed
        InitializeForPreview();

        if (!previewInitialized)
        {
            Debug.LogError("Preview initialization failed!");
            return;
        }

        isPreviewMode = true;
        previewTimer = Time.realtimeSinceStartup;
        currentPreviewStrip = frontToBack ? startStrip : endStrip;

        // Reset all lights
        SetAllLightsOff();

        // Light up first strip immediately
        UpdatePreviewStrip();

        // Subscribe to editor update
        EditorApplication.update += UpdatePreview;

        Debug.Log("Preview started!");
    }

    /// <summary>
    /// Stop preview in Edit mode
    /// </summary>
    public void StopPreview()
    {
        if (!isPreviewMode)
            return;

        isPreviewMode = false;

        // Unsubscribe from editor update
        EditorApplication.update -= UpdatePreview;

        Debug.Log("Preview stopped!");
    }

    /// <summary>
    /// Check if preview is currently playing
    /// </summary>
    public bool IsPreviewPlaying()
    {
        return isPreviewMode;
    }

    /// <summary>
    /// Update preview (called every editor frame)
    /// </summary>
    private void UpdatePreview()
    {
        if (!isPreviewMode)
            return;

        // Check if enough time has passed for next strip
        if (Time.realtimeSinceStartup - previewTimer >= delayBetweenStrips)
        {
            previewTimer = Time.realtimeSinceStartup;

            // Move to next strip
            if (frontToBack)
            {
                currentPreviewStrip++;
                if (currentPreviewStrip > endStrip)
                {
                    if (loop)
                    {
                        currentPreviewStrip = startStrip;
                        SetAllLightsOff();
                    }
                    else
                    {
                        StopPreview();
                        return;
                    }
                }
            }
            else
            {
                currentPreviewStrip--;
                if (currentPreviewStrip < endStrip)
                {
                    if (loop)
                    {
                        currentPreviewStrip = startStrip;
                        SetAllLightsOff();
                    }
                    else
                    {
                        StopPreview();
                        return;
                    }
                }
            }

            UpdatePreviewStrip();
        }

        // Request repaint
        SceneView.RepaintAll();
    }

    /// <summary>
    /// Update the current preview strip
    /// </summary>
    private void UpdatePreviewStrip()
    {
        string stripName = "MRAL_Strip_" + currentPreviewStrip;

        if (stripRenderers.ContainsKey(stripName))
        {
            // Turn ON this strip
            SetStripColor(stripRenderers[stripName], onColor, emissionIntensity);
            Debug.Log($"Preview: Lighting strip {currentPreviewStrip}");
        }
    }

    /// <summary>
    /// Clean up when component is destroyed
    /// </summary>
    private void OnDestroy()
    {
#if UNITY_EDITOR
        if (isPreviewMode)
        {
            EditorApplication.update -= UpdatePreview;
        }
#endif
        // Clean up instantiated materials to prevent memory leak
        foreach (var kvp in stripRenderers)
        {
            foreach (Renderer rend in kvp.Value)
            {
                if (rend != null && rend.material != null)
                {
                    Destroy(rend.material);
                }
            }
        }
        stripRenderers.Clear();
    }
#endif
}
