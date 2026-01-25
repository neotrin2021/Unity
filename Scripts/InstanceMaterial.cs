using UnityEngine;

[ExecuteInEditMode]
[DisallowMultipleComponent]
[RequireComponent(typeof(Renderer))]
public class InstanceMaterial : MonoBehaviour
{
    [SerializeField] private Color _color = Color.white;
    [SerializeField] private Color _emissionColor = Color.black;
    [SerializeField] private bool _enableEmission = false;

    private Renderer _renderer;
    private MaterialPropertyBlock _propertyBlock;

    // Shader property IDs (cached for performance)
    private static readonly int ColorID = Shader.PropertyToID("_Color");
    private static readonly int BaseColorID = Shader.PropertyToID("_BaseColor");
    private static readonly int EmissionColorID = Shader.PropertyToID("_EmissionColor");  // Standard/URP
    private static readonly int EmissiveColorID = Shader.PropertyToID("_EmissiveColor");  // HDRP

    public Color Color
    {
        get => _color;
        set
        {
            _color = value;
            ApplyProperties();
        }
    }

    public Color EmissionColor
    {
        get => _emissionColor;
        set
        {
            _emissionColor = value;
            ApplyProperties();
        }
    }

    public bool EnableEmission
    {
        get => _enableEmission;
        set
        {
            _enableEmission = value;
            ApplyProperties();
        }
    }

    private void OnEnable()
    {
        _renderer = GetComponent<Renderer>();
        _propertyBlock = new MaterialPropertyBlock();
        ApplyProperties();
    }

    private void OnDisable()
    {
        // Clear property block to restore original material appearance
        if (_renderer != null)
        {
            _renderer.SetPropertyBlock(null);
        }
    }

    private void OnValidate()
    {
        // Apply changes made in the Inspector
        if (_renderer == null)
            _renderer = GetComponent<Renderer>();

        if (_renderer != null)
        {
            _propertyBlock ??= new MaterialPropertyBlock();
            ApplyProperties();
        }
    }

    private void ApplyProperties()
    {
        if (_renderer == null || _propertyBlock == null)
            return;

        // Get existing properties to preserve any other overrides
        _renderer.GetPropertyBlock(_propertyBlock);

        // Set color (supports both Standard and URP/HDRP shaders)
        _propertyBlock.SetColor(ColorID, _color);
        _propertyBlock.SetColor(BaseColorID, _color);

        // Set emission (both Standard/URP and HDRP property names)
        Color emissive = _enableEmission ? _emissionColor : Color.black;
        _propertyBlock.SetColor(EmissionColorID, emissive);   // Standard/URP
        _propertyBlock.SetColor(EmissiveColorID, emissive);   // HDRP

        _renderer.SetPropertyBlock(_propertyBlock);
    }

    // Public methods for runtime changes
    public void SetColor(Color color)
    {
        Color = color;
    }

    public void SetEmission(Color emissionColor, bool enable = true)
    {
        _enableEmission = enable;
        _emissionColor = emissionColor;
        ApplyProperties();
    }
}