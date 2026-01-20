using UnityEngine;

#if UNITY_EDITOR
using UnityEditor;
#endif

/// <summary>
/// Simple test script to draw a line from startPoint to endPoint using LineRenderer.
/// Use this to verify coordinate space is working correctly.
/// </summary>
[ExecuteAlways]
public class SimpleLineTest : MonoBehaviour
{
    [Header("Line Settings")]
    public Vector3 startPoint = new Vector3(19, 7, 28);
    public Vector3 endPoint = new Vector3(0, 0, 0);
    public float lineWidth = 0.1f;
    public Material lineMaterial;

    [Header("Visualization")]
    public bool showGizmos = true;
    public float gizmoSize = 0.5f;

    private LineRenderer lineRenderer;

    private void OnEnable()
    {
        CreateLine();
    }

    private void OnValidate()
    {
        // Called when values change in Inspector
        if (lineRenderer != null)
        {
            UpdateLine();
        }
    }

    private void CreateLine()
    {
        // Get or create LineRenderer
        lineRenderer = GetComponent<LineRenderer>();
        if (lineRenderer == null)
        {
            lineRenderer = gameObject.AddComponent<LineRenderer>();
        }

        // Set material
        if (lineMaterial != null)
        {
            lineRenderer.material = lineMaterial;
        }

        // Configure LineRenderer
        lineRenderer.positionCount = 2;
        lineRenderer.startWidth = lineWidth;
        lineRenderer.endWidth = lineWidth;
        lineRenderer.useWorldSpace = true; // Use world space coordinates

        UpdateLine();
    }

    private void UpdateLine()
    {
        if (lineRenderer == null) return;

        // Set positions in world space
        lineRenderer.SetPosition(0, startPoint);
        lineRenderer.SetPosition(1, endPoint);
        lineRenderer.startWidth = lineWidth;
        lineRenderer.endWidth = lineWidth;
    }

    private void OnDrawGizmos()
    {
        if (!showGizmos) return;

        // Draw start point (green)
        Gizmos.color = Color.green;
        Gizmos.DrawWireSphere(startPoint, gizmoSize);
        Gizmos.DrawLine(startPoint, startPoint + Vector3.up * gizmoSize * 2);

        // Draw end point (red)
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(endPoint, gizmoSize);
        Gizmos.DrawLine(endPoint, endPoint + Vector3.up * gizmoSize * 2);

        // Draw connecting line
        Gizmos.color = Color.yellow;
        Gizmos.DrawLine(startPoint, endPoint);
    }

    private void OnDisable()
    {
        // Clean up
        if (lineRenderer != null && Application.isPlaying)
        {
            Destroy(lineRenderer);
        }
    }
}
