using UnityEngine;

#if UNITY_EDITOR
using UnityEditor;
#endif

/// <summary>
/// Rotates GameObject continuously on a selected axis with adjustable speed.
/// Works in both Edit mode (preview) and Play mode.
/// </summary>
[ExecuteAlways]
public class ContinuousRotator : MonoBehaviour
{
    [Header("Rotation Settings")]
    [Tooltip("Which axis to rotate around")]
    public RotationAxis rotationAxis = RotationAxis.Y;

    [Tooltip("Rotation speed in degrees per second")]
    [Range(-360f, 360f)]
    public float rotationSpeed = 45f;

    // Runtime state
    private bool isRotating = false;
    private float editorTime = 0f;

    #region Public API

    /// <summary>
    /// Starts the rotation
    /// </summary>
    public void StartRotation()
    {
        isRotating = true;
        editorTime = 0f;

#if UNITY_EDITOR
        if (!Application.isPlaying)
        {
            EditorApplication.update += UpdateRotation;
        }
#endif
    }

    /// <summary>
    /// Stops the rotation
    /// </summary>
    public void StopRotation()
    {
        isRotating = false;

#if UNITY_EDITOR
        if (!Application.isPlaying)
        {
            EditorApplication.update -= UpdateRotation;
        }
#endif
    }

    /// <summary>
    /// Returns whether rotation is currently active
    /// </summary>
    public bool IsRotating()
    {
        return isRotating;
    }

    #endregion

    #region Unity Lifecycle

    private void Update()
    {
        // Handle rotation in Play mode
        if (Application.isPlaying && isRotating)
        {
            ApplyRotation(Time.deltaTime);
        }
    }

#if UNITY_EDITOR
    private void UpdateRotation()
    {
        // Handle rotation in Edit mode
        if (!isRotating) return;

        editorTime += Time.deltaTime;
        ApplyRotation(Time.deltaTime);

        SceneView.RepaintAll();
    }
#endif

    private void OnDisable()
    {
        // Clean up only in Play mode
        if (Application.isPlaying)
        {
            StopRotation();
        }
    }

    private void OnDestroy()
    {
#if UNITY_EDITOR
        if (isRotating)
        {
            EditorApplication.update -= UpdateRotation;
        }
#endif
    }

    #endregion

    #region Rotation Logic

    private void ApplyRotation(float deltaTime)
    {
        Vector3 rotationVector = Vector3.zero;

        switch (rotationAxis)
        {
            case RotationAxis.X:
                rotationVector = Vector3.right;
                break;
            case RotationAxis.Y:
                rotationVector = Vector3.up;
                break;
            case RotationAxis.Z:
                rotationVector = Vector3.forward;
                break;
        }

        transform.Rotate(rotationVector, rotationSpeed * deltaTime, Space.Self);
    }

    #endregion
}

public enum RotationAxis
{
    X,
    Y,
    Z
}
