// TimeFlow Addon - Script Caller Custom Editor

using UnityEngine;
using UnityEditor;
using System.Reflection;
using System.Linq;

namespace AxonGenesis
{
    [CustomEditor(typeof(ScriptCaller))]
    public class ScriptCallerEditor : Editor
    {
        public override void OnInspectorGUI()
        {
            ScriptCaller caller = (ScriptCaller)target;

            // Draw default inspector elements first
            EditorGUI.BeginChangeCheck();

            // Base TimeflowEvent properties
            EditorGUILayout.LabelField("Event Settings", EditorStyles.boldLabel);
            caller.Enabled = EditorGUILayout.Toggle("Enabled", caller.Enabled);
            caller.Name = EditorGUILayout.TextField("Event Name", caller.Name);

            EditorGUILayout.Space(5);

            // Target and method
            EditorGUILayout.LabelField("Method Call Settings", EditorStyles.boldLabel);
            caller.Obj = (GameObject)EditorGUILayout.ObjectField("Target GameObject", caller.Obj, typeof(GameObject), true);
            caller.targetComponent = (Component)EditorGUILayout.ObjectField("Target Component (optional)", caller.targetComponent, typeof(Component), true);
            caller.Function = EditorGUILayout.TextField("Method Name", caller.Function);

            EditorGUILayout.Space(5);

            // Parameter type selection
            EditorGUILayout.LabelField("Parameters", EditorStyles.boldLabel);
            caller.parameterType = (ScriptCaller.ParameterType)EditorGUILayout.EnumPopup("Parameter Type", caller.parameterType);

            // Show appropriate parameter field based on type
            EditorGUI.indentLevel++;
            switch (caller.parameterType) {
                case ScriptCaller.ParameterType.None:
                    EditorGUILayout.HelpBox("Method will be called with no parameters", MessageType.Info);
                    break;
                case ScriptCaller.ParameterType.Float:
                    caller.floatValue = EditorGUILayout.FloatField("Float Value", caller.floatValue);
                    break;
                case ScriptCaller.ParameterType.Int:
                    caller.intValue = EditorGUILayout.IntField("Int Value", caller.intValue);
                    break;
                case ScriptCaller.ParameterType.Bool:
                    caller.boolValue = EditorGUILayout.Toggle("Bool Value", caller.boolValue);
                    break;
                case ScriptCaller.ParameterType.String:
                    caller.stringValue = EditorGUILayout.TextField("String Value", caller.stringValue);
                    break;
                case ScriptCaller.ParameterType.Vector3:
                    caller.vector3Value = EditorGUILayout.Vector3Field("Vector3 Value", caller.vector3Value);
                    break;
            }
            EditorGUI.indentLevel--;

            EditorGUILayout.Space(5);

            // Advanced settings
            EditorGUILayout.LabelField("Advanced", EditorStyles.boldLabel);
            caller.useReflection = EditorGUILayout.Toggle("Use Reflection", caller.useReflection);
            caller.TriggerLimit = EditorGUILayout.IntField("Trigger Limit (0=unlimited)", caller.TriggerLimit);
            caller.LogEnabled = EditorGUILayout.Toggle("Log When Triggered", caller.LogEnabled);

            EditorGUILayout.Space(10);

            // Available methods display
            if (caller.Obj != null && !string.IsNullOrEmpty(caller.Function)) {
                DrawAvailableMethodsInfo(caller);
            }

            // Test button
            EditorGUILayout.Space(5);
            GUI.backgroundColor = Color.cyan;
            if (GUILayout.Button("🧪 Test Call Method", GUILayout.Height(30))) {
                caller.Trigger(true);
            }
            GUI.backgroundColor = Color.white;

            if (EditorGUI.EndChangeCheck()) {
                EditorUtility.SetDirty(caller);
            }
        }

        private void DrawAvailableMethodsInfo(ScriptCaller caller)
        {
            Component target = caller.targetComponent;
            if (target == null && caller.Obj != null) {
                // Search all components for matching method
                Component[] components = caller.Obj.GetComponents<Component>();
                foreach (Component comp in components) {
                    if (comp == null) continue;
                    if (HasMatchingMethod(comp, caller.Function, caller.parameterType)) {
                        target = comp;
                        break;
                    }
                }
            }

            if (target != null) {
                MethodInfo method = FindMethod(target, caller.Function, caller.parameterType);
                if (method != null) {
                    EditorGUILayout.HelpBox(
                        $"✓ Found: {target.GetType().Name}.{method.Name}({GetMethodSignature(method)})",
                        MessageType.Info
                    );
                }
                else {
                    EditorGUILayout.HelpBox(
                        $"✗ Method '{caller.Function}' not found on {target.GetType().Name}",
                        MessageType.Warning
                    );
                }
            }
            else {
                EditorGUILayout.HelpBox(
                    $"✗ No component with method '{caller.Function}' found",
                    MessageType.Warning
                );
            }
        }

        private bool HasMatchingMethod(Component comp, string methodName, ScriptCaller.ParameterType paramType)
        {
            return FindMethod(comp, methodName, paramType) != null;
        }

        private MethodInfo FindMethod(Component comp, string methodName, ScriptCaller.ParameterType paramType)
        {
            if (comp == null) return null;

            System.Type type = comp.GetType();
            MethodInfo[] methods = type.GetMethods(BindingFlags.Public | BindingFlags.Instance);

            foreach (MethodInfo method in methods) {
                if (method.Name != methodName) continue;

                ParameterInfo[] parameters = method.GetParameters();

                if (paramType == ScriptCaller.ParameterType.None && parameters.Length == 0) {
                    return method;
                }
                else if (parameters.Length == 1) {
                    System.Type paramTypeActual = parameters[0].ParameterType;

                    if (paramType == ScriptCaller.ParameterType.Float && paramTypeActual == typeof(float)) return method;
                    if (paramType == ScriptCaller.ParameterType.Int && paramTypeActual == typeof(int)) return method;
                    if (paramType == ScriptCaller.ParameterType.Bool && paramTypeActual == typeof(bool)) return method;
                    if (paramType == ScriptCaller.ParameterType.String && paramTypeActual == typeof(string)) return method;
                    if (paramType == ScriptCaller.ParameterType.Vector3 && paramTypeActual == typeof(Vector3)) return method;
                }
            }

            return null;
        }

        private string GetMethodSignature(MethodInfo method)
        {
            ParameterInfo[] parameters = method.GetParameters();
            if (parameters.Length == 0) return "";

            return string.Join(", ", parameters.Select(p => $"{p.ParameterType.Name} {p.Name}"));
        }
    }
}
