// TimeFlow Addon - Script Caller Custom Editor

using UnityEngine;
using UnityEditor;
using System.Reflection;
using System.Linq;
using System.Collections.Generic;

namespace AxonGenesis
{
    [CustomEditor(typeof(ScriptCaller))]
    public class ScriptCallerEditor : Editor
    {
        private List<MethodInfo> availableMethods = new List<MethodInfo>();
        private string[] methodNames = new string[0];
        private int selectedMethodIndex = -1;

        private void OnEnable()
        {
            ScriptCaller caller = (ScriptCaller)target;
            RefreshMethodList(caller);
        }

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

            EditorGUI.BeginChangeCheck();
            caller.Obj = (GameObject)EditorGUILayout.ObjectField("Target GameObject", caller.Obj, typeof(GameObject), true);
            caller.targetComponent = (Component)EditorGUILayout.ObjectField("Target Component (optional)", caller.targetComponent, typeof(Component), true);

            // If target changed, refresh method list
            if (EditorGUI.EndChangeCheck()) {
                RefreshMethodList(caller);
            }

            // Method selection dropdown
            EditorGUILayout.BeginHorizontal();

            if (availableMethods.Count > 0) {
                // Find current method index
                selectedMethodIndex = -1;
                for (int i = 0; i < availableMethods.Count; i++) {
                    if (availableMethods[i].Name == caller.Function) {
                        selectedMethodIndex = i;
                        break;
                    }
                }

                // Show dropdown
                int newIndex = EditorGUILayout.Popup("Select Method", selectedMethodIndex, methodNames);

                // If selection changed, update method name and auto-detect parameter type
                if (newIndex != selectedMethodIndex && newIndex >= 0) {
                    selectedMethodIndex = newIndex;
                    MethodInfo selectedMethod = availableMethods[newIndex];
                    caller.Function = selectedMethod.Name;

                    // Auto-detect parameter type
                    AutoDetectParameterType(caller, selectedMethod);
                }
            }
            else {
                EditorGUILayout.LabelField("Select Method", "No methods found");
            }

            // Refresh button
            if (GUILayout.Button("🔄", GUILayout.Width(30))) {
                RefreshMethodList(caller);
            }

            EditorGUILayout.EndHorizontal();

            // Manual method name field (for edge cases or manual entry)
            EditorGUILayout.BeginHorizontal();
            caller.Function = EditorGUILayout.TextField("Method Name (manual)", caller.Function);
            if (GUILayout.Button("Find", GUILayout.Width(50))) {
                RefreshMethodList(caller);
            }
            EditorGUILayout.EndHorizontal();

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

        private void RefreshMethodList(ScriptCaller caller)
        {
            availableMethods.Clear();

            if (caller.Obj == null) {
                methodNames = new string[0];
                return;
            }

            // Get all components to search
            List<Component> componentsToSearch = new List<Component>();

            if (caller.targetComponent != null) {
                componentsToSearch.Add(caller.targetComponent);
            }
            else {
                Component[] allComponents = caller.Obj.GetComponents<Component>();
                componentsToSearch.AddRange(allComponents.Where(c => c != null));
            }

            // Gather all public methods from components
            HashSet<string> uniqueMethodNames = new HashSet<string>();

            foreach (Component comp in componentsToSearch) {
                System.Type type = comp.GetType();
                MethodInfo[] methods = type.GetMethods(BindingFlags.Public | BindingFlags.Instance | BindingFlags.DeclaredOnly);

                foreach (MethodInfo method in methods) {
                    // Skip Unity built-in component types
                    if (method.DeclaringType == typeof(Component) ||
                        method.DeclaringType == typeof(MonoBehaviour) ||
                        method.DeclaringType == typeof(Behaviour) ||
                        method.DeclaringType == typeof(Transform) ||
                        method.DeclaringType == typeof(UnityEngine.Object)) {
                        continue;
                    }

                    // Skip TimeFlow built-in types
                    if (method.DeclaringType.Namespace != null && method.DeclaringType.Namespace.StartsWith("AxonGenesis")) {
                        continue;
                    }

                    // Skip getters/setters
                    if (method.IsSpecialName) continue;

                    // Only include methods with 0 or 1 parameters
                    ParameterInfo[] parameters = method.GetParameters();
                    if (parameters.Length > 1) continue;

                    // Add to list if unique
                    string signature = GetMethodDisplayName(method, comp.GetType().Name);
                    if (!uniqueMethodNames.Contains(signature)) {
                        uniqueMethodNames.Add(signature);
                        availableMethods.Add(method);
                    }
                }
            }

            // Sort methods alphabetically
            availableMethods = availableMethods.OrderBy(m => m.Name).ToList();

            // Create display names
            methodNames = availableMethods.Select(m => GetMethodDisplayName(m, GetComponentName(componentsToSearch, m))).ToArray();
        }

        private string GetMethodDisplayName(MethodInfo method, string componentName)
        {
            ParameterInfo[] parameters = method.GetParameters();
            string paramDisplay = parameters.Length == 0 ? "()" : $"({parameters[0].ParameterType.Name})";
            return $"{componentName}.{method.Name}{paramDisplay}";
        }

        private string GetComponentName(List<Component> components, MethodInfo method)
        {
            // Check which component declares this method
            foreach (Component comp in components) {
                if (method.DeclaringType.IsAssignableFrom(comp.GetType())) {
                    return comp.GetType().Name;
                }
            }
            // Fallback to declaring type name
            return method.DeclaringType.Name;
        }

        private void AutoDetectParameterType(ScriptCaller caller, MethodInfo method)
        {
            ParameterInfo[] parameters = method.GetParameters();

            if (parameters.Length == 0) {
                caller.parameterType = ScriptCaller.ParameterType.None;
            }
            else if (parameters.Length == 1) {
                System.Type paramType = parameters[0].ParameterType;

                if (paramType == typeof(float)) {
                    caller.parameterType = ScriptCaller.ParameterType.Float;
                }
                else if (paramType == typeof(int)) {
                    caller.parameterType = ScriptCaller.ParameterType.Int;
                }
                else if (paramType == typeof(bool)) {
                    caller.parameterType = ScriptCaller.ParameterType.Bool;
                }
                else if (paramType == typeof(string)) {
                    caller.parameterType = ScriptCaller.ParameterType.String;
                }
                else if (paramType == typeof(Vector3)) {
                    caller.parameterType = ScriptCaller.ParameterType.Vector3;
                }
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
