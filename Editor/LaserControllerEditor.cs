using UnityEngine;
using UnityEditor;

[CustomEditor(typeof(LaserController))]
public class LaserControllerEditor : Editor
{
    private LaserController controller;

    private void OnEnable()
    {
        controller = (LaserController)target;
    }

    public override void OnInspectorGUI()
    {
        // Null safety check
        if (controller == null)
            return;

        // Draw default inspector
        DrawDefaultInspector();

        EditorGUILayout.Space(10);

        // Preview Controls
        EditorGUILayout.BeginVertical("box");
        EditorGUILayout.LabelField("Edit Mode Preview", EditorStyles.boldLabel);

        if (controller.IsPreviewActive())
        {
            GUI.backgroundColor = Color.red;
            if (GUILayout.Button("⏹ Stop Preview", GUILayout.Height(30)))
            {
                controller.StopPreview();
            }
            GUI.backgroundColor = Color.white;

            EditorGUILayout.HelpBox("Preview is running. Changes to lasers will be reflected in real-time.", MessageType.Info);
        }
        else
        {
            GUI.backgroundColor = Color.green;
            if (GUILayout.Button("▶ Start Preview", GUILayout.Height(30)))
            {
                controller.StartPreview();
            }
            GUI.backgroundColor = Color.white;
        }

        EditorGUILayout.Space(5);

        GUI.backgroundColor = Color.yellow;
        if (GUILayout.Button("🔄 Refresh All Lasers", GUILayout.Height(25)))
        {
            controller.RefreshAllLasers();
        }
        GUI.backgroundColor = Color.white;

        EditorGUILayout.EndVertical();

        // Laser Management
        EditorGUILayout.Space(10);
        EditorGUILayout.BeginVertical("box");
        EditorGUILayout.LabelField("Quick Actions", EditorStyles.boldLabel);

        if (GUILayout.Button("Clear All Lasers"))
        {
            if (EditorUtility.DisplayDialog("Clear All Lasers",
                "Are you sure you want to remove all laser configurations?",
                "Yes", "Cancel"))
            {
                controller.ClearAllLasers();
                EditorUtility.SetDirty(controller);
            }
        }

        EditorGUILayout.EndVertical();

        // Tips
        EditorGUILayout.Space(10);
        EditorGUILayout.HelpBox(
            "💡 Tips:\n" +
            "• Assign the MirzaConverted shader material for best results\n" +
            "• Use HDR colors for intense glowing effects\n" +
            "• Fan type creates expanding laser fans\n" +
            "• Line type creates straight laser beams\n" +
            "• Enable Noise for animated volumetric effects",
            MessageType.Info);
    }

    private void OnDisable()
    {
        // Make sure preview stops when inspector closes
        if (controller != null && controller.IsPreviewActive())
        {
            controller.StopPreview();
        }
    }
}
