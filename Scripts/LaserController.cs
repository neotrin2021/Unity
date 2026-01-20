using UnityEngine;
using System.Collections.Generic;

#if UNITY_EDITOR
using UnityEditor;
#endif

/// <summary>
/// Comprehensive club laser system supporting both line beams and fan effects.
/// Requires MirzaConverted shader for proper volumetric laser appearance.
/// </summary>
[ExecuteAlways]
public class LaserController : MonoBehaviour
{
    [Header("Laser Configuration")]
    [SerializeField] private List<LaserBeam> laserBeams = new List<LaserBeam>();

    [Header("Shader Reference")]
    [SerializeField] private Material laserMaterial;

    [Header("Animation Settings")]
    [SerializeField] private bool enableAnimation = true;
    [SerializeField] private float globalAnimationSpeed = 1f;

    // Runtime data
    private Dictionary<LaserBeam, GameObject> beamObjects = new Dictionary<LaserBeam, GameObject>();
    private Dictionary<LaserBeam, Material> beamMaterials = new Dictionary<LaserBeam, Material>();
    private Dictionary<LaserBeam, int> beamIds = new Dictionary<LaserBeam, int>();
    private int beamIdCounter = 0;
    private bool isPreviewActive = false;
    private float previewTime = 0f;

    #region Public API

    /// <summary>
    /// Adds a new laser beam to the controller and creates its visual representation.
    /// </summary>
    /// <param name="beam">The laser beam configuration to add</param>
    public void AddLaser(LaserBeam beam)
    {
        laserBeams.Add(beam);
        CreateBeamObject(beam);
    }

    /// <summary>
    /// Removes a laser beam from the controller and destroys its visual representation.
    /// </summary>
    /// <param name="beam">The laser beam to remove</param>
    public void RemoveLaser(LaserBeam beam)
    {
        DestroyBeamObject(beam);
        laserBeams.Remove(beam);
    }

    /// <summary>
    /// Removes all laser beams and destroys all visual representations.
    /// </summary>
    public void ClearAllLasers()
    {
        foreach (var beam in laserBeams)
        {
            DestroyBeamObject(beam);
        }
        laserBeams.Clear();
    }

    /// <summary>
    /// Refreshes all laser beam visual representations (useful after modifying beam properties).
    /// </summary>
    public void RefreshAllLasers()
    {
        foreach (var beam in laserBeams)
        {
            RefreshBeamObject(beam);
        }
    }

    #endregion

    #region Preview System (Edit Mode)

#if UNITY_EDITOR
    /// <summary>
    /// Starts Edit mode preview, creating all laser beams and enabling animation.
    /// </summary>
    public void StartPreview()
    {
        if (isPreviewActive) return;

        isPreviewActive = true;
        previewTime = 0f;
        EditorApplication.update += UpdatePreview;

        // Create all beam objects
        foreach (var beam in laserBeams)
        {
            if (beam.enabled)
            {
                CreateBeamObject(beam);
            }
        }
    }

    /// <summary>
    /// Stops Edit mode preview and destroys all laser beam visual representations.
    /// </summary>
    public void StopPreview()
    {
        if (!isPreviewActive) return;

        isPreviewActive = false;
        EditorApplication.update -= UpdatePreview;

        // Destroy all beam objects
        DestroyAllBeamObjects();
    }

    /// <summary>
    /// Returns whether the Edit mode preview is currently active.
    /// </summary>
    public bool IsPreviewActive()
    {
        return isPreviewActive;
    }

    private void UpdatePreview()
    {
        if (!isPreviewActive) return;

        previewTime += Time.deltaTime * globalAnimationSpeed;

        // Debug: Uncomment to verify animation loop is running
        // Debug.Log($"Preview Update - Time: {previewTime:F2}, DeltaTime: {Time.deltaTime:F4}");

        foreach (var beam in laserBeams)
        {
            if (beam.enabled && beamObjects.ContainsKey(beam))
            {
                UpdateBeamAnimation(beam, previewTime);
                UpdateBeamShaderProperties(beam);
            }
        }

        SceneView.RepaintAll();
    }
#endif

