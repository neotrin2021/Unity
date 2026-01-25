using UnityEngine;
#if UNITY_EDITOR
using UnityEditor;
#endif

[ExecuteInEditMode]
[DisallowMultipleComponent]
[RequireComponent(typeof(Renderer))]
public class InstanceMaterial : MonoBehaviour
{
    [SerializeField] [HideInInspector] private Material instancedMaterial;
    private Renderer objectRenderer;

    private void OnEnable()
    {
        objectRenderer = GetComponent<Renderer>();

        // Prevent repeated instancing
        if (objectRenderer != null && objectRenderer.sharedMaterial != instancedMaterial)
        {
            var original = objectRenderer.sharedMaterial;
            instancedMaterial = new Material(original);
            instancedMaterial.name = $"{original.name}_Instance_{gameObject.name}";
            objectRenderer.sharedMaterial = instancedMaterial;

#if UNITY_EDITOR
            Undo.RegisterCreatedObjectUndo(instancedMaterial, "Create Material Instance");
#endif
        }
    }

    private void OnDestroy()
    {
        if (instancedMaterial != null)
        {
            if (Application.isPlaying)
                Destroy(instancedMaterial);
            else
                DestroyImmediate(instancedMaterial);
        }
    }

    public void SetColor(Color color)
    {
        if (instancedMaterial != null)
            instancedMaterial.color = color;
    }
}

/*
using UnityEngine;

[ExecuteInEditMode] // Allows script to run in Edit Mode
public class InstanceMaterial : MonoBehaviour
{
    private Material instancedMaterial;
    private Renderer objectRenderer;
    void Awake() // Runs in both Play and Edit modes
    {
        objectRenderer = GetComponent<Renderer>();

        if (objectRenderer != null)
        {
            // Prevent modifying shared material
            instancedMaterial = new Material(objectRenderer.sharedMaterial);
            objectRenderer.sharedMaterial = instancedMaterial;
        }
    }

    public void SetColor(Color color)
    {
        if (instancedMaterial != null)
            instancedMaterial.color = color;
    }

    void OnDestroy()
    {
        // Cleanup the instance to prevent memory leaks
        if (!Application.isPlaying && instancedMaterial != null)
        {
            DestroyImmediate(instancedMaterial);
        }
        else if (instancedMaterial != null)
        {
            Destroy(instancedMaterial);
        }
    }
}
*/