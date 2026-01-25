using UnityEngine;
using UnityEditor;

[CustomEditor(typeof(ContinuousRotator))]
public class ContinuousRotatorEditor : Editor
{
    public override void OnInspectorGUI()
    {
        ContinuousRotator rotator = (ContinuousRotator)target;

        // Draw default inspector
        DrawDefaultInspector();

        EditorGUILayout.Space(10);

        // Status indicator
        if (rotator.IsRotating())
        {
            EditorGUILayout.HelpBox("⚡ ROTATING", MessageType.Info);
        }
        else
        {
            EditorGUILayout.HelpBox("⏸ STOPPED", MessageType.None);
        }

        EditorGUILayout.Space(5);

        // Control buttons
        EditorGUILayout.BeginHorizontal();

        // Start button (green)
        GUI.backgroundColor = Color.green;
        if (GUILayout.Button("▶ Start Rotation", GUILayout.Height(30)))
        {
            rotator.StartRotation();
        }

        // Stop button (red)
        GUI.backgroundColor = Color.red;
        if (GUILayout.Button("⏹ Stop Rotation", GUILayout.Height(30)))
        {
            rotator.StopRotation();
        }

        GUI.backgroundColor = Color.white;
        EditorGUILayout.EndHorizontal();

        EditorGUILayout.Space(5);
    }
}