    #endregion

    #region Unity Lifecycle

    private void Update()
    {
        if (!Application.isPlaying) return;

        if (enableAnimation)
        {
            previewTime += Time.deltaTime * globalAnimationSpeed;

            foreach (var beam in laserBeams)
            {
                if (beam.enabled)
                {
                    UpdateBeamAnimation(beam, previewTime);
                    UpdateBeamShaderProperties(beam);
                }
            }
        }
    }

    private void OnEnable()
    {
        if (Application.isPlaying)
        {
            // Create all beam objects in Play mode
            foreach (var beam in laserBeams)
            {
                if (beam.enabled)
                {
                    CreateBeamObject(beam);
                }
            }
        }
    }

    private void OnDisable()
    {
#if UNITY_EDITOR
        if (isPreviewActive)
        {
            EditorApplication.update -= UpdatePreview;
            isPreviewActive = false;
        }
#endif
        DestroyAllBeamObjects();
    }

    private void OnDestroy()
    {
#if UNITY_EDITOR
        if (isPreviewActive)
        {
            EditorApplication.update -= UpdatePreview;
        }
#endif

        // Clean up material instances
        foreach (var mat in beamMaterials.Values)
        {
            if (mat != null)
            {
                if (Application.isPlaying)
                    Destroy(mat);
                else
                    DestroyImmediate(mat);
            }
        }
        beamMaterials.Clear();

        DestroyAllBeamObjects();
    }

    #endregion

    #region Beam Creation

    /// <summary>
    /// Creates a width curve for line beams (thicker at base, thinner at tip)
    /// </summary>
    private AnimationCurve CreateWidthCurve(LaserBeam beam)
    {
        AnimationCurve curve = new AnimationCurve();
        curve.AddKey(0f, beam.width);
        curve.AddKey(1f, beam.width * beam.tipWidthMultiplier);
        return curve;
    }

    private void CreateBeamObject(LaserBeam beam)
    {
        if (beamObjects.ContainsKey(beam) && beamObjects[beam] != null)
        {
            // Already exists, just refresh it
            RefreshBeamObject(beam);
            return;
        }

        // Assign unique ID if not already assigned
        if (!beamIds.ContainsKey(beam))
        {
            beamIds[beam] = beamIdCounter++;
        }

        GameObject beamObj = new GameObject($"Laser_{beam.beamType}_{beamIds[beam]}");
        beamObj.transform.SetParent(transform);
        beamObj.transform.localPosition = Vector3.zero; // Keep GameObject at controller position
        beamObj.transform.localRotation = Quaternion.identity; // No rotation on GameObject

        // Create material instance
        if (laserMaterial != null && !beamMaterials.ContainsKey(beam))
        {
            Material matInstance = new Material(laserMaterial);
            beamMaterials[beam] = matInstance;
        }

        if (beam.beamType == LaserType.Line)
        {
            CreateLineBeam(beamObj, beam);
        }
        else if (beam.beamType == LaserType.Fan)
        {
            // Fan beams use GameObject transform for positioning
            beamObj.transform.localPosition = beam.originPosition;
            beamObj.transform.localRotation = Quaternion.Euler(beam.originRotation);
            CreateFanBeam(beamObj, beam);
        }

        beamObjects[beam] = beamObj;
        UpdateBeamShaderProperties(beam);
    }

