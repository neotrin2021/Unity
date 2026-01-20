using UnityEngine;
using UnityEditor;

[CustomEditor(typeof(StripLightController))]
public class StripLightControllerEditor : Editor
{
    private StripLightController controller;

    void OnEnable()
    {
        controller = (StripLightController)target;
    }

    public override void OnInspectorGUI()
    {
        // Draw default inspector
        DrawDefaultInspector();

        EditorGUILayout.Space(10);
        EditorGUILayout.LabelField("Preview Controls", EditorStyles.boldLabel);

        EditorGUILayout.BeginHorizontal();

        // Preview button
        GUI.backgroundColor = Color.green;
        if (GUILayout.Button("▶ Preview", GUILayout.Height(30)))
        {
            controller.StartPreview();
        }

        // Stop button
        GUI.backgroundColor = Color.red;
        if (GUILayout.Button("■ Stop Preview", GUILayout.Height(30)))
        {
            controller.StopPreview();
        }

        GUI.backgroundColor = Color.white;
        EditorGUILayout.EndHorizontal();

        EditorGUILayout.Space(5);

        // Reset button
        GUI.backgroundColor = Color.yellow;
        if (GUILayout.Button("Reset All Lights", GUILayout.Height(25)))
        {
            controller.ResetLights();
        }
        GUI.backgroundColor = Color.white;

        EditorGUILayout.Space(5);

        // Show status
        if (controller.IsPreviewPlaying())
        {
            EditorGUILayout.HelpBox("Preview is currently running...", MessageType.Info);
        }
    }
}
