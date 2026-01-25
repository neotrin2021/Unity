// TimeFlow Addon - Enhanced Script Caller
// Allows calling methods on any component with various parameter types

using System;
using System.Reflection;
using UnityEngine;

namespace AxonGenesis
{
    /// <summary>
    /// Enhanced TimeFlow event that can call methods with different parameter types.
    /// Supports: no parameters, float, int, bool, string, Vector3
    /// </summary>
    [ExecuteInEditMode]
    [DisallowMultipleComponent]
    [ExcludeFromPreset]
    [AddComponentMenu("Timeflow/Script Caller")]
    public class ScriptCaller : TimeflowEvent
    {
        public enum ParameterType
        {
            None,           // Method with no parameters
            Float,          // float parameter
            Int,            // int parameter
            Bool,           // bool parameter
            String,         // string parameter
            Vector3         // Vector3 parameter
        }

        [Header("Enhanced Parameters")]
        public ParameterType parameterType = ParameterType.None;

        [Tooltip("Value when parameterType is Float")]
        public float floatValue = 0f;

        [Tooltip("Value when parameterType is Int")]
        public int intValue = 0;

        [Tooltip("Value when parameterType is Bool")]
        public bool boolValue = false;

        [Tooltip("Value when parameterType is String (overrides base Parameter field)")]
        public string stringValue = "";

        [Tooltip("Value when parameterType is Vector3")]
        public Vector3 vector3Value = Vector3.zero;

        [Header("Method Calling")]
        [Tooltip("Component to call method on (if null, searches all components on Obj)")]
        public Component targetComponent;

        [Tooltip("Use reflection-based calling (more reliable but slightly slower)")]
        public bool useReflection = true;

        public override void Trigger(bool force = false)
        {
            if (!CanUpdate) return;
            if ((force || TriggerLimit == 0 || WasTriggered == false || TriggerLimit > 1)) {

                WasTriggered = true;

                if (!string.IsNullOrEmpty(Function)) {
                    if (Obj == null) Obj = gameObject;

                    if (useReflection) {
                        CallMethodWithReflection();
                    }
                    else {
                        CallMethodWithSendMessage();
                    }
                }

                OnTriggered();
                if (OnTrigger != null) {
                    OnTrigger.Invoke();
                }

                if (LogEnabled) {
                    Debug.Log($"ScriptCaller[{name}].Triggered: {Function}({GetParameterString()})");
                }
            }
        }

        private void CallMethodWithReflection()
        {
            Component target = targetComponent;

            // If no specific component, search all components
            if (target == null) {
                Component[] components = Obj.GetComponents<Component>();
                foreach (Component comp in components) {
                    if (comp == null) continue;

                    MethodInfo method = GetMethod(comp);
                    if (method != null) {
                        target = comp;
                        break;
                    }
                }
            }

            if (target == null) {
                Debug.LogWarning($"ScriptCaller: No component found with method '{Function}' on {Obj.name}");
                return;
            }

            MethodInfo methodInfo = GetMethod(target);
            if (methodInfo != null) {
                try {
                    object[] parameters = GetParameters();
                    methodInfo.Invoke(target, parameters);
                }
                catch (Exception e) {
                    Debug.LogError($"ScriptCaller: Error calling {Function}: {e.Message}");
                }
            }
            else {
                Debug.LogWarning($"ScriptCaller: Method '{Function}' not found on {target.GetType().Name}");
            }
        }

        private void CallMethodWithSendMessage()
        {
            // Fallback to SendMessage (only works with string or no params)
            switch (parameterType) {
                case ParameterType.None:
                    Obj.SendMessage(Function, SendMessageOptions.DontRequireReceiver);
                    break;
                case ParameterType.String:
                    Obj.SendMessage(Function, stringValue, SendMessageOptions.DontRequireReceiver);
                    break;
                default:
                    Debug.LogWarning($"ScriptCaller: SendMessage only supports None/String parameters. Use Reflection mode for {parameterType}");
                    break;
            }
        }

        private MethodInfo GetMethod(Component component)
        {
            if (component == null) return null;

            Type type = component.GetType();
            MethodInfo[] methods = type.GetMethods(BindingFlags.Public | BindingFlags.Instance);

            foreach (MethodInfo method in methods) {
                if (method.Name != Function) continue;

                ParameterInfo[] parameters = method.GetParameters();

                // Check if parameter count matches
                if (parameterType == ParameterType.None && parameters.Length == 0) {
                    return method;
                }
                else if (parameters.Length == 1) {
                    // Check if parameter type matches
                    Type paramType = parameters[0].ParameterType;

                    if (parameterType == ParameterType.Float && paramType == typeof(float)) return method;
                    if (parameterType == ParameterType.Int && paramType == typeof(int)) return method;
                    if (parameterType == ParameterType.Bool && paramType == typeof(bool)) return method;
                    if (parameterType == ParameterType.String && paramType == typeof(string)) return method;
                    if (parameterType == ParameterType.Vector3 && paramType == typeof(Vector3)) return method;
                }
            }

            return null;
        }

        private object[] GetParameters()
        {
            switch (parameterType) {
                case ParameterType.None:
                    return null;
                case ParameterType.Float:
                    return new object[] { floatValue };
                case ParameterType.Int:
                    return new object[] { intValue };
                case ParameterType.Bool:
                    return new object[] { boolValue };
                case ParameterType.String:
                    return new object[] { string.IsNullOrEmpty(stringValue) ? Parameter : stringValue };
                case ParameterType.Vector3:
                    return new object[] { vector3Value };
                default:
                    return null;
            }
        }

        private string GetParameterString()
        {
            switch (parameterType) {
                case ParameterType.None:
                    return "no params";
                case ParameterType.Float:
                    return floatValue.ToString();
                case ParameterType.Int:
                    return intValue.ToString();
                case ParameterType.Bool:
                    return boolValue.ToString();
                case ParameterType.String:
                    return $"\"{(string.IsNullOrEmpty(stringValue) ? Parameter : stringValue)}\"";
                case ParameterType.Vector3:
                    return vector3Value.ToString();
                default:
                    return "";
            }
        }
    }
}