    private void CreateLineBeam(GameObject beamObj, LaserBeam beam)
    {
        LineRenderer lineRenderer = beamObj.AddComponent<LineRenderer>();

        if (beamMaterials.ContainsKey(beam))
        {
            lineRenderer.material = beamMaterials[beam];
        }

        lineRenderer.positionCount = 2;
        lineRenderer.useWorldSpace = true; // Use world space coordinates like SimpleLineTest

        // Start point uses originPosition (in world space)
        lineRenderer.SetPosition(0, beam.originPosition);
        // End point calculates from originPosition + direction based on originRotation
        Quaternion rotation = Quaternion.Euler(beam.originRotation);
        Vector3 direction = rotation * Vector3.forward;
        lineRenderer.SetPosition(1, beam.originPosition + direction * beam.length);

        // Width curve - thicker at base, thinner at tip
        lineRenderer.widthCurve = CreateWidthCurve(beam);

        lineRenderer.numCornerVertices = 4;
        lineRenderer.numCapVertices = 4;
        lineRenderer.alignment = LineAlignment.TransformZ; // Use transform rotation instead of view-facing
        lineRenderer.textureMode = LineTextureMode.Stretch;

        // Disable shadows for better performance
        lineRenderer.shadowCastingMode = UnityEngine.Rendering.ShadowCastingMode.Off;
        lineRenderer.receiveShadows = false;
    }

    private void CreateFanBeam(GameObject beamObj, LaserBeam beam)
    {
        MeshFilter meshFilter = beamObj.AddComponent<MeshFilter>();
        MeshRenderer meshRenderer = beamObj.AddComponent<MeshRenderer>();

        if (beamMaterials.ContainsKey(beam))
        {
            meshRenderer.material = beamMaterials[beam];
        }

        // Generate fan mesh
        Mesh fanMesh = GenerateFanMesh(beam);
        meshFilter.mesh = fanMesh;

        // Disable shadows for better performance
        meshRenderer.shadowCastingMode = UnityEngine.Rendering.ShadowCastingMode.Off;
        meshRenderer.receiveShadows = false;
    }

    private Mesh GenerateFanMesh(LaserBeam beam)
    {
        Mesh mesh = new Mesh();
        int beamId = beamIds.ContainsKey(beam) ? beamIds[beam] : 0;
        mesh.name = $"FanMesh_{beamId}";

        int rayCount = beam.fanRayCount;
        float spreadAngle = beam.fanSpreadAngle;
        float length = beam.length;
        float width = beam.width;

        List<Vector3> vertices = new List<Vector3>();
        List<Vector2> uvs = new List<Vector2>();
        List<int> triangles = new List<int>();

        // Origin point
        vertices.Add(Vector3.zero);
        uvs.Add(new Vector2(0.5f, 0f));

        // Generate rays in a fan pattern
        float angleStep = spreadAngle / (rayCount - 1);
        float startAngle = -spreadAngle * 0.5f;

        for (int i = 0; i < rayCount; i++)
        {
            float angle = startAngle + (angleStep * i);
            float angleRad = angle * Mathf.Deg2Rad;

            // Calculate direction
            Vector3 direction = new Vector3(Mathf.Sin(angleRad), 0f, Mathf.Cos(angleRad));

            // End point (tip of the ray)
            Vector3 endPoint = direction * length;

            // Calculate perpendicular for width
            Vector3 perpendicular = new Vector3(direction.z, 0f, -direction.x);
            float tipWidth = width * beam.tipWidthMultiplier;

            // Two vertices per ray end (for width)
            vertices.Add(endPoint + perpendicular * tipWidth * 0.5f);
            vertices.Add(endPoint - perpendicular * tipWidth * 0.5f);

            // UVs - gradient from origin (0) to tip (1)
            float u = (float)i / (rayCount - 1);
            uvs.Add(new Vector2(u, 1f));
            uvs.Add(new Vector2(u, 1f));
        }

        // Generate triangles
        for (int i = 0; i < rayCount - 1; i++)
        {
            int baseIndex = 1 + i * 2;
            int nextIndex = baseIndex + 2;

            // Triangle 1: origin -> current left -> current right
            triangles.Add(0);
            triangles.Add(baseIndex);
            triangles.Add(baseIndex + 1);

            // Triangle 2: current left -> next left -> current right
            triangles.Add(baseIndex);
            triangles.Add(nextIndex);
            triangles.Add(baseIndex + 1);

            // Triangle 3: next left -> next right -> current right
            triangles.Add(nextIndex);
            triangles.Add(nextIndex + 1);
            triangles.Add(baseIndex + 1);
        }

        mesh.SetVertices(vertices);
        mesh.SetUVs(0, uvs);
        mesh.SetTriangles(triangles, 0);
        mesh.RecalculateNormals();
        mesh.RecalculateBounds();

        return mesh;
    }

