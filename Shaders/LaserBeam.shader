Shader "Custom/LaserBeam"
{
    Properties
    {
        [Header(Base Color)]
        [HDR] _ColourA("Colour A", Color) = (1, 0.1, 0, 1)
        [HDR] _ColourB("Colour B", Color) = (1, 0.5, 0, 1)
        _ColourValueMultiplier("Colour Value Multiplier", Float) = 5
        _Alpha("Alpha", Range(0, 1)) = 1

        [Header(Vertical Color Gradient)]
        [Toggle(_VERTICALCOLOUR_ON)] _VerticalColour("Enable Vertical Colour", Float) = 0
        [HDR] _VerticalColourA("Vertical Colour A", Color) = (1, 1, 1, 1)
        [HDR] _VerticalColourB("Vertical Colour B", Color) = (0.5, 0.5, 1, 1)
        _VerticalColourValueMultiplier("Vertical Colour Value Multiplier", Float) = 5

        [Header(Radial Mask)]
        [Toggle(_RADIALMASKSUBTRACTIVE_ON)] _RadialMaskSubtractive("Radial Mask Subtractive", Float) = 1
        _RadialMaskRadius("Radial Mask Radius", Range(0, 1)) = 0.8
        _RadialMaskFeather("Radial Mask Feather", Range(0, 2)) = 1

        [Header(Noise)]
        _Noise1("Noise Amount", Range(0, 1)) = 1
        _NoiseScale1("Noise Scale", Float) = 2
        _NoisePower1("Noise Power", Float) = 0.5
        _NoiseAnimation("Noise Animation (XY=scroll, Z=speed)", Vector) = (0, 4, 1, 0)
    }

    SubShader
    {
        Tags
        {
            "RenderPipeline" = "HDRenderPipeline"
            "RenderType" = "Transparent"
            "Queue" = "Transparent"
        }

        Pass
        {
            Name "ForwardOnly"
            Tags { "LightMode" = "ForwardOnly" }

            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            Cull Back

            HLSLPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_fog
            #pragma shader_feature_local _VERTICALCOLOUR_ON
            #pragma shader_feature_local _RADIALMASKSUBTRACTIVE_ON

            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"

            // Properties
            CBUFFER_START(UnityPerMaterial)
                float4 _ColourA;
                float4 _ColourB;
                float _ColourValueMultiplier;
                float _Alpha;

                float4 _VerticalColourA;
                float4 _VerticalColourB;
                float _VerticalColourValueMultiplier;

                float _RadialMaskRadius;
                float _RadialMaskFeather;

                float _Noise1;
                float _NoiseScale1;
                float _NoisePower1;
                float4 _NoiseAnimation;
            CBUFFER_END

            struct Attributes
            {
                float4 positionOS : POSITION;
                float2 uv : TEXCOORD0;
            };

            struct Varyings
            {
                float4 positionCS : SV_POSITION;
                float2 uv : TEXCOORD0;
            };

            // Simplex 2D noise
            float3 permute(float3 x) { return fmod(((x * 34.0) + 1.0) * x, 289.0); }

            float snoise(float2 v)
            {
                const float4 C = float4(0.211324865405187, 0.366025403784439, -0.577350269189626, 0.024390243902439);
                float2 i = floor(v + dot(v, C.yy));
                float2 x0 = v - i + dot(i, C.xx);
                float2 i1;
                i1 = (x0.x > x0.y) ? float2(1.0, 0.0) : float2(0.0, 1.0);
                float4 x12 = x0.xyxy + C.xxzz;
                x12.xy -= i1;
                i = fmod(i, 289.0);
                float3 p = permute(permute(i.y + float3(0.0, i1.y, 1.0)) + i.x + float3(0.0, i1.x, 1.0));
                float3 m = max(0.5 - float3(dot(x0, x0), dot(x12.xy, x12.xy), dot(x12.zw, x12.zw)), 0.0);
                m = m * m;
                m = m * m;
                float3 x = 2.0 * frac(p * C.www) - 1.0;
                float3 h = abs(x) - 0.5;
                float3 ox = floor(x + 0.5);
                float3 a0 = x - ox;
                m *= 1.79284291400159 - 0.85373472095314 * (a0 * a0 + h * h);
                float3 g;
                g.x = a0.x * x0.x + h.x * x0.y;
                g.yz = a0.yz * x12.xz + h.yz * x12.yw;
                return 130.0 * dot(m, g);
            }

            Varyings vert(Attributes input)
            {
                Varyings output;

                float3 positionWS = TransformObjectToWorld(input.positionOS.xyz);
                output.positionCS = TransformWorldToHClip(positionWS);
                output.uv = input.uv;

                return output;
            }

            float4 frag(Varyings input) : SV_Target
            {
                float2 uv = input.uv;

                // Calculate radial mask (distance from center on X axis)
                float radialDist = abs(uv.x - 0.5) * 2.0;
                float radialMask = 1.0 - smoothstep(_RadialMaskRadius, _RadialMaskRadius + _RadialMaskFeather, radialDist);

                #ifdef _RADIALMASKSUBTRACTIVE_ON
                    radialMask = saturate(radialMask);
                #endif

                // Noise
                float noise = 0.0;
                if (_Noise1 > 0.0)
                {
                    float2 noiseUV = uv * _NoiseScale1;
                    noiseUV += _NoiseAnimation.xy * _Time.y * _NoiseAnimation.z;
                    noise = snoise(noiseUV) * 0.5 + 0.5;
                    noise = pow(noise, _NoisePower1);
                    noise = lerp(1.0, noise, _Noise1);
                }
                else
                {
                    noise = 1.0;
                }

                // Base color (mix A and B based on noise)
                float4 baseColor = lerp(_ColourA, _ColourB, noise * 0.5);

                // Vertical color gradient
                #ifdef _VERTICALCOLOUR_ON
                    float verticalGradient = uv.y;
                    float4 verticalColor = lerp(_VerticalColourA, _VerticalColourB, verticalGradient);
                    verticalColor.rgb *= _VerticalColourValueMultiplier;
                    baseColor.rgb = lerp(baseColor.rgb, verticalColor.rgb, 0.5);
                #endif

                // Apply color value multiplier
                baseColor.rgb *= _ColourValueMultiplier;

                // Combine masks
                float finalAlpha = radialMask * noise * _Alpha;

                // Output
                float4 finalColor = float4(baseColor.rgb, finalAlpha);

                return finalColor;
            }
            ENDHLSL
        }
    }

    FallBack "Hidden/InternalErrorShader"
}
