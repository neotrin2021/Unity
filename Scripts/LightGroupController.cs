using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Virtual light grouping system - group lights from different rows without reparenting.
/// Create groups, select full rows or specific light ranges, and control them together.
///
/// Setup:
/// 1. Create empty GameObject, add this script
/// 2. Add groups in the Inspector
/// 3. For each group, add selections (row + light range)
/// 4. Use the public properties or methods to control grouped lights
/// </summary>
[ExecuteInEditMode]
public class LightGroupController : MonoBehaviour
{
    [System.Serializable]
    public class LightSelection
    {
        [Tooltip("The row parent GameObject")]
        public Transform row;

        [Tooltip("Include all lights in this row")]
        public bool fullRow = true;

        [Tooltip("Starting light index (0-based). Only used if Full Row is unchecked.")]
        [Range(0, 50)] public int startIndex = 0;

        [Tooltip("Ending light index (inclusive). Only used if Full Row is unchecked.")]
        [Range(0, 50)] public int endIndex = 19;

        /// <summary>
        /// Get all light transforms from this selection.
        /// </summary>
        public List<Transform> GetLights()
        {
            var lights = new List<Transform>();

            if (row == null)
                return lights;

            if (fullRow)
            {
                // Add all children
                for (int i = 0; i < row.childCount; i++)
                {
                    lights.Add(row.GetChild(i));
                }
            }
            else
            {
                // Add specific range
                int start = Mathf.Clamp(startIndex, 0, row.childCount - 1);
                int end = Mathf.Clamp(endIndex, start, row.childCount - 1);

                for (int i = start; i <= end; i++)
                {
                    lights.Add(row.GetChild(i));
                }
            }

            return lights;
        }
    }

    [System.Serializable]
    public class LightGroup
    {
        public string groupName = "New Group";
        public List<LightSelection> selections = new List<LightSelection>();

        [Header("Group Settings")]
        [Tooltip("Color for this group (HDR for bloom)")]
        [ColorUsage(true, true)] public Color color = Color.white;

        [Tooltip("Emission color for this group (HDR)")]
        [ColorUsage(true, true)] public Color emissionColor = Color.black;

        [Tooltip("Enable emission for this group")]
        public bool enableEmission = false;

        [Tooltip("Intensity multiplier (works with HDR colors)")]
        [Range(0f, 10f)] public float intensity = 1f;

        // Cached lights for performance
        [System.NonSerialized] private List<Transform> _cachedLights;
        [System.NonSerialized] private bool _cacheValid = false;

        /// <summary>
        /// Get all lights in this group (cached for performance).
        /// </summary>
        public List<Transform> GetAllLights(bool forceRefresh = false)
        {
            if (_cachedLights == null || forceRefresh || !_cacheValid)
            {
                _cachedLights = new List<Transform>();
                foreach (var selection in selections)
                {
                    _cachedLights.AddRange(selection.GetLights());
                }
                _cacheValid = true;
            }
            return _cachedLights;
        }

        public void InvalidateCache()
        {
            _cacheValid = false;
        }
    }

    [Header("Light Groups")]
    [Tooltip("Define your light groups here")]
    public List<LightGroup> groups = new List<LightGroup>();

    [Header("Global Control")]
    [Tooltip("Apply settings to all groups")]
    public bool applyToAllGroups = false;

    [Tooltip("Master color (when Apply To All Groups is enabled)")]
    [ColorUsage(true, true)] public Color masterColor = Color.white;

    [Tooltip("Master emission (when Apply To All Groups is enabled)")]
    [ColorUsage(true, true)] public Color masterEmission = Color.black;

    [Tooltip("Master intensity multiplier")]
    [Range(0f, 10f)] public float masterIntensity = 1f;

    // Cached components on lights
    private Dictionary<Transform, InstanceMaterial> _instanceMaterialCache = new Dictionary<Transform, InstanceMaterial>();
    private Dictionary<Transform, Renderer> _rendererCache = new Dictionary<Transform, Renderer>();

    // Shader property IDs
    private static readonly int ColorID = Shader.PropertyToID("_Color");
    private static readonly int BaseColorID = Shader.PropertyToID("_BaseColor");
    private static readonly int EmissionColorID = Shader.PropertyToID("_EmissionColor");
    private static readonly int EmissiveColorID = Shader.PropertyToID("_EmissiveColor");

    private void OnValidate()
    {
        // Invalidate caches when inspector changes
        foreach (var group in groups)
        {
            group.InvalidateCache();
        }

        // Apply changes in editor
        ApplyAllGroupSettings();
    }

    private void Update()
    {
        // Apply settings each frame (for animation/TimeFlow support)
        if (Application.isPlaying)
        {
            ApplyAllGroupSettings();
        }
    }

    /// <summary>
    /// Apply current settings to all groups.
    /// </summary>
    public void ApplyAllGroupSettings()
    {
        if (applyToAllGroups)
        {
            // Apply master settings to all groups
            foreach (var group in groups)
            {
                ApplyToLights(group.GetAllLights(), masterColor, masterEmission, group.enableEmission, masterIntensity);
            }
        }
        else
        {
            // Apply individual group settings
            foreach (var group in groups)
            {
                ApplyToLights(group.GetAllLights(), group.color, group.emissionColor, group.enableEmission, group.intensity);
            }
        }
    }