    private void RefreshBeamObject(LaserBeam beam)
    {
        if (!beamObjects.ContainsKey(beam)) return;

        GameObject beamObj = beamObjects[beam];
        if (beamObj == null) return;

        if (beam.beamType == LaserType.Line)
        {
            LineRenderer lr = beamObj.GetComponent<LineRenderer>();
            if (lr != null)
            {
                // Update start point
                lr.SetPosition(0, beam.originPosition);
                // Update end point based on originRotation
                Quaternion rotation = Quaternion.Euler(beam.originRotation);
                Vector3 direction = rotation * Vector3.forward;
                lr.SetPosition(1, beam.originPosition + direction * beam.length);
                // Update width curve
                lr.widthCurve = CreateWidthCurve(beam);
            }
        }
        else if (beam.beamType == LaserType.Fan)
        {
            // For fan beams, update transform and regenerate mesh
            beamObj.transform.localPosition = beam.originPosition;
            beamObj.transform.localRotation = Quaternion.Euler(beam.originRotation);

            MeshFilter mf = beamObj.GetComponent<MeshFilter>();
            if (mf != null)
            {
                // Regenerate mesh
                if (mf.sharedMesh != null)
                {
                    if (Application.isPlaying)
                        Destroy(mf.sharedMesh);
                    else
                        DestroyImmediate(mf.sharedMesh);
                }
                mf.mesh = GenerateFanMesh(beam);
            }
        }

        UpdateBeamShaderProperties(beam);
    }

    private void DestroyBeamObject(LaserBeam beam)
    {
        if (beamObjects.ContainsKey(beam))
        {
            GameObject beamObj = beamObjects[beam];
            if (beamObj != null)
            {
                // Clean up mesh if it's a fan
                if (beam.beamType == LaserType.Fan)
                {
                    MeshFilter mf = beamObj.GetComponent<MeshFilter>();
                    if (mf != null && mf.sharedMesh != null)
                    {
                        if (Application.isPlaying)
                            Destroy(mf.sharedMesh);
                        else
                            DestroyImmediate(mf.sharedMesh);
                    }
                }

                if (Application.isPlaying)
                    Destroy(beamObj);
                else
                    DestroyImmediate(beamObj);
            }
            beamObjects.Remove(beam);
        }

        // Clean up material
        if (beamMaterials.ContainsKey(beam))
        {
            Material mat = beamMaterials[beam];
            if (mat != null)
            {
                if (Application.isPlaying)
                    Destroy(mat);
                else
                    DestroyImmediate(mat);
            }
            beamMaterials.Remove(beam);
        }
    }

    private void DestroyAllBeamObjects()
    {
        List<LaserBeam> beamsToDestroy = new List<LaserBeam>(beamObjects.Keys);
        foreach (var beam in beamsToDestroy)
        {
            DestroyBeamObject(beam);
        }
        beamObjects.Clear();
    }

    #endregion

    #region Animation & Shader Updates

    private void UpdateBeamAnimation(LaserBeam beam, float time)
    {
        if (!beamObjects.ContainsKey(beam)) return;

        GameObject beamObj = beamObjects[beam];
        if (beamObj == null) return;

        // Handle different animation types
        if (beam.animationType == AnimationType.Rotation && beam.rotationSpeed != Vector3.zero)
        {
            // Rotation animation (sweeping)
            if (beam.beamType == LaserType.Line)
            {
                // For line beams, animate the endpoint to create scanning effect
                LineRenderer lr = beamObj.GetComponent<LineRenderer>();
                if (lr != null)
                {
                    // Calculate rotation angle
                    Vector3 rotation = beam.originRotation + beam.rotationSpeed * time;
                    Quaternion rot = Quaternion.Euler(rotation);

                    // Rotate the direction vector
                    Vector3 direction = rot * Vector3.forward;
                    Vector3 endPoint = beam.originPosition + direction * beam.length;

                    // Update line positions (start point stays at originPosition)
                    lr.SetPosition(0, beam.originPosition);
                    lr.SetPosition(1, endPoint);
                }
            }
            else
            {
                // For fan beams, rotate the entire GameObject
                Vector3 rotation = beam.originRotation + beam.rotationSpeed * time;
                beamObj.transform.localRotation = Quaternion.Euler(rotation);
            }
        }
        else if (beam.animationType == AnimationType.Circle)
        {
            // Circular animation (tip traces a circle)
            if (beam.beamType == LaserType.Line)
            {
                LineRenderer lr = beamObj.GetComponent<LineRenderer>();
                if (lr != null)
                {
                    // Calculate angle in radians
                    float angle = (time * beam.circleSpeed) * Mathf.Deg2Rad;

                    // Calculate position on circle based on plane
                    Vector3 circlePoint = CalculateCirclePoint(beam.circleCenter, beam.circleRadius, angle, beam.circlePlane);

                    // Update line positions (start at originPosition, end at circle point)
                    lr.SetPosition(0, beam.originPosition);
                    lr.SetPosition(1, circlePoint);
                }
            }
            // Note: Circle animation doesn't make sense for fan beams, so we skip them
        }

        // Color pulsing
        if (beam.enableColorPulse)
        {
            float pulse = Mathf.Sin(time * beam.colorPulseSpeed) * 0.5f + 0.5f;
            Color currentColor = Color.Lerp(beam.colorA, beam.colorB, pulse);

            if (beamMaterials.ContainsKey(beam))
            {
                beamMaterials[beam].SetColor("_ColourA", currentColor);
            }
        }
    }

    private Vector3 CalculateCirclePoint(Vector3 center, float radius, float angle, CirclePlane plane)
    {
        Vector3 point = Vector3.zero;

        switch (plane)
        {
            case CirclePlane.XY: // Vertical circle facing forward
                point = new Vector3(
                    Mathf.Cos(angle) * radius,
                    Mathf.Sin(angle) * radius,
                    0
                );
                break;

            case CirclePlane.XZ: // Horizontal circle (floor)
                point = new Vector3(
                    Mathf.Cos(angle) * radius,
                    0,
                    Mathf.Sin(angle) * radius
                );
                break;

            case CirclePlane.YZ: // Vertical circle facing sideways
                point = new Vector3(
                    0,
                    Mathf.Sin(angle) * radius,
                    Mathf.Cos(angle) * radius
                );
                break;
        }

        return center + point;
    }

    private void UpdateBeamShaderProperties(LaserBeam beam)
    {
        if (!beamMaterials.ContainsKey(beam)) return;

        Material mat = beamMaterials[beam];
        if (mat == null) return;

        // Core colors
        mat.SetColor("_ColourA", beam.colorA);
        mat.SetColor("_ColourB", beam.colorB);
        mat.SetFloat("_ColourValueMultiplier", beam.emissionIntensity);

        // Alpha
        mat.SetFloat("_Alpha", beam.alpha);

        // Radial mask (controls beam width appearance)
        mat.SetFloat("_RadialMaskRadius", beam.radialMaskRadius);
        mat.SetFloat("_RadialMaskFeather", beam.radialMaskFeather);
        mat.SetFloat("_RadialMaskSubtractive", beam.radialMaskSubtractive ? 1f : 0f);

        // Noise animation
        if (beam.enableNoise)
        {
            mat.SetFloat("_Noise1", 1f);
            mat.SetVector("_NoiseAnimation", beam.noiseAnimation);
            mat.SetFloat("_NoiseScale1", beam.noiseScale);
            mat.SetFloat("_NoisePower1", beam.noisePower);
        }
        else
        {
            mat.SetFloat("_Noise1", 0f);
        }

        // Vertical color (gradient along beam length)
        if (beam.enableVerticalColor)
        {
            mat.SetFloat("_VerticalColour", 1f);
            mat.SetColor("_VerticalColourA", beam.verticalColorA);
            mat.SetColor("_VerticalColourB", beam.verticalColorB);
            mat.SetFloat("_VerticalColourValueMultiplier", beam.verticalColorIntensity);
        }
        else
        {
            mat.SetFloat("_VerticalColour", 0f);
        }
    }