    /// <summary>
    /// Apply color/emission to a list of lights.
    /// </summary>
    private void ApplyToLights(List<Transform> lights, Color color, Color emission, bool enableEmission, float intensity)
    {
        Color finalColor = color * intensity;
        Color finalEmission = enableEmission ? emission * intensity : Color.black;

        foreach (var light in lights)
        {
            if (light == null) continue;

            // Try InstanceMaterial first (preferred)
            if (TryGetInstanceMaterial(light, out var instanceMat))
            {
                instanceMat.Color = finalColor;
                instanceMat.EmissionColor = finalEmission;
                instanceMat.EnableEmission = enableEmission;
            }
            else if (TryGetRenderer(light, out var renderer))
            {
                // Fallback to MaterialPropertyBlock
                var block = new MaterialPropertyBlock();
                renderer.GetPropertyBlock(block);

                block.SetColor(ColorID, finalColor);
                block.SetColor(BaseColorID, finalColor);
                block.SetColor(EmissionColorID, finalEmission);
                block.SetColor(EmissiveColorID, finalEmission);

                renderer.SetPropertyBlock(block);
            }
        }
    }

    private bool TryGetInstanceMaterial(Transform t, out InstanceMaterial mat)
    {
        if (!_instanceMaterialCache.TryGetValue(t, out mat))
        {
            mat = t.GetComponent<InstanceMaterial>();
            _instanceMaterialCache[t] = mat;
        }
        return mat != null;
    }

    private bool TryGetRenderer(Transform t, out Renderer renderer)
    {
        if (!_rendererCache.TryGetValue(t, out renderer))
        {
            renderer = t.GetComponent<Renderer>();
            _rendererCache[t] = renderer;
        }
        return renderer != null;
    }

    #region Public API for TimeFlow / Scripts

    /// <summary>
    /// Get a group by name.
    /// </summary>
    public LightGroup GetGroup(string groupName)
    {
        return groups.Find(g => g.groupName == groupName);
    }

    /// <summary>
    /// Get a group by index.
    /// </summary>
    public LightGroup GetGroup(int index)
    {
        if (index >= 0 && index < groups.Count)
            return groups[index];
        return null;
    }

    /// <summary>
    /// Set color for a specific group by name.
    /// </summary>
    public void SetGroupColor(string groupName, Color color)
    {
        var group = GetGroup(groupName);
        if (group != null)
        {
            group.color = color;
            ApplyToLights(group.GetAllLights(), color, group.emissionColor, group.enableEmission, group.intensity);
        }
    }

    /// <summary>
    /// Set color for a specific group by index.
    /// </summary>
    public void SetGroupColor(int index, Color color)
    {
        var group = GetGroup(index);
        if (group != null)
        {
            group.color = color;
            ApplyToLights(group.GetAllLights(), color, group.emissionColor, group.enableEmission, group.intensity);
        }
    }

    /// <summary>
    /// Set emission for a specific group by name.
    /// </summary>
    public void SetGroupEmission(string groupName, Color emission, bool enable = true)
    {
        var group = GetGroup(groupName);
        if (group != null)
        {
            group.emissionColor = emission;
            group.enableEmission = enable;
            ApplyToLights(group.GetAllLights(), group.color, emission, enable, group.intensity);
        }
    }

    /// <summary>
    /// Set emission for a specific group by index.
    /// </summary>
    public void SetGroupEmission(int index, Color emission, bool enable = true)
    {
        var group = GetGroup(index);
        if (group != null)
        {
            group.emissionColor = emission;
            group.enableEmission = enable;
            ApplyToLights(group.GetAllLights(), group.color, emission, enable, group.intensity);
        }
    }

    /// <summary>
    /// Set intensity for a specific group.
    /// </summary>
    public void SetGroupIntensity(string groupName, float intensity)
    {
        var group = GetGroup(groupName);
        if (group != null)
        {
            group.intensity = intensity;
            ApplyToLights(group.GetAllLights(), group.color, group.emissionColor, group.enableEmission, intensity);
        }
    }

    /// <summary>
    /// Set intensity for a specific group by index.
    /// </summary>
    public void SetGroupIntensity(int index, float intensity)
    {
        var group = GetGroup(index);
        if (group != null)
        {
            group.intensity = intensity;
            ApplyToLights(group.GetAllLights(), group.color, group.emissionColor, group.enableEmission, intensity);
        }
    }

    /// <summary>
    /// Refresh light caches (call after hierarchy changes).
    /// </summary>
    public void RefreshCaches()
    {
        _instanceMaterialCache.Clear();
        _rendererCache.Clear();
        foreach (var group in groups)
        {
            group.InvalidateCache();
        }
    }

    /// <summary>
    /// Get total light count in a group.
    /// </summary>
    public int GetGroupLightCount(string groupName)
    {
        var group = GetGroup(groupName);
        return group?.GetAllLights().Count ?? 0;
    }

    /// <summary>
    /// Get total light count in a group by index.
    /// </summary>
    public int GetGroupLightCount(int index)
    {
        var group = GetGroup(index);
        return group?.GetAllLights().Count ?? 0;
    }

    #endregion
}