    #endregion
}

#region LaserBeam Data Class

[System.Serializable]
public class LaserBeam
{
    [Header("Basic Settings")]
    public bool enabled = true;
    public LaserType beamType = LaserType.Line;
    public string beamName = "Laser";

    [Header("Transform")]
    public Vector3 originPosition = Vector3.zero;
    public Vector3 originRotation = Vector3.zero;
    public float length = 10f;
    public float width = 0.1f;
    [Range(0f, 1f)] public float tipWidthMultiplier = 0.5f;

    [Header("Fan Settings (Fan Type Only)")]
    [Range(3, 50)] public int fanRayCount = 10;
    [Range(1f, 180f)] public float fanSpreadAngle = 45f;

    [Header("Color")]
    [ColorUsage(true, true)] public Color colorA = new Color(1f, 0.1f, 0f, 1f);
    [ColorUsage(true, true)] public Color colorB = new Color(1f, 0.5f, 0f, 1f);
    [Range(0f, 20f)] public float emissionIntensity = 5f;
    [Range(0f, 1f)] public float alpha = 1f;

    [Header("Vertical Color (Gradient)")]
    public bool enableVerticalColor = false;
    [ColorUsage(true, true)] public Color verticalColorA = new Color(1f, 1f, 1f, 1f);
    [ColorUsage(true, true)] public Color verticalColorB = new Color(0.5f, 0.5f, 1f, 1f);
    [Range(0f, 20f)] public float verticalColorIntensity = 5f;

    [Header("Radial Mask (Beam Appearance)")]
    [Range(0f, 1f)] public float radialMaskRadius = 0.8f;
    [Range(0f, 2f)] public float radialMaskFeather = 1f;
    public bool radialMaskSubtractive = true;

    [Header("Noise")]
    public bool enableNoise = true;
    public Vector4 noiseAnimation = new Vector4(0f, 4f, 1f, 0f);
    [Range(0.1f, 10f)] public float noiseScale = 2f;
    [Range(0f, 5f)] public float noisePower = 0.5f;

    [Header("Animation")]
    public AnimationType animationType = AnimationType.None;

    [Header("Rotation Animation (Sweeping)")]
    public Vector3 rotationSpeed = Vector3.zero;

    [Header("Circular Animation (Traces a Circle)")]
    public Vector3 circleCenter = new Vector3(0, 0, 10); // Where the circle is in space
    [Range(0.1f, 20f)] public float circleRadius = 3f; // Size of the circle
    [Range(1f, 360f)] public float circleSpeed = 60f; // Degrees per second
    public CirclePlane circlePlane = CirclePlane.XY; // Which plane to draw circle on

    [Header("Color Pulse")]
    public bool enableColorPulse = false;
    [Range(0.1f, 10f)] public float colorPulseSpeed = 2f;
}

public enum AnimationType
{
    None,
    Rotation, // Sweeps around (like current behavior)
    Circle    // Tip traces a circle
}

public enum CirclePlane
{
    XY, // Vertical circle facing forward
    XZ, // Horizontal circle (like drawing on floor)
    YZ  // Vertical circle facing sideways
}

public enum LaserType
{
    Line,
    Fan
}

#endregion
