// Made with Amplify Shader Editor v1.9.9.5
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "New Amplify Shader"
{
	Properties
	{
		[Toggle( _OBJECTSPACEUVS_ON )] _ObjectSpaceUVs( "Object Space UVs", Float ) = 0
		[Header(Particle Settings)][Space(5)] _ParticleRandomization( "Particle Randomization", Range( 0, 1 ) ) = 1
		[HDR][Header(Colour)][Space(5)] _ColourA( "Colour A", Color ) = ( 1, 0.1254902, 0, 1 )
		[HDR] _ColourB( "Colour B", Color ) = ( 1, 0.02745098, 0, 1 )
		_ColourPower( "Colour Power", Float ) = 1
		_ColourHueShift( "Colour Hue Shift", Range( -1, 1 ) ) = 0
		_ColourSaturationShift( "Colour Saturation Shift", Range( -1, 1 ) ) = 0
		_ColourValueMultiplier( "Colour Value Multiplier", Float ) = 5
		_Alpha( "Alpha", Range( 0, 1 ) ) = 1
		[Header(Vertical Colour)][Space(5)][Toggle( _VERTICALCOLOUR_ON )] _VerticalColour( "Vertical Colour", Float ) = 0
		[HDR] _VerticalColourA( "Vertical Colour A", Color ) = ( 0, 0.5019608, 1, 1 )
		[HDR] _VerticalColourB( "Vertical Colour B", Color ) = ( 0, 0, 1, 1 )
		_VerticalColourValueMultiplier( "Vertical Colour Value Multiplier", Float ) = 5
		[Header(Vertical Colour Mask)][Space(5)] _VerticalColourMaskPower( "Vertical Colour Mask Power", Float ) = 1
		_VerticalColourMaskRemapMin( "Vertical Colour Mask Remap Min", Range( 0, 1 ) ) = 0.5
		_VerticalColourMaskRemapMax( "Vertical Colour Mask Remap Max", Range( 0, 1 ) ) = 0.1
		[Header(Noise)][Space(5)] _Noise( "Noise", Range( 0, 1 ) ) = 1
		_NoiseScale( "Noise Scale", Float ) = 2
		_NoiseTiling( "Noise Tiling", Vector ) = ( 1.5, 1, 1, 0 )
		_NoiseAnimation( "Noise Animation", Vector ) = ( 0, 4, 1, 0 )
		[IntRange] _NoiseOctaves( "Noise Octaves", Range( 1, 8 ) ) = 1
		[Toggle( _NOISEDILATIONENABLED_ON )] _NoiseDilationEnabled( "Noise Dilation Enabled", Float ) = 0
		_NoiseDilation( "Noise Dilation", Range( 0, 0.1 ) ) = 0.004
		_NoisePower( "Noise Power", Float ) = 0.5
		_NoiseRemapMin( "Noise Remap Min", Range( 0, 1 ) ) = 0
		_NoiseRemapMax( "Noise Remap Max", Range( 0, 1 ) ) = 1
		[Space(5)] _NoiseXYTwist( "Noise XY Twist", Float ) = 0
		_NoiseXYTwistOffset( "Noise XY Twist Offset", Vector ) = ( 0, 0, 0, 0 )
		[Toggle( _NOISEXZTWISTENABLED_ON )] _NoiseXZTwistEnabled( "Noise XZ Twist Enabled", Float ) = 0
		[Space(5)] _NoiseXZTwist( "Noise XZ Twist", Range( -360, 360 ) ) = 0
		[Space(5)] _NoiseUVYPreOffset( "Noise UV Y Pre-Offset", Float ) = 0
		_NoiseUVYPreScale( "Noise UV Y Pre-Scale", Float ) = 1
		_NoiseUVYPrePower( "Noise UV Y Pre-Power", Float ) = 1
		[Toggle( _NOISEDISTORTIONENABLED_ON )] _NoiseDistortionEnabled( "Noise Distortion Enabled", Float ) = 0
		[Header(Noise Distortion)][Space(5)] _NoiseDistortion( "Noise Distortion", Range( 0, 1 ) ) = 0.05
		_NoiseDistortionScale( "Noise Distortion Scale", Float ) = 1
		[Toggle( _WORLDSPACEUVS2_ON )] _WorldSpaceUVs2( "World Space UVs", Float ) = 0
		_NoiseDistortionTiling( "Noise Distortion Tiling", Vector ) = ( 1.5, 1, 1, 0 )
		_NoiseDistortionAnimation( "Noise Distortion Animation", Vector ) = ( 0, 1, 0, 0 )
		[IntRange] _NoiseDistortionOctaves( "Noise Distortion Octaves", Range( 1, 8 ) ) = 1
		[Toggle( _NOISEDISTORTIONDILATIONENABLED_ON )] _NoiseDistortionDilationEnabled( "Noise Distortion Dilation Enabled", Float ) = 0
		_NoiseDistortionDilation( "Noise Distortion Dilation", Range( 0, 0.1 ) ) = 0.004
		_NoiseDistortionPower( "Noise Distortion Power", Float ) = 1
		[Toggle( _RADIALMASKSUBTRACTIVE_ON )] _RadialMaskSubtractive( "Radial Mask Subtractive", Float ) = 1
		[Space(10)] _RadialMaskRadius( "Radial Mask Radius", Range( 0, 1 ) ) = 1
		_RadialMaskFeather( "Radial Mask Feather", Range( 0, 2 ) ) = 1
		_RadialMaskPower( "Radial Mask Power", Float ) = 1
		_RadialMaskTiling( "Radial Mask Tiling", Vector ) = ( 1.5, 1, 0, 0 )
		[Toggle( _RADIALMASKDISTORTIONENABLED_ON )] _RadialMaskDistortionEnabled( "Radial Mask Distortion Enabled", Float ) = 0
		[Header(Radial Mask Distortion)][Space(5)] _RadialMaskDistortion( "Radial Mask Distortion", Range( 0, 1 ) ) = 0.05
		_RadialMaskDistortionScale( "Radial Mask Distortion Scale", Float ) = 2
		_RadialMaskDistortionTiling( "Radial Mask Distortion Tiling", Vector ) = ( 1.5, 1, 1, 0 )
		_RadialMaskDistortionAnimation( "Radial Mask Distortion Animation", Vector ) = ( 0, 2, 0, 0 )
		[IntRange] _RadialMaskDistortionOctaves( "Radial Mask Distortion Octaves", Range( 1, 8 ) ) = 1
		[Toggle( _RADIALMASKDISTORTIONDILATIONENABLED_ON )] _RadialMaskDistortionDilationEnabled( "Radial Mask Distortion Dilation Enabled", Float ) = 0
		_RadialMaskDistortionDilation( "Radial Mask Distortion Dilation", Range( 0, 0.1 ) ) = 0.004
		_RadialMaskDistortionPower( "Radial Mask Distortion Power", Float ) = 1
		[Header(Vertical Masks)][Space(5)][Toggle( _VERTICALMASKSOBJECTSPACE_ON )] _VerticalMasksObjectSpace( "Vertical Masks Object Space", Float ) = 1
		[Header(Vertical Mask 1)][Space(5)][Toggle( _VERTICALMASK1_ON )] _VerticalMask1( "Vertical Mask 1", Float ) = 0
		[Toggle( _VERTICALMASK1SUBTRACTIVE_ON )] _VerticalMask1Subtractive( "Vertical Mask 1 Subtractive", Float ) = 0
		[Space(5)] _VerticalMask1Power( "Vertical Mask 1 Power", Float ) = 1
		_VerticalMask1RemapMin( "Vertical Mask 1 Remap Min", Range( 0, 1 ) ) = 0
		_VerticalMask1RemapMax( "Vertical Mask 1 Remap Max", Range( 0, 1 ) ) = 1
		_VerticalMask1ObjectSpaceScale( "Vertical Mask 1 Object Space Scale", Float ) = 2
		_VerticalMask1ObjectSpaceOffset( "Vertical Mask 1 Object Space Offset", Float ) = -1
		[Header(Vertical Mask 2)][Space(5)][Toggle( _VERTICALMASK2_ON )] _VerticalMask2( "Vertical Mask 2", Float ) = 0
		[Toggle( _VERTICALMASK2SUBTRACTIVE_ON )] _VerticalMask2Subtractive( "Vertical Mask 2 Subtractive", Float ) = 0
		[Space(5)] _VerticalMask2Power( "Vertical Mask 2 Power", Float ) = 1
		_VerticalMask2RemapMin( "Vertical Mask 2 Remap Min", Range( 0, 1 ) ) = 0
		_VerticalMask2RemapMax( "Vertical Mask 2 Remap Max", Range( 0, 1 ) ) = 1
		_VerticalMask2ObjectSpaceScale( "Vertical Mask 2 Object Space Scale", Float ) = 2
		_VerticalMask2ObjectSpaceOffset( "Vertical Mask 2 Object Space Offset", Float ) = -1
		[Header(Depth Fade)][Space(5)] _DepthFade( "Depth Fade", Float ) = 0
		_DepthFadePower( "Depth Fade Power", Float ) = 1
		_SubtractiveDepthFadePower( "Subtractive Depth Fade Power", Float ) = 1
		_CameraDepthFadePower( "Camera Depth Fade Power", Float ) = 1
		_IntersectionHighlightPower( "Intersection Highlight Power", Float ) = 1
		_IntersectionHighlightRemapMax( "Intersection Highlight Remap Max", Range( 0, 1 ) ) = 1
		[Header(Intersection Highlight Colour)][Space(5)] _IntersectionHighlightColour( "Intersection Highlight Colour", Color ) = ( 1, 1, 1, 1 )
		_IntersectionHighlightColourValueMultiplier( "Intersection Highlight Colour Value Multiplier", Float ) = 5
		_IntersectionHighlightAlpha( "Intersection Highlight Alpha", Range( 0, 1 ) ) = 1
		[Space(5)] _UVSampleNoise( "UV Sample Noise", Range( 0, 1 ) ) = 0
		_VertexColourHueShift( "Vertex Colour Hue Shift", Range( -1, 1 ) ) = 0
		_VertexColourSaturationShift( "Vertex Colour Saturation Shift", Range( -1, 1 ) ) = 0
		_NoiseUVYPreRemapMin( "Noise UV Y Pre-Remap Min", Range( 0, 1 ) ) = 0
		_NoiseUVYPreRemapMax( "Noise UV Y Pre-Remap Max", Range( 0, 1 ) ) = 1
		_ParticleSubtractNoiseoverLifetime1( "Particle Subtract Noise over Lifetime", Range( 0, 1 ) ) = 0
		[Space(5)] _NoiseParallaxOffset( "Noise Parallax Offset", Float ) = 0
		[Header(Camera Depth Fade)][Space(5)] _CameraDepthFadeLength( "Camera Depth Fade Length", Float ) = 0
		_CameraDepthFadeOffset( "Camera Depth Fade Offset", Float ) = 0
		_NoiseDistortionParticleAnimation( "Noise Distortion Particle Animation", Vector ) = ( 0, 0, 0, 0 )
		[Toggle( _NOISEUVPREREMAP_ON )] _NoiseUVPreRemap( "Noise UV Pre-Remap", Float ) = 0
		[Header(Tessellation)][Space(5)] _Tessellation( "Tessellation", Range( 1, 64 ) ) = 1
		[Toggle] _VertexColorHSVEnabledOn( "Vertex Color HSV Enabled On", Float ) = 0
		[KeywordEnum( VertexPos1,WorldPos1 )] _VertexWorldPos1( "VertexWorldPos1", Float ) = 0
		[KeywordEnum( Normal1,Centered1 )] _UV2DNormCent1( "UV2DNormCent1", Float ) = 0
		_VerticalColourSaturationShift( "Vertical Colour Saturation Shift", Range( -1, 1 ) ) = 0
		_VerticalColourHueShift( "Vertical Colour Hue Shift", Range( -1, 1 ) ) = 0
		_NoiseParticleAnimation( "Noise Particle Animation", Vector ) = ( 0, 0, 0, 0 )
		_NoiseOffset( "Noise Offset", Vector ) = ( 0, 0, 0, 0 )
		_NoiseDistortionOffset( "Noise Distortion Offset", Vector ) = ( 0, 0, 0, 0 )
		[Header(Radial Mask)][Space(5)][Toggle( _RADIALMASK_ON )] _RadialMask( "Radial Mask", Float ) = 1
		_RadialMaskRadiusOverParticleLifetime( "Radial Mask Radius over Particle Lifetime", Range( 0, 1 ) ) = 0
		_IntersectionHighlightRemapMin( "Intersection Highlight Remap Min", Range( 0, 1 ) ) = 0
		[Header(Intersection Highlight)][Space(5)] _IntersectionHighlight( "Intersection Highlight", Float ) = 0
		_RadialMaskOffset( "Radial Mask Offset", Vector ) = ( 0, 0, 0, 0 )
		_RadialMaskDistortionParticleAnimation( "Radial Mask Distortion Particle Animation", Vector ) = ( 0, 0, 0, 0 )
		_RadialMaskDistortionOffset( "Radial Mask Distortion Offset", Vector ) = ( 0, 0, 0, 0 )
		_IntersectionHighlightColourHueShift( "Intersection Highlight Colour Hue Shift", Range( -1, 1 ) ) = 0
		_IntersectionHighlightColourSaturationShift( "Intersection Highlight Colour Saturation Shift", Range( -1, 1 ) ) = 0
		_VertexUVOffsetTopPower( "Vertex UV Offset Top Power", Float ) = 1
		_VertexUVOffsetBottomPower( "Vertex UV Offset Bottom Power", Float ) = 1
		_VertexNormalOffsetTopPower( "Vertex Normal Offset Top Power", Float ) = 1
		[Space(5)] _VertexNormalOffsetBottom( "Vertex Normal Offset Bottom", Float ) = 0
		_VertexNormalOffsetBottomPower( "Vertex Normal Offset Bottom Power", Float ) = 1
		[Header(Vertex Wave)][Space(5)] _VertexWave( "Vertex Wave", Float ) = 0.1
		[Toggle( _VERTEXWAVEENABLED_ON )] _VertexWaveEnabled( "Vertex Wave Enabled", Float ) = 0
		_VertexWaveScale( "Vertex Wave Scale", Float ) = 2
		_VertexWaveAnimation( "Vertex Wave Animation", Float ) = 4
		[Toggle( _VERTEXNOISEENABLED_ON )] _VertexNoiseEnabled( "Vertex Noise Enabled", Float ) = 0
		[Header(Vertex Noise)][Space(5)] _VertexNoise( "Vertex Noise", Float ) = 0.02
		[Space(5)] _VertexNoiseScale( "Vertex Noise Scale", Float ) = 2
		_VertexNoiseTiling( "Vertex Noise Tiling", Vector ) = ( 1, 1, 1, 0 )
		_VertexNoiseAnimation( "Vertex Noise Animation", Vector ) = ( 0, 2, 0, 0 )
		[IntRange] _VertexNoiseOctaves( "Vertex Noise Octaves", Range( 1, 4 ) ) = 1
		[Space(5)] _VertexNoiseDilation( "Vertex Noise Dilation", Range( -0.2, 0.2 ) ) = 0
		[Space(5)] _VertexNoiseTwist( "Vertex Noise Twist", Range( -180, 180 ) ) = 0
		[Header(Vertex Wave Noise Vertical Mask)][Space(5)] _VertexWaveNoiseVerticalMaskPower( "Vertex Wave-Noise Vertical Mask Power", Float ) = 1
		_VertexWaveNoiseVerticalMaskRemapMin( "Vertex Wave-Noise Vertical Mask Remap Min", Range( 0, 1 ) ) = 0
		_VertexWaveNoiseVerticalMaskRemapMax( "Vertex Wave-Noise Vertical Mask Remap Max", Range( 0, 1 ) ) = 1
		_VertexOffsetOverY1Power( "Vertex Offset over Y 1 Power", Float ) = 2
		[Space(5)] _VertexOffsetOverY2( "Vertex Offset over Y 2", Vector ) = ( 0, 0, 0, 0 )
		_VertexOffsetOverY2Power( "Vertex Offset over Y 2 Power", Float ) = 2
		_VertexOffsetOverCircularYPower( "Vertex Offset over Circular Y Power", Float ) = 1
		[Header(Spherize Noise)][Space(5)][Toggle( _SPHERIZENOISE_ON )] _SpherizeNoise( "Spherize Noise", Float ) = 0
		_SpherizeNoiseRadius( "Spherize Noise Radius", Float ) = 0.5
		_SpherizeNoiseStrength( "Spherize Noise Strength", Float ) = 1
		_SpherizeNoiseOffset( "Spherize Noise Offset", Vector ) = ( 0, 0, 0, 0 )
		[Header(Fresnel Mask)][Space(5)] _FresnelMask( "Fresnel Mask", Range( 0, 1 ) ) = 0
		_FresnelMaskPower( "Fresnel Mask Power", Float ) = 2
		_FresnelMaskRemapMin( "Fresnel Mask Remap Min", Range( 0, 1 ) ) = 0
		_FresnelMaskRemapMax( "Fresnel Mask Remap Max", Range( 0, 1 ) ) = 1
		[Toggle( _INVERTDEPTHFADE_ON )] _InvertDepthFade( "Invert Depth Fade", Float ) = 0
		[Space(5)] _SubtractiveDepthFade( "Subtractive Depth Fade", Float ) = 0
		[Toggle( _WORLDSPACEUVS_ON )] _WorldSpaceUVs( "World Space UVs", Float ) = 0
		[Toggle( _SWAPUVXY3_ON )] _SwapUVXY3( "Swap UV XY", Float ) = 0
		[Toggle( _UV2DCENTNORM_ON )] _UV2DCentNorm( "UV 2D Cent Norm", Float ) = 0
		[Toggle( _SWAPUVXY1_ON )] _SwapUVXY1( "Swap UV XY1", Float ) = 0
		[Toggle( _SWAPUVXY7_ON )] _SwapUVXY7( "Swap UV XY", Float ) = 0
		[Header(Vertex UV Offset)][Space(5)] _VertexUVOffsetTop( "Vertex UV Offset Top", Range( -1, 1 ) ) = 0
		[Space(5)] _VertexUVOffsetBottom( "Vertex UV Offset Bottom", Range( -1, 1 ) ) = 0
		[Header(Vertex Normal Offset)][Space(5)] _VertexNormalOffset( "Vertex Normal Offset", Float ) = 0
		[Header(Vertex Twist)][Space(5)] _VertexTwist( "Vertex Twist", Float ) = 0
		_VertexWaveOffset( "Vertex Wave Offset", Range( -1, 1 ) ) = 0
		[Space(5)] _VertexNormalOffsetTop( "Vertex Normal Offset Top", Float ) = 0
		_VertexNoiseParticleAnimation( "Vertex Noise Particle Animation", Vector ) = ( 0, 0, 0, 0 )
		_VertexNoiseOffset( "Vertex Noise Offset", Vector ) = ( 0, 0, 0, 0 )
		[Toggle( _VERTEXNOISEDILATIONENABLED_ON )] _VertexNoiseDilationEnabled( "Vertex Noise Dilation Enabled", Float ) = 0
		[Toggle( _VERTEXNOISETWISTENABLED_ON )] _VertexNoiseTwistEnabled( "Vertex Noise Twist Enabled", Float ) = 0
		[Header(Vertex Offset over Y)][Space(5)] _VertexOffsetOverY1( "Vertex Offset over Y 1", Vector ) = ( 0, 0, 0, 0 )
		[Header(Vertex Offset over Circular Y)][Space(5)] _VertexOffsetOverCircularY( "Vertex Offset over Circular Y", Vector ) = ( 0, 0, 0, 0 )

		[HideInInspector] _RenderQueueType("Render Queue Type", Float) = 1
		[HideInInspector][ToggleUI] _AddPrecomputedVelocity("Add Precomputed Velocity", Float) = 1
		//[HideInInspector] _ShadowMatteFilter("Shadow Matte Filter", Float) = 2.006836
		[HideInInspector] _StencilRef("Stencil Ref", Int) = 0 // StencilUsage.Clear
		[HideInInspector] _StencilWriteMask("Stencil Write Mask", Int) = 3 // StencilUsage.RequiresDeferredLighting | StencilUsage.SubsurfaceScattering
		[HideInInspector] _StencilRefDepth("Stencil Ref Depth", Int) = 0 // Nothing
		[HideInInspector] _StencilWriteMaskDepth("Stencil Write Mask Depth", Int) = 8 // StencilUsage.TraceReflectionRay
		[HideInInspector] _StencilRefMV("Stencil Ref MV", Int) = 32 // StencilUsage.ObjectMotionVector
		[HideInInspector] _StencilWriteMaskMV("Stencil Write Mask MV", Int) = 32 // StencilUsage.ObjectMotionVector
		[HideInInspector] _StencilRefDistortionVec("Stencil Ref Distortion Vec", Int) = 2 // StencilUsage.DistortionVectors
		[HideInInspector] _StencilWriteMaskDistortionVec("Stencil Write Mask Distortion Vec", Int) = 2 // StencilUsage.DistortionVectors
		[HideInInspector] _StencilWriteMaskGBuffer("Stencil Write Mask GBuffer", Int) = 3 // StencilUsage.RequiresDeferredLighting | StencilUsage.SubsurfaceScattering
		[HideInInspector] _StencilRefGBuffer("Stencil Ref GBuffer", Int) = 2 // StencilUsage.RequiresDeferredLighting
		[HideInInspector] _ZTestGBuffer("ZTest GBuffer", Int) = 4
		[HideInInspector][ToggleUI] _RequireSplitLighting("Require Split Lighting", Float) = 0
		[HideInInspector][ToggleUI] _ReceivesSSR("Receives SSR", Float) = 1
		[HideInInspector] _SurfaceType("Surface Type", Float) = 1
		[HideInInspector] _BlendMode("Blend Mode", Float) = 0
		[HideInInspector] _SrcBlend("Src Blend", Float) = 1
		[HideInInspector] _DstBlend("Dst Blend", Float) = 0
		[HideInInspector] _AlphaSrcBlend("Alpha Src Blend", Float) = 1
		[HideInInspector] _AlphaDstBlend("Alpha Dst Blend", Float) = 0
		[HideInInspector][ToggleUI] _ZWrite("ZWrite", Float) = 1
		[HideInInspector][ToggleUI] _TransparentZWrite("Transparent ZWrite", Float) = 0
		[HideInInspector] _CullMode("Cull Mode", Float) = 2
		[HideInInspector] _TransparentSortPriority("Transparent Sort Priority", Float) = 0
		[HideInInspector][ToggleUI] _EnableFogOnTransparent("Enable Fog", Float) = 1
		[HideInInspector] _CullModeForward("Cull Mode Forward", Float) = 2 // This mode is dedicated to Forward to correctly handle backface then front face rendering thin transparent
		[HideInInspector][Enum(Default, 0, Front, 1, Back, 2)]_TransparentCullMode("_TransparentCullMode", Float) = 2
		[HideInInspector] _ZTestDepthEqualForOpaque("ZTest Depth Equal For Opaque", Int) = 4 // Less equal
		[HideInInspector][Enum(UnityEngine.Rendering.CompareFunction)] _ZTestTransparent("ZTest Transparent", Int) = 4// Less equal
		[HideInInspector][ToggleUI] _TransparentBackfaceEnable("Transparent Backface Enable", Float) = 0
		//[HideInInspector][ToggleUI] _AlphaCutoffEnable("Alpha Cutoff Enable", Float) = 0
		[HideInInspector][ToggleUI] _UseShadowThreshold("Use Shadow Threshold", Float) = 0
		[HideInInspector][ToggleUI] _DoubleSidedEnable("Double Sided Enable", Float) = 0
		[HideInInspector][Enum(Default, 0, Flip, 1, Mirror, 2, None, 3)]_DoubleSidedNormalMode("Double Sided Normal Mode", Float) = 2
		[HideInInspector]_DoubleSidedConstants("DoubleSidedConstants", Vector, 4) = (1, 1, -1, 0)
		[HideInInspector] _DistortionEnable("_DistortionEnable",Float) = 0
		[HideInInspector] _DistortionOnly("_DistortionOnly",Float) = 0

		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		//_TessValue( "Tess Max Tessellation", Range( 1, 32 ) ) = 16
		//_TessMin( "Tess Min Distance", Float ) = 10
		//_TessMax( "Tess Max Distance", Float ) = 25
		//_TessEdgeLength ( "Tess Edge length", Range( 2, 50 ) ) = 16
		//_TessMaxDisp( "Tess Max Displacement", Float ) = 25

		[HideInInspector][ToggleUI] _TransparentWritingMotionVec("Transparent Writing MotionVec", Float) = 0
		[HideInInspector][Enum(UnityEngine.Rendering.HighDefinition.OpaqueCullMode)] _OpaqueCullMode("_OpaqueCullMode", Int) = 2 // Back culling by default
		[HideInInspector][ToggleUI] _SupportDecals("Support Decals", Float) = 1
		[HideInInspector][ToggleUI] _ReceivesSSRTransparent("Receives SSR Transparent", Float) = 0
		[HideInInspector] _EmissionColor("Color", Color) = (1, 1, 1)
		[HideInInspector] _UnlitColorMap_MipInfo("_UnlitColorMap_MipInfo", Vector) = (0, 0, 0, 0)

		[HideInInspector][Enum(Default, 0, Auto, 1, On, 2, Off, 3)]_DoubleSidedGIMode("Double sided GI mode", Float) = 0
	}

	SubShader
	{
		LOD 0

		

		

		Tags { "RenderPipeline"="HDRenderPipeline" "RenderType"="Transparent" "Queue"="Transparent" }

		HLSLINCLUDE
		#pragma target 4.5
		#pragma only_renderers d3d11 

        #define SUPPORT_GLOBAL_MIP_BIAS 1

		#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
		#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Filtering.hlsl"
		#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"

		#ifndef ASE_TESS_FUNCS
		#define ASE_TESS_FUNCS
		float4 FixedTess( float tessValue )
		{
			return tessValue;
		}

		float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
		{
			float3 wpos = mul(o2w,vertex).xyz;
			float dist = distance (wpos, cameraPos);
			float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
			return f;
		}

		float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
		{
			float4 tess;
			tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
			tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
			tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
			tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
			return tess;
		}

		float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
		{
			float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
			float len = distance(wpos0, wpos1);
			float f = max(len * scParams.y / (edgeLen * dist), 1.0);
			return f;
		}

		float DistanceFromPlaneASE (float3 pos, float4 plane)
		{
			return dot (float4(pos,1.0f), plane);
		}

		bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
		{
			float4 planeTest;
			planeTest.x = (( DistanceFromPlaneASE(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.y = (( DistanceFromPlaneASE(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.z = (( DistanceFromPlaneASE(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.w = (( DistanceFromPlaneASE(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
			return !all (planeTest);
		}

		float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
		{
			float3 f;
			f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
			f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
			f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

			return CalcTriEdgeTessFactors (f);
		}

		float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;
			tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
			tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
			tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
			tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			return tess;
		}

		float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;

			if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
			{
				tess = 0.0f;
			}
			else
			{
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			}
			return tess;
		}
		#endif //ASE_TESS_FUNCS
		ENDHLSL

		
		Pass
		{
			
			Name "Forward Unlit"
			Tags { "LightMode"="ForwardOnly" }

			Blend [_SrcBlend] [_DstBlend], [_AlphaSrcBlend] [_AlphaDstBlend]
			Blend Off
			Blend Off
			Blend Off
			Blend 4 One OneMinusSrcAlpha

			Cull [_CullModeForward]
			ZTest LEqual
			ZWrite Off

			ColorMask [_ColorMaskTransparentVel] 1

			Stencil
			{
				Ref [_StencilRef]
				WriteMask [_StencilWriteMask]
				Comp Always
				Pass Replace
			}


			HLSLPROGRAM

			#pragma shader_feature_local_fragment _ENABLE_FOG_ON_TRANSPARENT
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#define HAVE_MESH_MODIFICATION 1
			#define ASE_VERSION 19905
			#define ASE_SRP_VERSION 170200


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT

			#pragma multi_compile _ DEBUG_DISPLAY
			#pragma multi_compile _ DOTS_INSTANCING_ON

			#pragma vertex Vert
			#pragma fragment Frag

	        #if (defined(_TRANSPARENT_WRITES_MOTION_VEC) || defined(_TRANSPARENT_REFRACTIVE_SORT)) && defined(_SURFACE_TYPE_TRANSPARENT)
	        #define _WRITE_TRANSPARENT_MOTION_VECTOR
	        #endif

			#define SHADERPASS SHADERPASS_FORWARD_UNLIT
            #define SUPPORT_GLOBAL_MIP_BIAS 1

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl"

			#if defined(_ENABLE_SHADOW_MATTE) && SHADERPASS == SHADERPASS_FORWARD_UNLIT
				#define LIGHTLOOP_DISABLE_TILE_AND_CLUSTER
				#define HAS_LIGHTLOOP
				#define SHADOW_OPTIMIZE_REGISTER_USAGE 1

				#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/CommonLighting.hlsl"
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Shadow/HDShadowContext.hlsl"
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/HDShadow.hlsl"
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/PunctualLightCommon.hlsl"
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/HDShadowLoop.hlsl"
			#endif

			CBUFFER_START( UnityPerMaterial )
			float4 _VerticalColourB;
			float4 _RadialMaskDistortionOffset;
			float4 _RadialMaskDistortionParticleAnimation;
			float4 _RadialMaskDistortionAnimation;
			float4 _VerticalColourA;
			float4 _ColourA;
			float4 _ColourB;
			float4 _NoiseDistortionOffset;
			float4 _NoiseDistortionParticleAnimation;
			float4 _IntersectionHighlightColour;
			float4 _VertexNoiseAnimation;
			float4 _VertexNoiseParticleAnimation;
			float4 _VertexNoiseOffset;
			float4 _NoiseDistortionAnimation;
			float4 _NoiseOffset;
			float4 _NoiseParticleAnimation;
			float4 _NoiseAnimation;
			float3 _VertexNoiseTiling;
			float3 _NoiseTiling;
			float3 _RadialMaskDistortionTiling;
			float3 _VertexOffsetOverCircularY;
			float3 _NoiseDistortionTiling;
			float3 _VertexOffsetOverY2;
			float3 _VertexOffsetOverY1;
			float2 _RadialMaskOffset;
			float2 _NoiseXYTwistOffset;
			float2 _SpherizeNoiseOffset;
			float2 _RadialMaskTiling;
			float _IntersectionHighlightPower;
			float _VerticalColourSaturationShift;
			float _VerticalColourValueMultiplier;
			float _VerticalColourHueShift;
			float _VerticalColourMaskRemapMin;
			float _VerticalColourMaskRemapMax;
			float _IntersectionHighlightColourHueShift;
			float _IntersectionHighlight;
			float _IntersectionHighlightRemapMax;
			float _VertexColourSaturationShift;
			float _IntersectionHighlightRemapMin;
			float _VertexColorHSVEnabledOn;
			float _VertexColourHueShift;
			float _RadialMaskRadius;
			float _IntersectionHighlightColourValueMultiplier;
			float _IntersectionHighlightColourSaturationShift;
			float _VerticalColourMaskPower;
			float _RadialMaskRadiusOverParticleLifetime;
			float _RadialMaskDistortionOctaves;
			float _RadialMaskDistortionScale;
			float _CameraDepthFadePower;
			float _CameraDepthFadeOffset;
			float _CameraDepthFadeLength;
			float _SubtractiveDepthFadePower;
			float _SubtractiveDepthFade;
			float _DepthFadePower;
			float _DepthFade;
			float _FresnelMask;
			float _FresnelMaskPower;
			float _FresnelMaskRemapMax;
			float _FresnelMaskRemapMin;
			float _VerticalMask2Power;
			float _VerticalMask2ObjectSpaceScale;
			float _VerticalMask2ObjectSpaceOffset;
			float _VerticalMask2RemapMax;
			float _VerticalMask2RemapMin;
			float _VerticalMask1Power;
			float _VerticalMask1ObjectSpaceScale;
			float _VerticalMask1ObjectSpaceOffset;
			float _VerticalMask1RemapMin;
			float _VerticalMask1RemapMax;
			float _RadialMaskPower;
			float _RadialMaskDistortion;
			float _RadialMaskDistortionPower;
			float _RadialMaskDistortionDilation;
			float _RadialMaskFeather;
			float _Tessellation;
			float _NoiseOctaves;
			float _ColourSaturationShift;
			float _VertexOffsetOverY1Power;
			float _VertexTwist;
			float _VertexUVOffsetBottom;
			float _VertexUVOffsetBottomPower;
			float _VertexUVOffsetTop;
			float _VertexUVOffsetTopPower;
			float _VertexNoise;
			float _VertexNoiseTwist;
			float _VertexNoiseDilation;
			float _VertexNoiseOctaves;
			float _VertexNoiseScale;
			float _VertexOffsetOverY2Power;
			float _ParticleRandomization;
			float _VertexWaveNoiseVerticalMaskRemapMax;
			float _VertexWaveNoiseVerticalMaskRemapMin;
			float _VertexWave;
			float _VertexWaveOffset;
			float _VertexWaveAnimation;
			float _VertexWaveScale;
			float _VertexNormalOffsetBottom;
			float _VertexNormalOffsetBottomPower;
			float _VertexNormalOffsetTop;
			float _VertexNormalOffsetTopPower;
			float _VertexNormalOffset;
			float _VertexWaveNoiseVerticalMaskPower;
			float _ColourValueMultiplier;
			float _VertexOffsetOverCircularYPower;
			float _NoiseRemapMax;
			float _ColourHueShift;
			float _ColourPower;
			float _Noise;
			float _ParticleSubtractNoiseoverLifetime1;
			float _NoisePower;
			float _NoiseDilation;
			float _Alpha;
			float _NoiseScale;
			float _NoiseDistortion;
			float _NoiseDistortionPower;
			float _NoiseDistortionDilation;
			float _NoiseRemapMin;
			float _NoiseDistortionOctaves;
			float _NoiseParallaxOffset;
			float _NoiseUVYPreRemapMax;
			float _NoiseUVYPreRemapMin;
			float _NoiseUVYPrePower;
			float _NoiseUVYPreScale;
			float _NoiseUVYPreOffset;
			float _NoiseXZTwist;
			float _NoiseXYTwist;
			float _SpherizeNoiseStrength;
			float _SpherizeNoiseRadius;
			float _UVSampleNoise;
			float _NoiseDistortionScale;
			float _IntersectionHighlightAlpha;
			float4 _EmissionColor;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			#ifdef _ENABLE_SHADOW_MATTE
			float _ShadowMatteFilter;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _DstBlend2;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _AlphaCutoff;
			float _AlphaCutoffShadow;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			float _EnableBlendModePreserveSpecularLighting;
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			float4x4 unity_CameraProjection;
			float4x4 unity_CameraInvProjection;
			float4x4 unity_WorldToCamera;
			float4x4 unity_CameraToWorld;


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Unlit/Unlit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#define ASE_NEEDS_FRAG_RELATIVE_WORLD_POS
			#define ASE_NEEDS_FRAG_SCREEN_POSITION_NORMALIZED
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_TEXTURE_COORDINATES1
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES1
			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local _SWAPUVXY1_ON
			#pragma shader_feature_local _UV2DNORMCENT1_NORMAL1 _UV2DNORMCENT1_CENTERED1
			#pragma shader_feature_local _VERTEXWAVEENABLED_ON
			#pragma shader_feature_local _VERTEXNOISEENABLED_ON
			#pragma shader_feature_local _VERTEXNOISETWISTENABLED_ON
			#pragma shader_feature_local _VERTEXNOISEDILATIONENABLED_ON
			#pragma shader_feature_local _VERTICALCOLOUR_ON
			#pragma shader_feature_local _NOISEDILATIONENABLED_ON
			#pragma shader_feature_local _NOISEXZTWISTENABLED_ON
			#pragma shader_feature_local _SPHERIZENOISE_ON
			#pragma shader_feature_local _WORLDSPACEUVS_ON
			#pragma shader_feature_local _OBJECTSPACEUVS_ON
			#pragma shader_feature_local _VERTEXWORLDPOS1_VERTEXPOS1 _VERTEXWORLDPOS1_WORLDPOS1
			#pragma shader_feature_local _NOISEUVPREREMAP_ON
			#pragma shader_feature_local _NOISEDISTORTIONENABLED_ON
			#pragma shader_feature_local _NOISEDISTORTIONDILATIONENABLED_ON
			#pragma shader_feature_local _RADIALMASKSUBTRACTIVE_ON
			#pragma shader_feature_local _VERTICALMASK2_ON
			#pragma shader_feature_local _VERTICALMASK1_ON
			#pragma shader_feature_local _RADIALMASK_ON
			#pragma shader_feature_local _UV2DCENTNORM_ON
			#pragma shader_feature_local _RADIALMASKDISTORTIONENABLED_ON
			#pragma shader_feature_local _RADIALMASKDISTORTIONDILATIONENABLED_ON
			#pragma shader_feature_local _VERTICALMASK1SUBTRACTIVE_ON
			#pragma shader_feature_local _VERTICALMASKSOBJECTSPACE_ON
			#pragma shader_feature_local _VERTICALMASK2SUBTRACTIVE_ON
			#pragma shader_feature_local _INVERTDEPTHFADE_ON


			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 positionRWS : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord4 : TEXCOORD4;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			float3 HSVToRGB( float3 c )
			{
				float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
				float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
				return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
			}
			
			float3 RGBToHSV(float3 c)
			{
				float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
				float4 p = lerp( float4( c.bg, K.wz ), float4( c.gb, K.xy ), step( c.b, c.g ) );
				float4 q = lerp( float4( p.xyw, c.r ), float4( c.r, p.yzx ), step( p.x, c.r ) );
				float d = q.x - min( q.w, q.y );
				float e = 1.0e-10;
				return float3( abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
			}

			struct SurfaceDescription
			{
				float3 Color;
				float3 Emission;
				float4 ShadowTint;
				float Alpha;
				float AlphaClipThreshold;
				float AlphaClipThresholdShadow;
				float4 VTPackedFeedback;
			};

			void BuildSurfaceData(FragInputs fragInputs, SurfaceDescription surfaceDescription, float3 V, out SurfaceData surfaceData)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);
				surfaceData.color = surfaceDescription.Color;
			}

			void GetSurfaceAndBuiltinData(SurfaceDescription surfaceDescription , FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                #endif

				#ifdef _ALPHATEST_ON
				DoAlphaTest ( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
                ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
                #endif

				BuildSurfaceData(fragInputs, surfaceDescription, V, surfaceData);

				#ifdef WRITE_NORMAL_BUFFER
				surfaceData.normalWS = fragInputs.tangentToWorld[2];
				#endif

				#if defined(_ENABLE_SHADOW_MATTE) && SHADERPASS == SHADERPASS_FORWARD_UNLIT
					HDShadowContext shadowContext = InitShadowContext();
					float shadow;
					float3 shadow3;
					posInput = GetPositionInput(fragInputs.positionSS.xy, _ScreenSize.zw, fragInputs.positionSS.z, UNITY_MATRIX_I_VP, UNITY_MATRIX_V);
					float3 normalWS = normalize(fragInputs.tangentToWorld[1]);
					uint renderingLayers = GetMeshRenderingLayerMask();
					ShadowLoopMin(shadowContext, posInput, normalWS, asuint(_ShadowMatteFilter), renderingLayers, shadow3);
					shadow = dot(shadow3, float3(1.0f/3.0f, 1.0f/3.0f, 1.0f/3.0f));

					float4 shadowColor = (1 - shadow)*surfaceDescription.ShadowTint.rgba;
					float  localAlpha  = saturate(shadowColor.a + surfaceDescription.Alpha);

					#ifdef _SURFACE_TYPE_TRANSPARENT
						surfaceData.color = lerp(shadowColor.rgb*surfaceData.color, lerp(lerp(shadowColor.rgb, surfaceData.color, 1 - surfaceDescription.ShadowTint.a), surfaceData.color, shadow), surfaceDescription.Alpha);
					#else
						surfaceData.color = lerp(lerp(shadowColor.rgb, surfaceData.color, 1 - surfaceDescription.ShadowTint.a), surfaceData.color, shadow);
					#endif
					localAlpha = ApplyBlendMode(surfaceData.color, localAlpha).a;
					surfaceDescription.Alpha = localAlpha;
				#endif

				ZERO_INITIALIZE(BuiltinData, builtinData);
				builtinData.opacity = surfaceDescription.Alpha;

				#if defined(DEBUG_DISPLAY)
					builtinData.renderingLayers = GetMeshRenderingLayerMask();
				#endif

                #ifdef _ALPHATEST_ON
                    builtinData.alphaClipTreshold = surfaceDescription.AlphaClipThreshold;
                #endif

				builtinData.emissiveColor = surfaceDescription.Emission;

				#ifdef UNITY_VIRTUAL_TEXTURING
                builtinData.vtPackedFeedback = surfaceDescription.VTPackedFeedback;
                #endif

				#ifdef _DEPTHOFFSET_ON
                builtinData.depthOffset = surfaceDescription.DepthOffset;
                #endif

                ApplyDebugToBuiltinData(builtinData);
			}

			float GetDeExposureMultiplier()
			{
			#if defined(DISABLE_UNLIT_DEEXPOSURE)
				return 1.0;
			#else
				return _DeExposureMultiplier;
			#endif
			}

			PackedVaryingsMeshToPS VertexFunction( AttributesMesh inputMesh  )
			{
				PackedVaryingsMeshToPS o;
				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				float localTwistXZ_float11_g793 = ( 0.0 );
				float2 texCoord721 = inputMesh.ase_texcoord * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord718 = inputMesh.ase_texcoord.xy * float2( 2,2 ) + float2( -1,-1 );
				#if defined( _UV2DNORMCENT1_NORMAL1 )
				float2 staticSwitch714 = texCoord721;
				#elif defined( _UV2DNORMCENT1_CENTERED1 )
				float2 staticSwitch714 = texCoord718;
				#else
				float2 staticSwitch714 = texCoord721;
				#endif
				#ifdef _SWAPUVXY1_ON
				float2 staticSwitch988 = (staticSwitch714).yx;
				#else
				float2 staticSwitch988 = staticSwitch714;
				#endif
				float UV_2D_Ym723 = (staticSwitch988).y;
				float3 Vertex_Normal_Offset947 = ( ( inputMesh.normalOS * _VertexNormalOffset ) + ( pow( UV_2D_Ym723 , _VertexNormalOffsetTopPower ) * inputMesh.normalOS * _VertexNormalOffsetTop ) + ( pow( ( 1.0 - UV_2D_Ym723 ) , _VertexNormalOffsetBottomPower ) * inputMesh.normalOS * _VertexNormalOffsetBottom ) );
				float2 UV_2Dm715 = staticSwitch988;
				float mulTime868 = _TimeParameters.x * _VertexWaveAnimation;
				float temp_output_7_0_g784 = _VertexWaveNoiseVerticalMaskRemapMin;
				float temp_output_23_0_g784 = _VertexWaveNoiseVerticalMaskRemapMax;
				float temp_output_20_0_g784 = UV_2D_Ym723;
				float temp_output_4_0_g784 = _VertexWaveNoiseVerticalMaskPower;
				float smoothstepResult22_g784 = smoothstep( temp_output_7_0_g784 , temp_output_23_0_g784 , pow( temp_output_20_0_g784 , temp_output_4_0_g784 ));
				float Vertex_WaveNoise_Vertical_Mask819 = smoothstepResult22_g784;
				#ifdef _VERTEXWAVEENABLED_ON
				float3 staticSwitch930 = ( ( sin( ( ( UV_2Dm715.y * TWO_PI * _VertexWaveScale ) - ( mulTime868 + ( _VertexWaveOffset * TWO_PI ) ) ) ) * _VertexWave * Vertex_WaveNoise_Vertical_Mask819 ) * inputMesh.normalOS );
				#else
				float3 staticSwitch930 = float3( 0,0,0 );
				#endif
				float3 Vertex_Sine943 = staticSwitch930;
				float localSimplexNoise_float2_g790 = ( 0.0 );
				float Particle_Stable_Random_X771 = ( ( inputMesh.ase_texcoord.w - 0.5 ) * 100.0 * _ParticleRandomization );
				float Particle_Age_Percent770 = inputMesh.ase_texcoord.z;
				#ifdef _WORLDSPACEUVS2_ON
				float staticSwitch860 = Particle_Age_Percent770;
				#else
				float staticSwitch860 = Particle_Stable_Random_X771;
				#endif
				float3 temp_cast_0 = (staticSwitch860).xxx;
				float4 Vertex_Noise_Offset852 = ( _VertexNoiseOffset + Particle_Stable_Random_X771 + ( _VertexNoiseParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g786 = ( float4( ( temp_cast_0 * _VertexNoiseScale * _VertexNoiseTiling ) , 0.0 ) - ( Vertex_Noise_Offset852 + ( _VertexNoiseAnimation * _TimeParameters.x ) ) );
				float3 temp_output_871_0 = (temp_output_10_0_g786).xyz;
				float3 position2_g790 = temp_output_871_0;
				float temp_output_871_15 = (temp_output_10_0_g786).w;
				float angle2_g790 = temp_output_871_15;
				float octaves2_g790 = _VertexNoiseOctaves;
				float noise2_g790 = 0.0;
				float3 gradient2_g790 = float3( 0,0,0 );
				SimplexNoise_float( position2_g790 , angle2_g790 , octaves2_g790 , noise2_g790 , gradient2_g790 );
				float localSimplexNoise_Caustics_float2_g789 = ( 0.0 );
				float3 position2_g789 = temp_output_871_0;
				float angle2_g789 = temp_output_871_15;
				float octaves2_g789 = _VertexNoiseOctaves;
				float gradientStrength2_g789 = _VertexNoiseDilation;
				float noise2_g789 = 0.0;
				float3 gradient2_g789 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g789 , angle2_g789 , octaves2_g789 , gradientStrength2_g789 , noise2_g789 , gradient2_g789 );
				#ifdef _VERTEXNOISEDILATIONENABLED_ON
				float3 staticSwitch886 = gradient2_g789;
				#else
				float3 staticSwitch886 = gradient2_g790;
				#endif
				float localTwistXZ_float11_g791 = ( 0.0 );
				float3 temp_output_10_0_g791 = staticSwitch886;
				float3 position11_g791 = temp_output_10_0_g791;
				float temp_output_9_0_g791 = _VertexNoiseTwist;
				float angle11_g791 = radians( temp_output_9_0_g791 );
				float3 output11_g791 = float3( 0,0,0 );
				TwistXZ_float( position11_g791 , angle11_g791 , output11_g791 );
				float3 temp_output_898_0 = output11_g791;
				#ifdef _VERTEXNOISETWISTENABLED_ON
				float3 staticSwitch973 = temp_output_898_0;
				#else
				float3 staticSwitch973 = staticSwitch886;
				#endif
				#ifdef _VERTEXNOISEENABLED_ON
				float3 staticSwitch933 = ( temp_output_898_0 * _VertexNoise * Vertex_WaveNoise_Vertical_Mask819 );
				#else
				float3 staticSwitch933 = staticSwitch973;
				#endif
				float3 Vertex_Noise946 = staticSwitch933;
				float2 break876 = ( ( UV_2Dm715 * float2( 2,1 ) ) - float2( 1,0 ) );
				float temp_output_907_0 = ( ( break876.x * pow( break876.y , _VertexUVOffsetTopPower ) ) * ( _VertexUVOffsetTop * 0.5 ) );
				float3 appendResult922 = (float3(temp_output_907_0 , 0.0 , 0.0));
				float3 appendResult921 = (float3(0.0 , temp_output_907_0 , 0.0));
				#ifdef _SWAPUVXY1_ON
				float3 staticSwitch931 = appendResult921;
				#else
				float3 staticSwitch931 = appendResult922;
				#endif
				float3 Vertex_Offset_Top944 = staticSwitch931;
				float2 break869 = ( ( UV_2Dm715 * float2( 2,1 ) ) - float2( 1,0 ) );
				float temp_output_906_0 = ( ( break869.x * pow( ( 1.0 - break869.y ) , _VertexUVOffsetBottomPower ) ) * ( _VertexUVOffsetBottom * 0.5 ) );
				float3 appendResult924 = (float3(temp_output_906_0 , 0.0 , 0.0));
				float3 appendResult923 = (float3(0.0 , temp_output_906_0 , 0.0));
				#ifdef _SWAPUVXY1_ON
				float3 staticSwitch932 = appendResult923;
				#else
				float3 staticSwitch932 = appendResult924;
				#endif
				float3 Vertex_Offset_Bottom945 = staticSwitch932;
				float3 temp_output_10_0_g793 = ( ( Vertex_Normal_Offset947 + Vertex_Sine943 + Vertex_Noise946 + Vertex_Offset_Top944 + Vertex_Offset_Bottom945 ) + inputMesh.positionOS );
				float3 position11_g793 = temp_output_10_0_g793;
				float temp_output_9_0_g793 = -_VertexTwist;
				float angle11_g793 = radians( temp_output_9_0_g793 );
				float3 output11_g793 = float3( 0,0,0 );
				TwistXZ_float( position11_g793 , angle11_g793 , output11_g793 );
				float3 worldToObjDir948 = mul( GetWorldToObjectMatrix(), float4( _VertexOffsetOverY1, 0.0 ) ).xyz;
				float3 worldToObjDir950 = mul( GetWorldToObjectMatrix(), float4( _VertexOffsetOverY2, 0.0 ) ).xyz;
				float UV_2D_Circular_Y929 = sin( ( UV_2D_Ym723 * PI ) );
				float3 Vertex_Offset_over_Y966 = ( ( worldToObjDir948 * pow( UV_2D_Ym723 , _VertexOffsetOverY1Power ) ) + ( worldToObjDir950 * pow( UV_2D_Ym723 , _VertexOffsetOverY2Power ) ) + ( _VertexOffsetOverCircularY * pow( UV_2D_Circular_Y929 , _VertexOffsetOverCircularYPower ) ) );
				float3 Vertex_Offset971 = ( output11_g793 + Vertex_Offset_over_Y966 );
				
				float3 ase_normalWS = TransformObjectToWorldNormal( inputMesh.normalOS );
				o.ase_texcoord4.xyz = ase_normalWS;
				float3 objectToViewPos = TransformWorldToView( TransformObjectToWorld( inputMesh.positionOS ) );
				float eyeDepth = -objectToViewPos.z;
				o.ase_texcoord4.w = eyeDepth;
				
				o.ase_texcoord1 = inputMesh.ase_texcoord;
				o.ase_texcoord2 = float4(inputMesh.positionOS,1);
				o.ase_texcoord3 = inputMesh.ase_texcoord1;
				o.ase_color = inputMesh.ase_color;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = Vertex_Offset971;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS = inputMesh.normalOS;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				o.positionCS = TransformWorldToHClip(positionRWS);
				o.positionRWS = positionRWS;
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_texcoord1 = v.ase_texcoord1;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			#ifdef UNITY_VIRTUAL_TEXTURING
			#define VT_BUFFER_TARGET SV_Target1
			#define EXTRA_BUFFER_TARGET SV_Target2
			#else
			#define EXTRA_BUFFER_TARGET SV_Target1
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput,
						out float4 outColor : SV_Target0
						#ifdef UNITY_VIRTUAL_TEXTURING
						,out float4 outVTFeedback : VT_BUFFER_TARGET
						#endif
						#if defined(_DEPTHOFFSET_ON) || defined(ASE_DEPTH_WRITE_ON)
						, out float outputDepth : DEPTH_OFFSET_SEMANTIC
						#endif
					
					)
			{
				UNITY_SETUP_INSTANCE_ID( packedInput );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;
				input.positionRWS = packedInput.positionRWS;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 PositionRWS = packedInput.positionRWS;
				float3 V = GetWorldSpaceNormalizeViewDir( packedInput.positionRWS );
				float4 ScreenPosNorm = float4( posInput.positionNDC, packedInput.positionCS.zw );
				float4 ClipPos = ComputeClipSpacePosition( ScreenPosNorm.xy, packedInput.positionCS.z ) * packedInput.positionCS.w;
				float4 ScreenPos = ComputeScreenPos( ClipPos, _ProjectionParams.x );

				float4 temp_output_22_0_g796 = _ColourB;
				float4 temp_output_22_0_g795 = _ColourA;
				float temp_output_7_0_g781 = _NoiseRemapMin;
				float temp_output_23_0_g781 = _NoiseRemapMax;
				float localSimplexNoise_float2_g779 = ( 0.0 );
				float2 texCoord721 = packedInput.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord718 = packedInput.ase_texcoord1.xy * float2( 2,2 ) + float2( -1,-1 );
				#if defined( _UV2DNORMCENT1_NORMAL1 )
				float2 staticSwitch714 = texCoord721;
				#elif defined( _UV2DNORMCENT1_CENTERED1 )
				float2 staticSwitch714 = texCoord718;
				#else
				float2 staticSwitch714 = texCoord721;
				#endif
				#ifdef _SWAPUVXY1_ON
				float2 staticSwitch988 = (staticSwitch714).yx;
				#else
				float2 staticSwitch988 = staticSwitch714;
				#endif
				float2 UV_2Dm715 = staticSwitch988;
				float3 ase_positionWS = GetAbsolutePositionWS( PositionRWS );
				#if defined( _VERTEXWORLDPOS1_VERTEXPOS1 )
				float3 staticSwitch734 = packedInput.ase_texcoord2.xyz;
				#elif defined( _VERTEXWORLDPOS1_WORLDPOS1 )
				float3 staticSwitch734 = ase_positionWS;
				#else
				float3 staticSwitch734 = packedInput.ase_texcoord2.xyz;
				#endif
				#ifdef _SWAPUVXY7_ON
				float3 staticSwitch735 = (staticSwitch734).yxz;
				#else
				float3 staticSwitch735 = staticSwitch734;
				#endif
				float3 UV_3D_VWP1739 = staticSwitch735;
				#ifdef _OBJECTSPACEUVS_ON
				float3 staticSwitch792 = UV_3D_VWP1739;
				#else
				float3 staticSwitch792 = float3( UV_2Dm715 ,  0.0 );
				#endif
				float UV_3D_World_VWP2682 = 0.0;
				float3 temp_cast_1 = (UV_3D_World_VWP2682).xxx;
				#ifdef _WORLDSPACEUVS_ON
				float3 staticSwitch793 = temp_cast_1;
				#else
				float3 staticSwitch793 = staticSwitch792;
				#endif
				float2 appendResult745 = (float2(ScreenPosNorm.x , ScreenPosNorm.y));
				float2 Screen_UV747 = appendResult745;
				float2 appendResult746 = (float2(_ScreenParams.x , _ScreenParams.y));
				float2 Screen_Resolution748 = appendResult746;
				float2 Screen_Position750 = ( Screen_UV747 * Screen_Resolution748 );
				float2 screenPosition441 = Screen_Position750;
				float mulTime440 = _TimeParameters.x * 60.0;
				float time441 = mulTime440;
				float3 localHash33441 = Hash33( screenPosition441 , time441 );
				float3 Sample_Noise445 = ( (localHash33441*2.0 + -1.0) * _UVSampleNoise );
				float3 Noise_Base_UV795 = ( staticSwitch793 + Sample_Noise445 );
				float localSpherize_float5_g755 = ( 0.0 );
				float2 uv5_g755 = (Noise_Base_UV795).xy;
				float2 center5_g755 = ( _SpherizeNoiseOffset + float2( 0.5,0.5 ) );
				float radius5_g755 = _SpherizeNoiseRadius;
				float strength5_g755 = _SpherizeNoiseStrength;
				float2 output5_g755 = float2( 0,0 );
				Spherize_float( uv5_g755 , center5_g755 , radius5_g755 , strength5_g755 , output5_g755 );
				float3 appendResult506 = (float3(output5_g755 , (Noise_Base_UV795).z));
				#ifdef _SPHERIZENOISE_ON
				float3 staticSwitch505 = appendResult506;
				#else
				float3 staticSwitch505 = Noise_Base_UV795;
				#endif
				float2 center45_g765 = ( _NoiseXYTwistOffset + float2( 0.5,0.5 ) );
				float2 delta6_g765 = ( staticSwitch505.xy - center45_g765 );
				float angle10_g765 = ( length( delta6_g765 ) * radians( _NoiseXYTwist ) );
				float x23_g765 = ( ( cos( angle10_g765 ) * delta6_g765.x ) - ( sin( angle10_g765 ) * delta6_g765.y ) );
				float2 break40_g765 = center45_g765;
				float2 break41_g765 = float2( 0,0 );
				float y35_g765 = ( ( sin( angle10_g765 ) * delta6_g765.x ) + ( cos( angle10_g765 ) * delta6_g765.y ) );
				float2 appendResult44_g765 = (float2(( x23_g765 + break40_g765.x + break41_g765.x ) , ( break40_g765.y + break41_g765.y + y35_g765 )));
				float2 temp_output_499_0 = appendResult44_g765;
				float localTwistXZ_float11_g763 = ( 0.0 );
				float3 temp_output_10_0_g763 = float3( temp_output_499_0 ,  0.0 );
				float3 position11_g763 = temp_output_10_0_g763;
				float temp_output_9_0_g763 = _NoiseXZTwist;
				float angle11_g763 = radians( temp_output_9_0_g763 );
				float3 output11_g763 = float3( 0,0,0 );
				TwistXZ_float( position11_g763 , angle11_g763 , output11_g763 );
				#ifdef _NOISEXZTWISTENABLED_ON
				float3 staticSwitch498 = output11_g763;
				#else
				float3 staticSwitch498 = float3( temp_output_499_0 ,  0.0 );
				#endif
				float3 break469 = staticSwitch498;
				float temp_output_478_0 = ( ( break469.y - _NoiseUVYPreOffset ) * _NoiseUVYPreScale );
				float temp_output_7_0_g770 = abs( temp_output_478_0 );
				float temp_output_7_0_g771 = abs( temp_output_478_0 );
				float smoothstepResult16_g771 = smoothstep( _NoiseUVYPreRemapMin , _NoiseUVYPreRemapMax , pow( temp_output_7_0_g771 , _NoiseUVYPrePower ));
				#ifdef _NOISEUVPREREMAP_ON
				float staticSwitch485 = ( smoothstepResult16_g771 * sign( temp_output_478_0 ) );
				#else
				float staticSwitch485 = ( pow( temp_output_7_0_g770 , _NoiseUVYPrePower ) * sign( temp_output_478_0 ) );
				#endif
				float3 appendResult486 = (float3(break469.x , staticSwitch485 , 0.0));
				float3 temp_output_787_0 = ( -V * _NoiseParallaxOffset );
				#ifdef _SWAPUVXY3_ON
				float3 staticSwitch789 = (temp_output_787_0).yxz;
				#else
				float3 staticSwitch789 = temp_output_787_0;
				#endif
				float3 Parallax_Offset790 = staticSwitch789;
				float localSimplexNoise_float2_g761 = ( 0.0 );
				float Particle_Stable_Random_X771 = ( ( packedInput.ase_texcoord1.w - 0.5 ) * 100.0 * _ParticleRandomization );
				float Particle_Age_Percent770 = packedInput.ase_texcoord1.z;
				float4 Distortion_Noise_Offset813 = ( _NoiseDistortionOffset + Particle_Stable_Random_X771 + ( _NoiseDistortionParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g758 = ( float4( ( ( Noise_Base_UV795 + Parallax_Offset790 ) * _NoiseDistortionScale * _NoiseDistortionTiling ) , 0.0 ) - ( Distortion_Noise_Offset813 + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 temp_output_322_0 = (temp_output_10_0_g758).xyz;
				float3 position2_g761 = temp_output_322_0;
				float temp_output_322_15 = (temp_output_10_0_g758).w;
				float angle2_g761 = temp_output_322_15;
				float octaves2_g761 = _NoiseDistortionOctaves;
				float noise2_g761 = 0.0;
				float3 gradient2_g761 = float3( 0,0,0 );
				SimplexNoise_float( position2_g761 , angle2_g761 , octaves2_g761 , noise2_g761 , gradient2_g761 );
				float localSimplexNoise_Caustics_float2_g760 = ( 0.0 );
				float3 position2_g760 = temp_output_322_0;
				float angle2_g760 = temp_output_322_15;
				float octaves2_g760 = _NoiseDistortionOctaves;
				float gradientStrength2_g760 = _NoiseDistortionDilation;
				float noise2_g760 = 0.0;
				float3 gradient2_g760 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g760 , angle2_g760 , octaves2_g760 , gradientStrength2_g760 , noise2_g760 , gradient2_g760 );
				#ifdef _NOISEDISTORTIONDILATIONENABLED_ON
				float3 staticSwitch329 = gradient2_g760;
				#else
				float3 staticSwitch329 = gradient2_g761;
				#endif
				float3 temp_output_7_0_g766 = abs( staticSwitch329 );
				float3 temp_cast_6 = (_NoiseDistortionPower).xxx;
				#ifdef _NOISEDISTORTIONENABLED_ON
				float3 staticSwitch336 = ( ( pow( temp_output_7_0_g766 , temp_cast_6 ) * sign( staticSwitch329 ) ) * _NoiseDistortion );
				#else
				float3 staticSwitch336 = float3( 0,0,0 );
				#endif
				float3 Noise_Distortion337 = staticSwitch336;
				float3 Noise_UV494 = ( appendResult486 + Parallax_Offset790 + Noise_Distortion337 );
				float4 Noise_Offset786 = ( _NoiseOffset + Particle_Stable_Random_X771 + ( _NoiseParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g775 = ( float4( ( Noise_UV494 * _NoiseScale * _NoiseTiling ) , 0.0 ) - ( Noise_Offset786 + ( _NoiseAnimation * _TimeParameters.x ) ) );
				float3 temp_output_344_0 = (temp_output_10_0_g775).xyz;
				float3 position2_g779 = temp_output_344_0;
				float temp_output_344_15 = (temp_output_10_0_g775).w;
				float angle2_g779 = temp_output_344_15;
				float octaves2_g779 = _NoiseOctaves;
				float noise2_g779 = 0.0;
				float3 gradient2_g779 = float3( 0,0,0 );
				SimplexNoise_float( position2_g779 , angle2_g779 , octaves2_g779 , noise2_g779 , gradient2_g779 );
				float localSimplexNoise_Caustics_float2_g778 = ( 0.0 );
				float3 position2_g778 = temp_output_344_0;
				float angle2_g778 = temp_output_344_15;
				float octaves2_g778 = _NoiseOctaves;
				float gradientStrength2_g778 = _NoiseDilation;
				float noise2_g778 = 0.0;
				float3 gradient2_g778 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g778 , angle2_g778 , octaves2_g778 , gradientStrength2_g778 , noise2_g778 , gradient2_g778 );
				#ifdef _NOISEDILATIONENABLED_ON
				float staticSwitch349 = noise2_g778;
				#else
				float staticSwitch349 = noise2_g779;
				#endif
				float temp_output_20_0_g781 = staticSwitch349;
				float temp_output_4_0_g781 = _NoisePower;
				float smoothstepResult22_g781 = smoothstep( temp_output_7_0_g781 , temp_output_23_0_g781 , pow( temp_output_20_0_g781 , temp_output_4_0_g781 ));
				float Particle_Subtract_Noise_over_Lifetime779 = ( packedInput.ase_texcoord3.y * _ParticleSubtractNoiseoverLifetime1 );
				float temp_output_356_0 = ( smoothstepResult22_g781 - Particle_Subtract_Noise_over_Lifetime779 );
				float lerpResult359 = lerp( 1.0 , temp_output_356_0 , _Noise);
				float Noise360 = lerpResult359;
				float Colour_Power101 = pow( Noise360 , _ColourPower );
				float3 lerpResult123 = lerp( ( (temp_output_22_0_g796).rgb * (temp_output_22_0_g796).a ) , ( (temp_output_22_0_g795).rgb * (temp_output_22_0_g795).a ) , Colour_Power101);
				float3 hsvTorgb147 = RGBToHSV( lerpResult123 );
				float3 hsvTorgb127 = HSVToRGB( float3(( hsvTorgb147.x + _ColourHueShift ),( hsvTorgb147.y + _ColourSaturationShift ),( hsvTorgb147.z * _ColourValueMultiplier )) );
				float4 temp_output_22_0_g797 = _VerticalColourB;
				float4 temp_output_22_0_g798 = _VerticalColourA;
				float3 lerpResult132 = lerp( ( (temp_output_22_0_g797).rgb * (temp_output_22_0_g797).a ) , ( (temp_output_22_0_g798).rgb * (temp_output_22_0_g798).a ) , Colour_Power101);
				float3 hsvTorgb143 = RGBToHSV( lerpResult132 );
				float3 hsvTorgb144 = HSVToRGB( float3(( hsvTorgb143.x + _VerticalColourHueShift ),( hsvTorgb143.y + _VerticalColourSaturationShift ),( hsvTorgb143.z * _VerticalColourValueMultiplier )) );
				float temp_output_7_0_g799 = _VerticalColourMaskRemapMin;
				float temp_output_23_0_g799 = _VerticalColourMaskRemapMax;
				float UV_2D_Ym723 = (staticSwitch988).y;
				float temp_output_20_0_g799 = UV_2D_Ym723;
				float temp_output_4_0_g799 = _VerticalColourMaskPower;
				float smoothstepResult22_g799 = smoothstep( temp_output_7_0_g799 , temp_output_23_0_g799 , pow( temp_output_20_0_g799 , temp_output_4_0_g799 ));
				float Vertical_Colour_Mask627 = smoothstepResult22_g799;
				float3 lerpResult129 = lerp( hsvTorgb127 , hsvTorgb144 , Vertical_Colour_Mask627);
				#ifdef _VERTICALCOLOUR_ON
				float3 staticSwitch128 = lerpResult129;
				#else
				float3 staticSwitch128 = hsvTorgb127;
				#endif
				float3 Colour_Input145 = staticSwitch128;
				float3 hsvTorgb457 = RGBToHSV( float3( 0,0,0 ) );
				float3 hsvTorgb454 = HSVToRGB( float3(( hsvTorgb457.x + _VertexColourHueShift ),( hsvTorgb457.y + _VertexColourSaturationShift ),hsvTorgb457.z) );
				float4 Vertex_Colour467 = (( _VertexColorHSVEnabledOn )?( float4( (hsvTorgb454).xyz , 0.0 ) ):( packedInput.ase_color ));
				float3 hsvTorgb106 = RGBToHSV( Colour_Input145 );
				float3 hsvTorgb113 = HSVToRGB( float3(( hsvTorgb106.x + _IntersectionHighlightColourHueShift ),( hsvTorgb106.y + _IntersectionHighlightColourSaturationShift ),( hsvTorgb106.z * _IntersectionHighlightColourValueMultiplier )) );
				float temp_output_7_0_g788 = _IntersectionHighlightRemapMin;
				float temp_output_23_0_g788 = _IntersectionHighlightRemapMax;
				float screenDepth372 = LinearEyeDepth(SampleCameraDepth( ScreenPosNorm.xy ),_ZBufferParams);
				float distanceDepth372 = saturate( abs( ( screenDepth372 - LinearEyeDepth( ScreenPosNorm.z,_ZBufferParams ) ) / ( _IntersectionHighlight ) ) );
				float temp_output_20_0_g788 = ( 1.0 - distanceDepth372 );
				float temp_output_4_0_g788 = _IntersectionHighlightPower;
				float smoothstepResult22_g788 = smoothstep( temp_output_7_0_g788 , temp_output_23_0_g788 , pow( temp_output_20_0_g788 , temp_output_4_0_g788 ));
				float Intersection_Highlight378 = smoothstepResult22_g788;
				float4 lerpResult119 = lerp( ( float4( Colour_Input145 , 0.0 ) * Vertex_Colour467 ) , float4( ( hsvTorgb113 * _IntersectionHighlightColour.rgb ) , 0.0 ) , pow( Intersection_Highlight378 , 0.0001 ));
				float4 Colour118 = lerpResult119;
				
				float Particle_Mask_Radius_over_Lifetime630 = packedInput.ase_texcoord3.x;
				float lerpResult245 = lerp( 1.0 , Particle_Mask_Radius_over_Lifetime630 , _RadialMaskRadiusOverParticleLifetime);
				float temp_output_6_0_g772 = ( 1.0 - ( _RadialMaskRadius * lerpResult245 ) );
				float lerpResult5_g772 = lerp( temp_output_6_0_g772 , 1.0 , _RadialMaskFeather);
				float2 texCoord991 = packedInput.ase_texcoord1.xy * float2( 2,2 ) + float2( -1,-1 );
				float2 texCoord997 = packedInput.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				#ifdef _UV2DCENTNORM_ON
				float2 staticSwitch996 = texCoord997;
				#else
				float2 staticSwitch996 = texCoord991;
				#endif
				#ifdef _SWAPUVXY1_ON
				float2 staticSwitch990 = (staticSwitch996).yx;
				#else
				float2 staticSwitch990 = staticSwitch996;
				#endif
				float2 UV_2D_Centeredm992 = staticSwitch990;
				float localSimplexNoise_float2_g757 = ( 0.0 );
				float4 Mask_Distortion_Noise_Offset805 = ( _RadialMaskDistortionOffset + Particle_Stable_Random_X771 + ( _RadialMaskDistortionParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g725 = ( float4( ( Noise_Base_UV795 * _RadialMaskDistortionScale * _RadialMaskDistortionTiling ) , 0.0 ) - ( Mask_Distortion_Noise_Offset805 + ( _RadialMaskDistortionAnimation * _TimeParameters.x ) ) );
				float3 temp_output_305_0 = (temp_output_10_0_g725).xyz;
				float3 position2_g757 = temp_output_305_0;
				float temp_output_305_15 = (temp_output_10_0_g725).w;
				float angle2_g757 = temp_output_305_15;
				float octaves2_g757 = _RadialMaskDistortionOctaves;
				float noise2_g757 = 0.0;
				float3 gradient2_g757 = float3( 0,0,0 );
				SimplexNoise_float( position2_g757 , angle2_g757 , octaves2_g757 , noise2_g757 , gradient2_g757 );
				float localSimplexNoise_Caustics_float2_g756 = ( 0.0 );
				float3 position2_g756 = temp_output_305_0;
				float angle2_g756 = temp_output_305_15;
				float octaves2_g756 = _RadialMaskDistortionOctaves;
				float gradientStrength2_g756 = _RadialMaskDistortionDilation;
				float noise2_g756 = 0.0;
				float3 gradient2_g756 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g756 , angle2_g756 , octaves2_g756 , gradientStrength2_g756 , noise2_g756 , gradient2_g756 );
				#ifdef _RADIALMASKDISTORTIONDILATIONENABLED_ON
				float3 staticSwitch310 = gradient2_g756;
				#else
				float3 staticSwitch310 = gradient2_g757;
				#endif
				float3 temp_output_7_0_g762 = abs( staticSwitch310 );
				float3 temp_cast_14 = (_RadialMaskDistortionPower).xxx;
				#ifdef _RADIALMASKDISTORTIONENABLED_ON
				float3 staticSwitch325 = ( ( pow( temp_output_7_0_g762 , temp_cast_14 ) * sign( staticSwitch310 ) ) * _RadialMaskDistortion );
				#else
				float3 staticSwitch325 = float3( 0,0,0 );
				#endif
				float3 Mask_Distortion328 = staticSwitch325;
				float temp_output_7_0_g772 = ( 1.0 - length( ( ( ( UV_2D_Centeredm992 + (Mask_Distortion328).xy ) - _RadialMaskOffset ) * _RadialMaskTiling ) ) );
				float smoothstepResult4_g772 = smoothstep( temp_output_6_0_g772 , lerpResult5_g772 , temp_output_7_0_g772);
				#ifdef _RADIALMASK_ON
				float staticSwitch256 = ( 1.0 - pow( smoothstepResult4_g772 , _RadialMaskPower ) );
				#else
				float staticSwitch256 = 0.0;
				#endif
				float Radial_Mask257 = staticSwitch256;
				#ifdef _RADIALMASKSUBTRACTIVE_ON
				float staticSwitch204 = Radial_Mask257;
				#else
				float staticSwitch204 = 0.0;
				#endif
				float temp_output_7_0_g777 = _VerticalMask1RemapMax;
				float temp_output_23_0_g777 = _VerticalMask1RemapMin;
				float UV_3D_Y_VWP1760 = (staticSwitch735).y;
				#ifdef _VERTICALMASKSOBJECTSPACE_ON
				float staticSwitch270 = ( ( UV_3D_Y_VWP1760 - _VerticalMask1ObjectSpaceOffset ) / _VerticalMask1ObjectSpaceScale );
				#else
				float staticSwitch270 = UV_2D_Ym723;
				#endif
				float temp_output_20_0_g777 = staticSwitch270;
				float smoothstepResult25_g777 = smoothstep( temp_output_7_0_g777 , temp_output_23_0_g777 , temp_output_20_0_g777);
				float temp_output_4_0_g777 = _VerticalMask1Power;
				float temp_output_278_0 = pow( smoothstepResult25_g777 , temp_output_4_0_g777 );
				#ifdef _VERTICALMASK1SUBTRACTIVE_ON
				float staticSwitch282 = ( 1.0 - temp_output_278_0 );
				#else
				float staticSwitch282 = temp_output_278_0;
				#endif
				float Vertical_Mask_1287 = staticSwitch282;
				#ifdef _VERTICALMASK1SUBTRACTIVE_ON
				float staticSwitch206 = ( staticSwitch204 + Vertical_Mask_1287 );
				#else
				float staticSwitch206 = staticSwitch204;
				#endif
				#ifdef _VERTICALMASK1_ON
				float staticSwitch207 = staticSwitch206;
				#else
				float staticSwitch207 = staticSwitch204;
				#endif
				float temp_output_7_0_g780 = _VerticalMask2RemapMin;
				float temp_output_23_0_g780 = _VerticalMask2RemapMax;
				#ifdef _VERTICALMASKSOBJECTSPACE_ON
				float staticSwitch286 = ( ( UV_3D_Y_VWP1760 - _VerticalMask2ObjectSpaceOffset ) / _VerticalMask2ObjectSpaceScale );
				#else
				float staticSwitch286 = UV_2D_Ym723;
				#endif
				float temp_output_20_0_g780 = staticSwitch286;
				float smoothstepResult25_g780 = smoothstep( temp_output_7_0_g780 , temp_output_23_0_g780 , temp_output_20_0_g780);
				float temp_output_4_0_g780 = _VerticalMask2Power;
				float temp_output_288_0 = pow( smoothstepResult25_g780 , temp_output_4_0_g780 );
				#ifdef _VERTICALMASK2SUBTRACTIVE_ON
				float staticSwitch290 = ( 1.0 - temp_output_288_0 );
				#else
				float staticSwitch290 = temp_output_288_0;
				#endif
				float Vertical_Mask_2291 = staticSwitch290;
				#ifdef _VERTICALMASK2SUBTRACTIVE_ON
				float staticSwitch208 = ( staticSwitch207 + Vertical_Mask_2291 );
				#else
				float staticSwitch208 = staticSwitch207;
				#endif
				#ifdef _VERTICALMASK2_ON
				float staticSwitch209 = staticSwitch208;
				#else
				float staticSwitch209 = staticSwitch207;
				#endif
				float3 ase_normalWS = packedInput.ase_texcoord4.xyz;
				float fresnelNdotV427 = dot( ase_normalWS, V );
				float fresnelNode427 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV427, _FresnelMaskPower ) );
				float smoothstepResult430 = smoothstep( _FresnelMaskRemapMin , _FresnelMaskRemapMax , fresnelNode427);
				float lerpResult432 = lerp( 1.0 , smoothstepResult430 , _FresnelMask);
				float Fresnel_Mask433 = lerpResult432;
				float temp_output_7_0_g782 = 0.0;
				float temp_output_23_0_g782 = 1.0;
				float screenDepth381 = LinearEyeDepth(SampleCameraDepth( ScreenPosNorm.xy ),_ZBufferParams);
				float distanceDepth381 = saturate( abs( ( screenDepth381 - LinearEyeDepth( ScreenPosNorm.z,_ZBufferParams ) ) / ( _DepthFade ) ) );
				#ifdef _INVERTDEPTHFADE_ON
				float staticSwitch386 = ( 1.0 - distanceDepth381 );
				#else
				float staticSwitch386 = distanceDepth381;
				#endif
				float temp_output_20_0_g782 = staticSwitch386;
				float temp_output_4_0_g782 = _DepthFadePower;
				float smoothstepResult22_g782 = smoothstep( temp_output_7_0_g782 , temp_output_23_0_g782 , pow( temp_output_20_0_g782 , temp_output_4_0_g782 ));
				float temp_output_7_0_g783 = 0.0;
				float temp_output_23_0_g783 = 1.0;
				float screenDepth384 = LinearEyeDepth(SampleCameraDepth( ScreenPosNorm.xy ),_ZBufferParams);
				float distanceDepth384 = saturate( abs( ( screenDepth384 - LinearEyeDepth( ScreenPosNorm.z,_ZBufferParams ) ) / ( _SubtractiveDepthFade ) ) );
				float temp_output_20_0_g783 = ( 1.0 - distanceDepth384 );
				float temp_output_4_0_g783 = _SubtractiveDepthFadePower;
				float smoothstepResult22_g783 = smoothstep( temp_output_7_0_g783 , temp_output_23_0_g783 , pow( temp_output_20_0_g783 , temp_output_4_0_g783 ));
				float Depth_Fade401 = saturate( ( smoothstepResult22_g782 - smoothstepResult22_g783 ) );
				float temp_output_7_0_g785 = 0.0;
				float temp_output_23_0_g785 = 1.0;
				float eyeDepth = packedInput.ase_texcoord4.w;
				float cameraDepthFade392 = (( eyeDepth -_ProjectionParams.y - _CameraDepthFadeOffset ) / _CameraDepthFadeLength);
				float temp_output_20_0_g785 = saturate( cameraDepthFade392 );
				float temp_output_4_0_g785 = _CameraDepthFadePower;
				float smoothstepResult22_g785 = smoothstep( temp_output_7_0_g785 , temp_output_23_0_g785 , pow( temp_output_20_0_g785 , temp_output_4_0_g785 ));
				float Camera_Depth_Fade400 = smoothstepResult22_g785;
				float Intersection_Highlight_Alpha103 = ( _IntersectionHighlightColour.a * _IntersectionHighlightAlpha );
				float temp_output_227_0 = saturate( ( ( saturate( ( Noise360 - staticSwitch209 ) ) * Fresnel_Mask433 * (packedInput.ase_color).a * Depth_Fade401 * Camera_Depth_Fade400 * _Alpha ) + ( Intersection_Highlight378 * Intersection_Highlight_Alpha103 ) ) );
				#ifdef _RADIALMASKSUBTRACTIVE_ON
				float staticSwitch235 = temp_output_227_0;
				#else
				float staticSwitch235 = ( temp_output_227_0 * ( 1.0 - Radial_Mask257 ) );
				#endif
				float Alpha236 = staticSwitch235;
				

				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				surfaceDescription.Color = Colour118.rgb;
				surfaceDescription.Emission = Colour118.rgb;
				surfaceDescription.Alpha = Alpha236;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _ALPHATEST_SHADOW_ON
				surfaceDescription.AlphaClipThresholdShadow = _AlphaCutoffShadow;
				surfaceDescription.AlphaClipThresholdShadow = _UseShadowThreshold ? surfaceDescription.AlphaClipThresholdShadow : surfaceDescription.AlphaClipThreshold;
				#endif

				surfaceDescription.ShadowTint = float4( 0, 0, 0, 1 );
				float2 Distortion = float2( 0, 0 );
				float DistortionBlur = 0;

				#ifdef ASE_DEPTH_WRITE_ON
				posInput.deviceDepth = input.positionSS.z;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				surfaceDescription.VTPackedFeedback = float4(1.0f,1.0f,1.0f,1.0f);
				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

				BSDFData bsdfData = ConvertSurfaceDataToBSDFData( input.positionSS.xy, surfaceData );

				#if defined(_ENABLE_SHADOW_MATTE)
				bsdfData.color *= GetScreenSpaceAmbientOcclusion(input.positionSS.xy);
				#endif


			#ifdef DEBUG_DISPLAY
				if (_DebugLightingMode >= DEBUGLIGHTINGMODE_DIFFUSE_LIGHTING && _DebugLightingMode <= DEBUGLIGHTINGMODE_EMISSIVE_LIGHTING)
				{
					if (_DebugLightingMode != DEBUGLIGHTINGMODE_EMISSIVE_LIGHTING)
					{
						builtinData.emissiveColor = 0.0;
					}
					else
					{
						bsdfData.color = 0.0;
					}
				}
			#endif

				float4 outResult = ApplyBlendMode(bsdfData.color * GetDeExposureMultiplier() + builtinData.emissiveColor * GetCurrentExposureMultiplier(), builtinData.opacity);
				outResult = EvaluateAtmosphericScattering(posInput, V, outResult);

				#ifdef DEBUG_DISPLAY
					int bufferSize = int(_DebugViewMaterialArray[0].x);
					for (int index = 1; index <= bufferSize; index++)
					{
						int indexMaterialProperty = int(_DebugViewMaterialArray[index].x);
						if (indexMaterialProperty != 0)
						{
							float3 result = float3(1.0, 0.0, 1.0);
							bool needLinearToSRGB = false;

							GetPropertiesDataDebug(indexMaterialProperty, result, needLinearToSRGB);
							GetVaryingsDataDebug(indexMaterialProperty, input, result, needLinearToSRGB);
							GetBuiltinDataDebug(indexMaterialProperty, builtinData, posInput, result, needLinearToSRGB);
							GetSurfaceDataDebug(indexMaterialProperty, surfaceData, result, needLinearToSRGB);
							GetBSDFDataDebug(indexMaterialProperty, bsdfData, result, needLinearToSRGB);

							if (!needLinearToSRGB)
								result = SRGBToLinear(max(0, result));

							outResult = float4(result, 1.0);
						}
					}

					if (_DebugFullScreenMode == FULLSCREENDEBUGMODE_TRANSPARENCY_OVERDRAW)
					{
						float4 result = _DebugTransparencyOverdrawWeight * float4(TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_A);
						outResult = result;
					}
				#endif

				outColor = outResult;

				#if defined(_DEPTHOFFSET_ON) || defined(ASE_DEPTH_WRITE_ON)
				outputDepth = posInput.deviceDepth;
				#endif

				#ifdef UNITY_VIRTUAL_TEXTURING
				outVTFeedback = builtinData.vtPackedFeedback;
				#endif
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }

			Cull [_CullMode]
			ZWrite On
			ZClip [_ZClip]
			ColorMask 0

			HLSLPROGRAM

			#pragma shader_feature_local_fragment _ENABLE_FOG_ON_TRANSPARENT
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#define HAVE_MESH_MODIFICATION 1
			#define ASE_VERSION 19905
			#define ASE_SRP_VERSION 170200


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT

			#pragma multi_compile _ DOTS_INSTANCING_ON

			#pragma vertex Vert
			#pragma fragment Frag

			#if (defined(_TRANSPARENT_WRITES_MOTION_VEC) || defined(_TRANSPARENT_REFRACTIVE_SORT)) && defined(_SURFACE_TYPE_TRANSPARENT)
			#define _WRITE_TRANSPARENT_MOTION_VECTOR
			#endif

			#define SHADERPASS SHADERPASS_SHADOWS
            #define SUPPORT_GLOBAL_MIP_BIAS 1

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl"

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#define ASE_NEEDS_RELATIVE_WORLD_POS
			#define ASE_NEEDS_FRAG_RELATIVE_WORLD_POS
			#define ASE_NEEDS_FRAG_SCREEN_POSITION_NORMALIZED
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_TEXTURE_COORDINATES1
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES1
			#pragma shader_feature_local _SWAPUVXY1_ON
			#pragma shader_feature_local _UV2DNORMCENT1_NORMAL1 _UV2DNORMCENT1_CENTERED1
			#pragma shader_feature_local _VERTEXWAVEENABLED_ON
			#pragma shader_feature_local _VERTEXNOISEENABLED_ON
			#pragma shader_feature_local _VERTEXNOISETWISTENABLED_ON
			#pragma shader_feature_local _VERTEXNOISEDILATIONENABLED_ON
			#pragma shader_feature_local _RADIALMASKSUBTRACTIVE_ON
			#pragma shader_feature_local _NOISEDILATIONENABLED_ON
			#pragma shader_feature_local _NOISEXZTWISTENABLED_ON
			#pragma shader_feature_local _SPHERIZENOISE_ON
			#pragma shader_feature_local _WORLDSPACEUVS_ON
			#pragma shader_feature_local _OBJECTSPACEUVS_ON
			#pragma shader_feature_local _VERTEXWORLDPOS1_VERTEXPOS1 _VERTEXWORLDPOS1_WORLDPOS1
			#pragma shader_feature_local _NOISEUVPREREMAP_ON
			#pragma shader_feature_local _NOISEDISTORTIONENABLED_ON
			#pragma shader_feature_local _NOISEDISTORTIONDILATIONENABLED_ON
			#pragma shader_feature_local _VERTICALMASK2_ON
			#pragma shader_feature_local _VERTICALMASK1_ON
			#pragma shader_feature_local _RADIALMASK_ON
			#pragma shader_feature_local _UV2DCENTNORM_ON
			#pragma shader_feature_local _RADIALMASKDISTORTIONENABLED_ON
			#pragma shader_feature_local _RADIALMASKDISTORTIONDILATIONENABLED_ON
			#pragma shader_feature_local _VERTICALMASK1SUBTRACTIVE_ON
			#pragma shader_feature_local _VERTICALMASKSOBJECTSPACE_ON
			#pragma shader_feature_local _VERTICALMASK2SUBTRACTIVE_ON
			#pragma shader_feature_local _INVERTDEPTHFADE_ON


			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 positionRWS : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START( UnityPerMaterial )
			float4 _VerticalColourB;
			float4 _RadialMaskDistortionOffset;
			float4 _RadialMaskDistortionParticleAnimation;
			float4 _RadialMaskDistortionAnimation;
			float4 _VerticalColourA;
			float4 _ColourA;
			float4 _ColourB;
			float4 _NoiseDistortionOffset;
			float4 _NoiseDistortionParticleAnimation;
			float4 _IntersectionHighlightColour;
			float4 _VertexNoiseAnimation;
			float4 _VertexNoiseParticleAnimation;
			float4 _VertexNoiseOffset;
			float4 _NoiseDistortionAnimation;
			float4 _NoiseOffset;
			float4 _NoiseParticleAnimation;
			float4 _NoiseAnimation;
			float3 _VertexNoiseTiling;
			float3 _NoiseTiling;
			float3 _RadialMaskDistortionTiling;
			float3 _VertexOffsetOverCircularY;
			float3 _NoiseDistortionTiling;
			float3 _VertexOffsetOverY2;
			float3 _VertexOffsetOverY1;
			float2 _RadialMaskOffset;
			float2 _NoiseXYTwistOffset;
			float2 _SpherizeNoiseOffset;
			float2 _RadialMaskTiling;
			float _IntersectionHighlightPower;
			float _VerticalColourSaturationShift;
			float _VerticalColourValueMultiplier;
			float _VerticalColourHueShift;
			float _VerticalColourMaskRemapMin;
			float _VerticalColourMaskRemapMax;
			float _IntersectionHighlightColourHueShift;
			float _IntersectionHighlight;
			float _IntersectionHighlightRemapMax;
			float _VertexColourSaturationShift;
			float _IntersectionHighlightRemapMin;
			float _VertexColorHSVEnabledOn;
			float _VertexColourHueShift;
			float _RadialMaskRadius;
			float _IntersectionHighlightColourValueMultiplier;
			float _IntersectionHighlightColourSaturationShift;
			float _VerticalColourMaskPower;
			float _RadialMaskRadiusOverParticleLifetime;
			float _RadialMaskDistortionOctaves;
			float _RadialMaskDistortionScale;
			float _CameraDepthFadePower;
			float _CameraDepthFadeOffset;
			float _CameraDepthFadeLength;
			float _SubtractiveDepthFadePower;
			float _SubtractiveDepthFade;
			float _DepthFadePower;
			float _DepthFade;
			float _FresnelMask;
			float _FresnelMaskPower;
			float _FresnelMaskRemapMax;
			float _FresnelMaskRemapMin;
			float _VerticalMask2Power;
			float _VerticalMask2ObjectSpaceScale;
			float _VerticalMask2ObjectSpaceOffset;
			float _VerticalMask2RemapMax;
			float _VerticalMask2RemapMin;
			float _VerticalMask1Power;
			float _VerticalMask1ObjectSpaceScale;
			float _VerticalMask1ObjectSpaceOffset;
			float _VerticalMask1RemapMin;
			float _VerticalMask1RemapMax;
			float _RadialMaskPower;
			float _RadialMaskDistortion;
			float _RadialMaskDistortionPower;
			float _RadialMaskDistortionDilation;
			float _RadialMaskFeather;
			float _Tessellation;
			float _NoiseOctaves;
			float _ColourSaturationShift;
			float _VertexOffsetOverY1Power;
			float _VertexTwist;
			float _VertexUVOffsetBottom;
			float _VertexUVOffsetBottomPower;
			float _VertexUVOffsetTop;
			float _VertexUVOffsetTopPower;
			float _VertexNoise;
			float _VertexNoiseTwist;
			float _VertexNoiseDilation;
			float _VertexNoiseOctaves;
			float _VertexNoiseScale;
			float _VertexOffsetOverY2Power;
			float _ParticleRandomization;
			float _VertexWaveNoiseVerticalMaskRemapMax;
			float _VertexWaveNoiseVerticalMaskRemapMin;
			float _VertexWave;
			float _VertexWaveOffset;
			float _VertexWaveAnimation;
			float _VertexWaveScale;
			float _VertexNormalOffsetBottom;
			float _VertexNormalOffsetBottomPower;
			float _VertexNormalOffsetTop;
			float _VertexNormalOffsetTopPower;
			float _VertexNormalOffset;
			float _VertexWaveNoiseVerticalMaskPower;
			float _ColourValueMultiplier;
			float _VertexOffsetOverCircularYPower;
			float _NoiseRemapMax;
			float _ColourHueShift;
			float _ColourPower;
			float _Noise;
			float _ParticleSubtractNoiseoverLifetime1;
			float _NoisePower;
			float _NoiseDilation;
			float _Alpha;
			float _NoiseScale;
			float _NoiseDistortion;
			float _NoiseDistortionPower;
			float _NoiseDistortionDilation;
			float _NoiseRemapMin;
			float _NoiseDistortionOctaves;
			float _NoiseParallaxOffset;
			float _NoiseUVYPreRemapMax;
			float _NoiseUVYPreRemapMin;
			float _NoiseUVYPrePower;
			float _NoiseUVYPreScale;
			float _NoiseUVYPreOffset;
			float _NoiseXZTwist;
			float _NoiseXYTwist;
			float _SpherizeNoiseStrength;
			float _SpherizeNoiseRadius;
			float _UVSampleNoise;
			float _NoiseDistortionScale;
			float _IntersectionHighlightAlpha;
			float4 _EmissionColor;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			#ifdef _ENABLE_SHADOW_MATTE
			float _ShadowMatteFilter;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _DstBlend2;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _AlphaCutoff;
			float _AlphaCutoffShadow;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			float _EnableBlendModePreserveSpecularLighting;
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			float4x4 unity_CameraProjection;
			float4x4 unity_CameraInvProjection;
			float4x4 unity_WorldToCamera;
			float4x4 unity_CameraToWorld;


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Unlit/Unlit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			
			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
				float AlphaClipThresholdShadow;
			};

			void BuildSurfaceData(FragInputs fragInputs, SurfaceDescription surfaceDescription, float3 V, out SurfaceData surfaceData)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);
				#ifdef WRITE_NORMAL_BUFFER
				surfaceData.normalWS = fragInputs.tangentToWorld[2];
				#endif
			}

			void GetSurfaceAndBuiltinData(SurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                #endif

				#if defined( _ALPHATEST_SHADOW_ON )
					DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow );
				#elif defined( _ALPHATEST_ON )
					DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
                ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
                #endif

				BuildSurfaceData(fragInputs, surfaceDescription, V, surfaceData);

				ZERO_INITIALIZE (BuiltinData, builtinData);
				builtinData.opacity = surfaceDescription.Alpha;

				#if defined(DEBUG_DISPLAY)
					builtinData.renderingLayers = GetMeshRenderingLayerMask();
				#endif

				#ifdef _ALPHATEST_ON
                    builtinData.alphaClipTreshold = surfaceDescription.AlphaClipThreshold;
                #endif

                #ifdef _DEPTHOFFSET_ON
                builtinData.depthOffset = surfaceDescription.DepthOffset;
                #endif

                ApplyDebugToBuiltinData(builtinData);
			}

			PackedVaryingsMeshToPS VertexFunction( AttributesMesh inputMesh  )
			{
				PackedVaryingsMeshToPS o;
				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				float localTwistXZ_float11_g793 = ( 0.0 );
				float2 texCoord721 = inputMesh.ase_texcoord * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord718 = inputMesh.ase_texcoord.xy * float2( 2,2 ) + float2( -1,-1 );
				#if defined( _UV2DNORMCENT1_NORMAL1 )
				float2 staticSwitch714 = texCoord721;
				#elif defined( _UV2DNORMCENT1_CENTERED1 )
				float2 staticSwitch714 = texCoord718;
				#else
				float2 staticSwitch714 = texCoord721;
				#endif
				#ifdef _SWAPUVXY1_ON
				float2 staticSwitch988 = (staticSwitch714).yx;
				#else
				float2 staticSwitch988 = staticSwitch714;
				#endif
				float UV_2D_Ym723 = (staticSwitch988).y;
				float3 Vertex_Normal_Offset947 = ( ( inputMesh.normalOS * _VertexNormalOffset ) + ( pow( UV_2D_Ym723 , _VertexNormalOffsetTopPower ) * inputMesh.normalOS * _VertexNormalOffsetTop ) + ( pow( ( 1.0 - UV_2D_Ym723 ) , _VertexNormalOffsetBottomPower ) * inputMesh.normalOS * _VertexNormalOffsetBottom ) );
				float2 UV_2Dm715 = staticSwitch988;
				float mulTime868 = _TimeParameters.x * _VertexWaveAnimation;
				float temp_output_7_0_g784 = _VertexWaveNoiseVerticalMaskRemapMin;
				float temp_output_23_0_g784 = _VertexWaveNoiseVerticalMaskRemapMax;
				float temp_output_20_0_g784 = UV_2D_Ym723;
				float temp_output_4_0_g784 = _VertexWaveNoiseVerticalMaskPower;
				float smoothstepResult22_g784 = smoothstep( temp_output_7_0_g784 , temp_output_23_0_g784 , pow( temp_output_20_0_g784 , temp_output_4_0_g784 ));
				float Vertex_WaveNoise_Vertical_Mask819 = smoothstepResult22_g784;
				#ifdef _VERTEXWAVEENABLED_ON
				float3 staticSwitch930 = ( ( sin( ( ( UV_2Dm715.y * TWO_PI * _VertexWaveScale ) - ( mulTime868 + ( _VertexWaveOffset * TWO_PI ) ) ) ) * _VertexWave * Vertex_WaveNoise_Vertical_Mask819 ) * inputMesh.normalOS );
				#else
				float3 staticSwitch930 = float3( 0,0,0 );
				#endif
				float3 Vertex_Sine943 = staticSwitch930;
				float localSimplexNoise_float2_g790 = ( 0.0 );
				float Particle_Stable_Random_X771 = ( ( inputMesh.ase_texcoord.w - 0.5 ) * 100.0 * _ParticleRandomization );
				float Particle_Age_Percent770 = inputMesh.ase_texcoord.z;
				#ifdef _WORLDSPACEUVS2_ON
				float staticSwitch860 = Particle_Age_Percent770;
				#else
				float staticSwitch860 = Particle_Stable_Random_X771;
				#endif
				float3 temp_cast_0 = (staticSwitch860).xxx;
				float4 Vertex_Noise_Offset852 = ( _VertexNoiseOffset + Particle_Stable_Random_X771 + ( _VertexNoiseParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g786 = ( float4( ( temp_cast_0 * _VertexNoiseScale * _VertexNoiseTiling ) , 0.0 ) - ( Vertex_Noise_Offset852 + ( _VertexNoiseAnimation * _TimeParameters.x ) ) );
				float3 temp_output_871_0 = (temp_output_10_0_g786).xyz;
				float3 position2_g790 = temp_output_871_0;
				float temp_output_871_15 = (temp_output_10_0_g786).w;
				float angle2_g790 = temp_output_871_15;
				float octaves2_g790 = _VertexNoiseOctaves;
				float noise2_g790 = 0.0;
				float3 gradient2_g790 = float3( 0,0,0 );
				SimplexNoise_float( position2_g790 , angle2_g790 , octaves2_g790 , noise2_g790 , gradient2_g790 );
				float localSimplexNoise_Caustics_float2_g789 = ( 0.0 );
				float3 position2_g789 = temp_output_871_0;
				float angle2_g789 = temp_output_871_15;
				float octaves2_g789 = _VertexNoiseOctaves;
				float gradientStrength2_g789 = _VertexNoiseDilation;
				float noise2_g789 = 0.0;
				float3 gradient2_g789 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g789 , angle2_g789 , octaves2_g789 , gradientStrength2_g789 , noise2_g789 , gradient2_g789 );
				#ifdef _VERTEXNOISEDILATIONENABLED_ON
				float3 staticSwitch886 = gradient2_g789;
				#else
				float3 staticSwitch886 = gradient2_g790;
				#endif
				float localTwistXZ_float11_g791 = ( 0.0 );
				float3 temp_output_10_0_g791 = staticSwitch886;
				float3 position11_g791 = temp_output_10_0_g791;
				float temp_output_9_0_g791 = _VertexNoiseTwist;
				float angle11_g791 = radians( temp_output_9_0_g791 );
				float3 output11_g791 = float3( 0,0,0 );
				TwistXZ_float( position11_g791 , angle11_g791 , output11_g791 );
				float3 temp_output_898_0 = output11_g791;
				#ifdef _VERTEXNOISETWISTENABLED_ON
				float3 staticSwitch973 = temp_output_898_0;
				#else
				float3 staticSwitch973 = staticSwitch886;
				#endif
				#ifdef _VERTEXNOISEENABLED_ON
				float3 staticSwitch933 = ( temp_output_898_0 * _VertexNoise * Vertex_WaveNoise_Vertical_Mask819 );
				#else
				float3 staticSwitch933 = staticSwitch973;
				#endif
				float3 Vertex_Noise946 = staticSwitch933;
				float2 break876 = ( ( UV_2Dm715 * float2( 2,1 ) ) - float2( 1,0 ) );
				float temp_output_907_0 = ( ( break876.x * pow( break876.y , _VertexUVOffsetTopPower ) ) * ( _VertexUVOffsetTop * 0.5 ) );
				float3 appendResult922 = (float3(temp_output_907_0 , 0.0 , 0.0));
				float3 appendResult921 = (float3(0.0 , temp_output_907_0 , 0.0));
				#ifdef _SWAPUVXY1_ON
				float3 staticSwitch931 = appendResult921;
				#else
				float3 staticSwitch931 = appendResult922;
				#endif
				float3 Vertex_Offset_Top944 = staticSwitch931;
				float2 break869 = ( ( UV_2Dm715 * float2( 2,1 ) ) - float2( 1,0 ) );
				float temp_output_906_0 = ( ( break869.x * pow( ( 1.0 - break869.y ) , _VertexUVOffsetBottomPower ) ) * ( _VertexUVOffsetBottom * 0.5 ) );
				float3 appendResult924 = (float3(temp_output_906_0 , 0.0 , 0.0));
				float3 appendResult923 = (float3(0.0 , temp_output_906_0 , 0.0));
				#ifdef _SWAPUVXY1_ON
				float3 staticSwitch932 = appendResult923;
				#else
				float3 staticSwitch932 = appendResult924;
				#endif
				float3 Vertex_Offset_Bottom945 = staticSwitch932;
				float3 temp_output_10_0_g793 = ( ( Vertex_Normal_Offset947 + Vertex_Sine943 + Vertex_Noise946 + Vertex_Offset_Top944 + Vertex_Offset_Bottom945 ) + inputMesh.positionOS );
				float3 position11_g793 = temp_output_10_0_g793;
				float temp_output_9_0_g793 = -_VertexTwist;
				float angle11_g793 = radians( temp_output_9_0_g793 );
				float3 output11_g793 = float3( 0,0,0 );
				TwistXZ_float( position11_g793 , angle11_g793 , output11_g793 );
				float3 worldToObjDir948 = mul( GetWorldToObjectMatrix(), float4( _VertexOffsetOverY1, 0.0 ) ).xyz;
				float3 worldToObjDir950 = mul( GetWorldToObjectMatrix(), float4( _VertexOffsetOverY2, 0.0 ) ).xyz;
				float UV_2D_Circular_Y929 = sin( ( UV_2D_Ym723 * PI ) );
				float3 Vertex_Offset_over_Y966 = ( ( worldToObjDir948 * pow( UV_2D_Ym723 , _VertexOffsetOverY1Power ) ) + ( worldToObjDir950 * pow( UV_2D_Ym723 , _VertexOffsetOverY2Power ) ) + ( _VertexOffsetOverCircularY * pow( UV_2D_Circular_Y929 , _VertexOffsetOverCircularYPower ) ) );
				float3 Vertex_Offset971 = ( output11_g793 + Vertex_Offset_over_Y966 );
				
				float3 ase_normalWS = TransformObjectToWorldNormal( inputMesh.normalOS );
				o.ase_texcoord4.xyz = ase_normalWS;
				float3 objectToViewPos = TransformWorldToView( TransformObjectToWorld( inputMesh.positionOS ) );
				float eyeDepth = -objectToViewPos.z;
				o.ase_texcoord4.w = eyeDepth;
				
				o.ase_texcoord1 = inputMesh.ase_texcoord;
				o.ase_texcoord2 = float4(inputMesh.positionOS,1);
				o.ase_texcoord3 = inputMesh.ase_texcoord1;
				o.ase_color = inputMesh.ase_color;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = Vertex_Offset971;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS = inputMesh.normalOS;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				o.positionCS = TransformWorldToHClip(positionRWS);
				o.positionRWS = positionRWS;
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_texcoord1 = v.ase_texcoord1;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput
						#ifdef WRITE_MSAA_DEPTH
						, out float4 depthColor : SV_Target0
							#ifdef WRITE_NORMAL_BUFFER
							, out float4 outNormalBuffer : SV_Target1
							#endif
						#else
							#ifdef WRITE_NORMAL_BUFFER
							, out float4 outNormalBuffer : SV_Target0
							#endif
						#endif
						#if defined(_DEPTHOFFSET_ON) || defined(ASE_DEPTH_WRITE_ON)
						, out float outputDepth : DEPTH_OFFSET_SEMANTIC
						#endif
					
					)
			{
				UNITY_SETUP_INSTANCE_ID( packedInput );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;
				input.positionRWS = packedInput.positionRWS;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 PositionRWS = packedInput.positionRWS;
				float3 V = GetWorldSpaceNormalizeViewDir( packedInput.positionRWS );
				float4 ScreenPosNorm = float4( posInput.positionNDC, packedInput.positionCS.zw );
				float4 ClipPos = ComputeClipSpacePosition( ScreenPosNorm.xy, packedInput.positionCS.z ) * packedInput.positionCS.w;
				float4 ScreenPos = ComputeScreenPos( ClipPos, _ProjectionParams.x );

				float temp_output_7_0_g781 = _NoiseRemapMin;
				float temp_output_23_0_g781 = _NoiseRemapMax;
				float localSimplexNoise_float2_g779 = ( 0.0 );
				float2 texCoord721 = packedInput.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord718 = packedInput.ase_texcoord1.xy * float2( 2,2 ) + float2( -1,-1 );
				#if defined( _UV2DNORMCENT1_NORMAL1 )
				float2 staticSwitch714 = texCoord721;
				#elif defined( _UV2DNORMCENT1_CENTERED1 )
				float2 staticSwitch714 = texCoord718;
				#else
				float2 staticSwitch714 = texCoord721;
				#endif
				#ifdef _SWAPUVXY1_ON
				float2 staticSwitch988 = (staticSwitch714).yx;
				#else
				float2 staticSwitch988 = staticSwitch714;
				#endif
				float2 UV_2Dm715 = staticSwitch988;
				float3 ase_positionWS = GetAbsolutePositionWS( PositionRWS );
				#if defined( _VERTEXWORLDPOS1_VERTEXPOS1 )
				float3 staticSwitch734 = packedInput.ase_texcoord2.xyz;
				#elif defined( _VERTEXWORLDPOS1_WORLDPOS1 )
				float3 staticSwitch734 = ase_positionWS;
				#else
				float3 staticSwitch734 = packedInput.ase_texcoord2.xyz;
				#endif
				#ifdef _SWAPUVXY7_ON
				float3 staticSwitch735 = (staticSwitch734).yxz;
				#else
				float3 staticSwitch735 = staticSwitch734;
				#endif
				float3 UV_3D_VWP1739 = staticSwitch735;
				#ifdef _OBJECTSPACEUVS_ON
				float3 staticSwitch792 = UV_3D_VWP1739;
				#else
				float3 staticSwitch792 = float3( UV_2Dm715 ,  0.0 );
				#endif
				float UV_3D_World_VWP2682 = 0.0;
				float3 temp_cast_1 = (UV_3D_World_VWP2682).xxx;
				#ifdef _WORLDSPACEUVS_ON
				float3 staticSwitch793 = temp_cast_1;
				#else
				float3 staticSwitch793 = staticSwitch792;
				#endif
				float2 appendResult745 = (float2(ScreenPosNorm.x , ScreenPosNorm.y));
				float2 Screen_UV747 = appendResult745;
				float2 appendResult746 = (float2(_ScreenParams.x , _ScreenParams.y));
				float2 Screen_Resolution748 = appendResult746;
				float2 Screen_Position750 = ( Screen_UV747 * Screen_Resolution748 );
				float2 screenPosition441 = Screen_Position750;
				float mulTime440 = _TimeParameters.x * 60.0;
				float time441 = mulTime440;
				float3 localHash33441 = Hash33( screenPosition441 , time441 );
				float3 Sample_Noise445 = ( (localHash33441*2.0 + -1.0) * _UVSampleNoise );
				float3 Noise_Base_UV795 = ( staticSwitch793 + Sample_Noise445 );
				float localSpherize_float5_g755 = ( 0.0 );
				float2 uv5_g755 = (Noise_Base_UV795).xy;
				float2 center5_g755 = ( _SpherizeNoiseOffset + float2( 0.5,0.5 ) );
				float radius5_g755 = _SpherizeNoiseRadius;
				float strength5_g755 = _SpherizeNoiseStrength;
				float2 output5_g755 = float2( 0,0 );
				Spherize_float( uv5_g755 , center5_g755 , radius5_g755 , strength5_g755 , output5_g755 );
				float3 appendResult506 = (float3(output5_g755 , (Noise_Base_UV795).z));
				#ifdef _SPHERIZENOISE_ON
				float3 staticSwitch505 = appendResult506;
				#else
				float3 staticSwitch505 = Noise_Base_UV795;
				#endif
				float2 center45_g765 = ( _NoiseXYTwistOffset + float2( 0.5,0.5 ) );
				float2 delta6_g765 = ( staticSwitch505.xy - center45_g765 );
				float angle10_g765 = ( length( delta6_g765 ) * radians( _NoiseXYTwist ) );
				float x23_g765 = ( ( cos( angle10_g765 ) * delta6_g765.x ) - ( sin( angle10_g765 ) * delta6_g765.y ) );
				float2 break40_g765 = center45_g765;
				float2 break41_g765 = float2( 0,0 );
				float y35_g765 = ( ( sin( angle10_g765 ) * delta6_g765.x ) + ( cos( angle10_g765 ) * delta6_g765.y ) );
				float2 appendResult44_g765 = (float2(( x23_g765 + break40_g765.x + break41_g765.x ) , ( break40_g765.y + break41_g765.y + y35_g765 )));
				float2 temp_output_499_0 = appendResult44_g765;
				float localTwistXZ_float11_g763 = ( 0.0 );
				float3 temp_output_10_0_g763 = float3( temp_output_499_0 ,  0.0 );
				float3 position11_g763 = temp_output_10_0_g763;
				float temp_output_9_0_g763 = _NoiseXZTwist;
				float angle11_g763 = radians( temp_output_9_0_g763 );
				float3 output11_g763 = float3( 0,0,0 );
				TwistXZ_float( position11_g763 , angle11_g763 , output11_g763 );
				#ifdef _NOISEXZTWISTENABLED_ON
				float3 staticSwitch498 = output11_g763;
				#else
				float3 staticSwitch498 = float3( temp_output_499_0 ,  0.0 );
				#endif
				float3 break469 = staticSwitch498;
				float temp_output_478_0 = ( ( break469.y - _NoiseUVYPreOffset ) * _NoiseUVYPreScale );
				float temp_output_7_0_g770 = abs( temp_output_478_0 );
				float temp_output_7_0_g771 = abs( temp_output_478_0 );
				float smoothstepResult16_g771 = smoothstep( _NoiseUVYPreRemapMin , _NoiseUVYPreRemapMax , pow( temp_output_7_0_g771 , _NoiseUVYPrePower ));
				#ifdef _NOISEUVPREREMAP_ON
				float staticSwitch485 = ( smoothstepResult16_g771 * sign( temp_output_478_0 ) );
				#else
				float staticSwitch485 = ( pow( temp_output_7_0_g770 , _NoiseUVYPrePower ) * sign( temp_output_478_0 ) );
				#endif
				float3 appendResult486 = (float3(break469.x , staticSwitch485 , 0.0));
				float3 temp_output_787_0 = ( -V * _NoiseParallaxOffset );
				#ifdef _SWAPUVXY3_ON
				float3 staticSwitch789 = (temp_output_787_0).yxz;
				#else
				float3 staticSwitch789 = temp_output_787_0;
				#endif
				float3 Parallax_Offset790 = staticSwitch789;
				float localSimplexNoise_float2_g761 = ( 0.0 );
				float Particle_Stable_Random_X771 = ( ( packedInput.ase_texcoord1.w - 0.5 ) * 100.0 * _ParticleRandomization );
				float Particle_Age_Percent770 = packedInput.ase_texcoord1.z;
				float4 Distortion_Noise_Offset813 = ( _NoiseDistortionOffset + Particle_Stable_Random_X771 + ( _NoiseDistortionParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g758 = ( float4( ( ( Noise_Base_UV795 + Parallax_Offset790 ) * _NoiseDistortionScale * _NoiseDistortionTiling ) , 0.0 ) - ( Distortion_Noise_Offset813 + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 temp_output_322_0 = (temp_output_10_0_g758).xyz;
				float3 position2_g761 = temp_output_322_0;
				float temp_output_322_15 = (temp_output_10_0_g758).w;
				float angle2_g761 = temp_output_322_15;
				float octaves2_g761 = _NoiseDistortionOctaves;
				float noise2_g761 = 0.0;
				float3 gradient2_g761 = float3( 0,0,0 );
				SimplexNoise_float( position2_g761 , angle2_g761 , octaves2_g761 , noise2_g761 , gradient2_g761 );
				float localSimplexNoise_Caustics_float2_g760 = ( 0.0 );
				float3 position2_g760 = temp_output_322_0;
				float angle2_g760 = temp_output_322_15;
				float octaves2_g760 = _NoiseDistortionOctaves;
				float gradientStrength2_g760 = _NoiseDistortionDilation;
				float noise2_g760 = 0.0;
				float3 gradient2_g760 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g760 , angle2_g760 , octaves2_g760 , gradientStrength2_g760 , noise2_g760 , gradient2_g760 );
				#ifdef _NOISEDISTORTIONDILATIONENABLED_ON
				float3 staticSwitch329 = gradient2_g760;
				#else
				float3 staticSwitch329 = gradient2_g761;
				#endif
				float3 temp_output_7_0_g766 = abs( staticSwitch329 );
				float3 temp_cast_6 = (_NoiseDistortionPower).xxx;
				#ifdef _NOISEDISTORTIONENABLED_ON
				float3 staticSwitch336 = ( ( pow( temp_output_7_0_g766 , temp_cast_6 ) * sign( staticSwitch329 ) ) * _NoiseDistortion );
				#else
				float3 staticSwitch336 = float3( 0,0,0 );
				#endif
				float3 Noise_Distortion337 = staticSwitch336;
				float3 Noise_UV494 = ( appendResult486 + Parallax_Offset790 + Noise_Distortion337 );
				float4 Noise_Offset786 = ( _NoiseOffset + Particle_Stable_Random_X771 + ( _NoiseParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g775 = ( float4( ( Noise_UV494 * _NoiseScale * _NoiseTiling ) , 0.0 ) - ( Noise_Offset786 + ( _NoiseAnimation * _TimeParameters.x ) ) );
				float3 temp_output_344_0 = (temp_output_10_0_g775).xyz;
				float3 position2_g779 = temp_output_344_0;
				float temp_output_344_15 = (temp_output_10_0_g775).w;
				float angle2_g779 = temp_output_344_15;
				float octaves2_g779 = _NoiseOctaves;
				float noise2_g779 = 0.0;
				float3 gradient2_g779 = float3( 0,0,0 );
				SimplexNoise_float( position2_g779 , angle2_g779 , octaves2_g779 , noise2_g779 , gradient2_g779 );
				float localSimplexNoise_Caustics_float2_g778 = ( 0.0 );
				float3 position2_g778 = temp_output_344_0;
				float angle2_g778 = temp_output_344_15;
				float octaves2_g778 = _NoiseOctaves;
				float gradientStrength2_g778 = _NoiseDilation;
				float noise2_g778 = 0.0;
				float3 gradient2_g778 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g778 , angle2_g778 , octaves2_g778 , gradientStrength2_g778 , noise2_g778 , gradient2_g778 );
				#ifdef _NOISEDILATIONENABLED_ON
				float staticSwitch349 = noise2_g778;
				#else
				float staticSwitch349 = noise2_g779;
				#endif
				float temp_output_20_0_g781 = staticSwitch349;
				float temp_output_4_0_g781 = _NoisePower;
				float smoothstepResult22_g781 = smoothstep( temp_output_7_0_g781 , temp_output_23_0_g781 , pow( temp_output_20_0_g781 , temp_output_4_0_g781 ));
				float Particle_Subtract_Noise_over_Lifetime779 = ( packedInput.ase_texcoord3.y * _ParticleSubtractNoiseoverLifetime1 );
				float temp_output_356_0 = ( smoothstepResult22_g781 - Particle_Subtract_Noise_over_Lifetime779 );
				float lerpResult359 = lerp( 1.0 , temp_output_356_0 , _Noise);
				float Noise360 = lerpResult359;
				float Particle_Mask_Radius_over_Lifetime630 = packedInput.ase_texcoord3.x;
				float lerpResult245 = lerp( 1.0 , Particle_Mask_Radius_over_Lifetime630 , _RadialMaskRadiusOverParticleLifetime);
				float temp_output_6_0_g772 = ( 1.0 - ( _RadialMaskRadius * lerpResult245 ) );
				float lerpResult5_g772 = lerp( temp_output_6_0_g772 , 1.0 , _RadialMaskFeather);
				float2 texCoord991 = packedInput.ase_texcoord1.xy * float2( 2,2 ) + float2( -1,-1 );
				float2 texCoord997 = packedInput.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				#ifdef _UV2DCENTNORM_ON
				float2 staticSwitch996 = texCoord997;
				#else
				float2 staticSwitch996 = texCoord991;
				#endif
				#ifdef _SWAPUVXY1_ON
				float2 staticSwitch990 = (staticSwitch996).yx;
				#else
				float2 staticSwitch990 = staticSwitch996;
				#endif
				float2 UV_2D_Centeredm992 = staticSwitch990;
				float localSimplexNoise_float2_g757 = ( 0.0 );
				float4 Mask_Distortion_Noise_Offset805 = ( _RadialMaskDistortionOffset + Particle_Stable_Random_X771 + ( _RadialMaskDistortionParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g725 = ( float4( ( Noise_Base_UV795 * _RadialMaskDistortionScale * _RadialMaskDistortionTiling ) , 0.0 ) - ( Mask_Distortion_Noise_Offset805 + ( _RadialMaskDistortionAnimation * _TimeParameters.x ) ) );
				float3 temp_output_305_0 = (temp_output_10_0_g725).xyz;
				float3 position2_g757 = temp_output_305_0;
				float temp_output_305_15 = (temp_output_10_0_g725).w;
				float angle2_g757 = temp_output_305_15;
				float octaves2_g757 = _RadialMaskDistortionOctaves;
				float noise2_g757 = 0.0;
				float3 gradient2_g757 = float3( 0,0,0 );
				SimplexNoise_float( position2_g757 , angle2_g757 , octaves2_g757 , noise2_g757 , gradient2_g757 );
				float localSimplexNoise_Caustics_float2_g756 = ( 0.0 );
				float3 position2_g756 = temp_output_305_0;
				float angle2_g756 = temp_output_305_15;
				float octaves2_g756 = _RadialMaskDistortionOctaves;
				float gradientStrength2_g756 = _RadialMaskDistortionDilation;
				float noise2_g756 = 0.0;
				float3 gradient2_g756 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g756 , angle2_g756 , octaves2_g756 , gradientStrength2_g756 , noise2_g756 , gradient2_g756 );
				#ifdef _RADIALMASKDISTORTIONDILATIONENABLED_ON
				float3 staticSwitch310 = gradient2_g756;
				#else
				float3 staticSwitch310 = gradient2_g757;
				#endif
				float3 temp_output_7_0_g762 = abs( staticSwitch310 );
				float3 temp_cast_9 = (_RadialMaskDistortionPower).xxx;
				#ifdef _RADIALMASKDISTORTIONENABLED_ON
				float3 staticSwitch325 = ( ( pow( temp_output_7_0_g762 , temp_cast_9 ) * sign( staticSwitch310 ) ) * _RadialMaskDistortion );
				#else
				float3 staticSwitch325 = float3( 0,0,0 );
				#endif
				float3 Mask_Distortion328 = staticSwitch325;
				float temp_output_7_0_g772 = ( 1.0 - length( ( ( ( UV_2D_Centeredm992 + (Mask_Distortion328).xy ) - _RadialMaskOffset ) * _RadialMaskTiling ) ) );
				float smoothstepResult4_g772 = smoothstep( temp_output_6_0_g772 , lerpResult5_g772 , temp_output_7_0_g772);
				#ifdef _RADIALMASK_ON
				float staticSwitch256 = ( 1.0 - pow( smoothstepResult4_g772 , _RadialMaskPower ) );
				#else
				float staticSwitch256 = 0.0;
				#endif
				float Radial_Mask257 = staticSwitch256;
				#ifdef _RADIALMASKSUBTRACTIVE_ON
				float staticSwitch204 = Radial_Mask257;
				#else
				float staticSwitch204 = 0.0;
				#endif
				float temp_output_7_0_g777 = _VerticalMask1RemapMax;
				float temp_output_23_0_g777 = _VerticalMask1RemapMin;
				float UV_2D_Ym723 = (staticSwitch988).y;
				float UV_3D_Y_VWP1760 = (staticSwitch735).y;
				#ifdef _VERTICALMASKSOBJECTSPACE_ON
				float staticSwitch270 = ( ( UV_3D_Y_VWP1760 - _VerticalMask1ObjectSpaceOffset ) / _VerticalMask1ObjectSpaceScale );
				#else
				float staticSwitch270 = UV_2D_Ym723;
				#endif
				float temp_output_20_0_g777 = staticSwitch270;
				float smoothstepResult25_g777 = smoothstep( temp_output_7_0_g777 , temp_output_23_0_g777 , temp_output_20_0_g777);
				float temp_output_4_0_g777 = _VerticalMask1Power;
				float temp_output_278_0 = pow( smoothstepResult25_g777 , temp_output_4_0_g777 );
				#ifdef _VERTICALMASK1SUBTRACTIVE_ON
				float staticSwitch282 = ( 1.0 - temp_output_278_0 );
				#else
				float staticSwitch282 = temp_output_278_0;
				#endif
				float Vertical_Mask_1287 = staticSwitch282;
				#ifdef _VERTICALMASK1SUBTRACTIVE_ON
				float staticSwitch206 = ( staticSwitch204 + Vertical_Mask_1287 );
				#else
				float staticSwitch206 = staticSwitch204;
				#endif
				#ifdef _VERTICALMASK1_ON
				float staticSwitch207 = staticSwitch206;
				#else
				float staticSwitch207 = staticSwitch204;
				#endif
				float temp_output_7_0_g780 = _VerticalMask2RemapMin;
				float temp_output_23_0_g780 = _VerticalMask2RemapMax;
				#ifdef _VERTICALMASKSOBJECTSPACE_ON
				float staticSwitch286 = ( ( UV_3D_Y_VWP1760 - _VerticalMask2ObjectSpaceOffset ) / _VerticalMask2ObjectSpaceScale );
				#else
				float staticSwitch286 = UV_2D_Ym723;
				#endif
				float temp_output_20_0_g780 = staticSwitch286;
				float smoothstepResult25_g780 = smoothstep( temp_output_7_0_g780 , temp_output_23_0_g780 , temp_output_20_0_g780);
				float temp_output_4_0_g780 = _VerticalMask2Power;
				float temp_output_288_0 = pow( smoothstepResult25_g780 , temp_output_4_0_g780 );
				#ifdef _VERTICALMASK2SUBTRACTIVE_ON
				float staticSwitch290 = ( 1.0 - temp_output_288_0 );
				#else
				float staticSwitch290 = temp_output_288_0;
				#endif
				float Vertical_Mask_2291 = staticSwitch290;
				#ifdef _VERTICALMASK2SUBTRACTIVE_ON
				float staticSwitch208 = ( staticSwitch207 + Vertical_Mask_2291 );
				#else
				float staticSwitch208 = staticSwitch207;
				#endif
				#ifdef _VERTICALMASK2_ON
				float staticSwitch209 = staticSwitch208;
				#else
				float staticSwitch209 = staticSwitch207;
				#endif
				float3 ase_normalWS = packedInput.ase_texcoord4.xyz;
				float fresnelNdotV427 = dot( ase_normalWS, V );
				float fresnelNode427 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV427, _FresnelMaskPower ) );
				float smoothstepResult430 = smoothstep( _FresnelMaskRemapMin , _FresnelMaskRemapMax , fresnelNode427);
				float lerpResult432 = lerp( 1.0 , smoothstepResult430 , _FresnelMask);
				float Fresnel_Mask433 = lerpResult432;
				float temp_output_7_0_g782 = 0.0;
				float temp_output_23_0_g782 = 1.0;
				float screenDepth381 = LinearEyeDepth(SampleCameraDepth( ScreenPosNorm.xy ),_ZBufferParams);
				float distanceDepth381 = saturate( abs( ( screenDepth381 - LinearEyeDepth( ScreenPosNorm.z,_ZBufferParams ) ) / ( _DepthFade ) ) );
				#ifdef _INVERTDEPTHFADE_ON
				float staticSwitch386 = ( 1.0 - distanceDepth381 );
				#else
				float staticSwitch386 = distanceDepth381;
				#endif
				float temp_output_20_0_g782 = staticSwitch386;
				float temp_output_4_0_g782 = _DepthFadePower;
				float smoothstepResult22_g782 = smoothstep( temp_output_7_0_g782 , temp_output_23_0_g782 , pow( temp_output_20_0_g782 , temp_output_4_0_g782 ));
				float temp_output_7_0_g783 = 0.0;
				float temp_output_23_0_g783 = 1.0;
				float screenDepth384 = LinearEyeDepth(SampleCameraDepth( ScreenPosNorm.xy ),_ZBufferParams);
				float distanceDepth384 = saturate( abs( ( screenDepth384 - LinearEyeDepth( ScreenPosNorm.z,_ZBufferParams ) ) / ( _SubtractiveDepthFade ) ) );
				float temp_output_20_0_g783 = ( 1.0 - distanceDepth384 );
				float temp_output_4_0_g783 = _SubtractiveDepthFadePower;
				float smoothstepResult22_g783 = smoothstep( temp_output_7_0_g783 , temp_output_23_0_g783 , pow( temp_output_20_0_g783 , temp_output_4_0_g783 ));
				float Depth_Fade401 = saturate( ( smoothstepResult22_g782 - smoothstepResult22_g783 ) );
				float temp_output_7_0_g785 = 0.0;
				float temp_output_23_0_g785 = 1.0;
				float eyeDepth = packedInput.ase_texcoord4.w;
				float cameraDepthFade392 = (( eyeDepth -_ProjectionParams.y - _CameraDepthFadeOffset ) / _CameraDepthFadeLength);
				float temp_output_20_0_g785 = saturate( cameraDepthFade392 );
				float temp_output_4_0_g785 = _CameraDepthFadePower;
				float smoothstepResult22_g785 = smoothstep( temp_output_7_0_g785 , temp_output_23_0_g785 , pow( temp_output_20_0_g785 , temp_output_4_0_g785 ));
				float Camera_Depth_Fade400 = smoothstepResult22_g785;
				float temp_output_7_0_g788 = _IntersectionHighlightRemapMin;
				float temp_output_23_0_g788 = _IntersectionHighlightRemapMax;
				float screenDepth372 = LinearEyeDepth(SampleCameraDepth( ScreenPosNorm.xy ),_ZBufferParams);
				float distanceDepth372 = saturate( abs( ( screenDepth372 - LinearEyeDepth( ScreenPosNorm.z,_ZBufferParams ) ) / ( _IntersectionHighlight ) ) );
				float temp_output_20_0_g788 = ( 1.0 - distanceDepth372 );
				float temp_output_4_0_g788 = _IntersectionHighlightPower;
				float smoothstepResult22_g788 = smoothstep( temp_output_7_0_g788 , temp_output_23_0_g788 , pow( temp_output_20_0_g788 , temp_output_4_0_g788 ));
				float Intersection_Highlight378 = smoothstepResult22_g788;
				float Intersection_Highlight_Alpha103 = ( _IntersectionHighlightColour.a * _IntersectionHighlightAlpha );
				float temp_output_227_0 = saturate( ( ( saturate( ( Noise360 - staticSwitch209 ) ) * Fresnel_Mask433 * (packedInput.ase_color).a * Depth_Fade401 * Camera_Depth_Fade400 * _Alpha ) + ( Intersection_Highlight378 * Intersection_Highlight_Alpha103 ) ) );
				#ifdef _RADIALMASKSUBTRACTIVE_ON
				float staticSwitch235 = temp_output_227_0;
				#else
				float staticSwitch235 = ( temp_output_227_0 * ( 1.0 - Radial_Mask257 ) );
				#endif
				float Alpha236 = staticSwitch235;
				

				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				surfaceDescription.Alpha = Alpha236;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _ALPHATEST_SHADOW_ON
				surfaceDescription.AlphaClipThresholdShadow = _AlphaCutoffShadow;
				surfaceDescription.AlphaClipThresholdShadow = _UseShadowThreshold ? surfaceDescription.AlphaClipThresholdShadow : surfaceDescription.AlphaClipThreshold;
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
				posInput.deviceDepth = input.positionSS.z;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription,input, V, posInput, surfaceData, builtinData);

				#if defined(_DEPTHOFFSET_ON) || defined(ASE_DEPTH_WRITE_ON)
				outputDepth = posInput.deviceDepth;
				float bias = max(abs(ddx(posInput.deviceDepth)), abs(ddy(posInput.deviceDepth))) * _SlopeScaleDepthBias;
				outputDepth += bias;
				#endif

				#ifdef WRITE_MSAA_DEPTH
					depthColor = packedInput.vmesh.positionCS.z;
					depthColor.a = SharpenAlpha(builtinData.opacity, builtinData.alphaClipTreshold);
				#endif

				#if defined(WRITE_NORMAL_BUFFER)
				EncodeIntoNormalBuffer(ConvertSurfaceDataToNormalData(surfaceData), outNormalBuffer);
				#endif

				#if (defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)) || defined(WRITE_RENDERING_LAYER)
					DecalPrepassData decalPrepassData;
					#ifdef _DISABLE_DECALS
					ZERO_INITIALIZE(DecalPrepassData, decalPrepassData);
					#else
					decalPrepassData.geomNormalWS = surfaceData.geomNormalWS;
					#endif
					decalPrepassData.renderingLayerMask = GetMeshRenderingLayerMask();
					EncodeIntoDecalPrepassBuffer(decalPrepassData, outDecalBuffer);
				#endif
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "META"
			Tags { "LightMode"="Meta" }

			Cull Off

			HLSLPROGRAM

			#pragma shader_feature_local_fragment _ENABLE_FOG_ON_TRANSPARENT
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#define HAVE_MESH_MODIFICATION 1
			#define ASE_VERSION 19905
			#define ASE_SRP_VERSION 170200


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT

			#pragma shader_feature EDITOR_VISUALIZATION

			#pragma multi_compile _ DOTS_INSTANCING_ON

			#pragma vertex Vert
			#pragma fragment Frag

			#define SHADERPASS SHADERPASS_LIGHT_TRANSPORT
            #define SCENEPICKINGPASS
            #define SUPPORT_GLOBAL_MIP_BIAS 1

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/PickingSpaceTransforms.hlsl"

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl"

			CBUFFER_START( UnityPerMaterial )
			float4 _VerticalColourB;
			float4 _RadialMaskDistortionOffset;
			float4 _RadialMaskDistortionParticleAnimation;
			float4 _RadialMaskDistortionAnimation;
			float4 _VerticalColourA;
			float4 _ColourA;
			float4 _ColourB;
			float4 _NoiseDistortionOffset;
			float4 _NoiseDistortionParticleAnimation;
			float4 _IntersectionHighlightColour;
			float4 _VertexNoiseAnimation;
			float4 _VertexNoiseParticleAnimation;
			float4 _VertexNoiseOffset;
			float4 _NoiseDistortionAnimation;
			float4 _NoiseOffset;
			float4 _NoiseParticleAnimation;
			float4 _NoiseAnimation;
			float3 _VertexNoiseTiling;
			float3 _NoiseTiling;
			float3 _RadialMaskDistortionTiling;
			float3 _VertexOffsetOverCircularY;
			float3 _NoiseDistortionTiling;
			float3 _VertexOffsetOverY2;
			float3 _VertexOffsetOverY1;
			float2 _RadialMaskOffset;
			float2 _NoiseXYTwistOffset;
			float2 _SpherizeNoiseOffset;
			float2 _RadialMaskTiling;
			float _IntersectionHighlightPower;
			float _VerticalColourSaturationShift;
			float _VerticalColourValueMultiplier;
			float _VerticalColourHueShift;
			float _VerticalColourMaskRemapMin;
			float _VerticalColourMaskRemapMax;
			float _IntersectionHighlightColourHueShift;
			float _IntersectionHighlight;
			float _IntersectionHighlightRemapMax;
			float _VertexColourSaturationShift;
			float _IntersectionHighlightRemapMin;
			float _VertexColorHSVEnabledOn;
			float _VertexColourHueShift;
			float _RadialMaskRadius;
			float _IntersectionHighlightColourValueMultiplier;
			float _IntersectionHighlightColourSaturationShift;
			float _VerticalColourMaskPower;
			float _RadialMaskRadiusOverParticleLifetime;
			float _RadialMaskDistortionOctaves;
			float _RadialMaskDistortionScale;
			float _CameraDepthFadePower;
			float _CameraDepthFadeOffset;
			float _CameraDepthFadeLength;
			float _SubtractiveDepthFadePower;
			float _SubtractiveDepthFade;
			float _DepthFadePower;
			float _DepthFade;
			float _FresnelMask;
			float _FresnelMaskPower;
			float _FresnelMaskRemapMax;
			float _FresnelMaskRemapMin;
			float _VerticalMask2Power;
			float _VerticalMask2ObjectSpaceScale;
			float _VerticalMask2ObjectSpaceOffset;
			float _VerticalMask2RemapMax;
			float _VerticalMask2RemapMin;
			float _VerticalMask1Power;
			float _VerticalMask1ObjectSpaceScale;
			float _VerticalMask1ObjectSpaceOffset;
			float _VerticalMask1RemapMin;
			float _VerticalMask1RemapMax;
			float _RadialMaskPower;
			float _RadialMaskDistortion;
			float _RadialMaskDistortionPower;
			float _RadialMaskDistortionDilation;
			float _RadialMaskFeather;
			float _Tessellation;
			float _NoiseOctaves;
			float _ColourSaturationShift;
			float _VertexOffsetOverY1Power;
			float _VertexTwist;
			float _VertexUVOffsetBottom;
			float _VertexUVOffsetBottomPower;
			float _VertexUVOffsetTop;
			float _VertexUVOffsetTopPower;
			float _VertexNoise;
			float _VertexNoiseTwist;
			float _VertexNoiseDilation;
			float _VertexNoiseOctaves;
			float _VertexNoiseScale;
			float _VertexOffsetOverY2Power;
			float _ParticleRandomization;
			float _VertexWaveNoiseVerticalMaskRemapMax;
			float _VertexWaveNoiseVerticalMaskRemapMin;
			float _VertexWave;
			float _VertexWaveOffset;
			float _VertexWaveAnimation;
			float _VertexWaveScale;
			float _VertexNormalOffsetBottom;
			float _VertexNormalOffsetBottomPower;
			float _VertexNormalOffsetTop;
			float _VertexNormalOffsetTopPower;
			float _VertexNormalOffset;
			float _VertexWaveNoiseVerticalMaskPower;
			float _ColourValueMultiplier;
			float _VertexOffsetOverCircularYPower;
			float _NoiseRemapMax;
			float _ColourHueShift;
			float _ColourPower;
			float _Noise;
			float _ParticleSubtractNoiseoverLifetime1;
			float _NoisePower;
			float _NoiseDilation;
			float _Alpha;
			float _NoiseScale;
			float _NoiseDistortion;
			float _NoiseDistortionPower;
			float _NoiseDistortionDilation;
			float _NoiseRemapMin;
			float _NoiseDistortionOctaves;
			float _NoiseParallaxOffset;
			float _NoiseUVYPreRemapMax;
			float _NoiseUVYPreRemapMin;
			float _NoiseUVYPrePower;
			float _NoiseUVYPreScale;
			float _NoiseUVYPreOffset;
			float _NoiseXZTwist;
			float _NoiseXYTwist;
			float _SpherizeNoiseStrength;
			float _SpherizeNoiseRadius;
			float _UVSampleNoise;
			float _NoiseDistortionScale;
			float _IntersectionHighlightAlpha;
			float4 _EmissionColor;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			#ifdef _ENABLE_SHADOW_MATTE
			float _ShadowMatteFilter;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _DstBlend2;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _AlphaCutoff;
			float _AlphaCutoffShadow;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			float _EnableBlendModePreserveSpecularLighting;
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			float4x4 unity_CameraProjection;
			float4x4 unity_CameraInvProjection;
			float4x4 unity_WorldToCamera;
			float4x4 unity_CameraToWorld;


            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Unlit/Unlit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#define ASE_NEEDS_TEXTURE_COORDINATES1
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES1
			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local _SWAPUVXY1_ON
			#pragma shader_feature_local _UV2DNORMCENT1_NORMAL1 _UV2DNORMCENT1_CENTERED1
			#pragma shader_feature_local _VERTEXWAVEENABLED_ON
			#pragma shader_feature_local _VERTEXNOISEENABLED_ON
			#pragma shader_feature_local _VERTEXNOISETWISTENABLED_ON
			#pragma shader_feature_local _VERTEXNOISEDILATIONENABLED_ON
			#pragma shader_feature_local _VERTICALCOLOUR_ON
			#pragma shader_feature_local _NOISEDILATIONENABLED_ON
			#pragma shader_feature_local _NOISEXZTWISTENABLED_ON
			#pragma shader_feature_local _SPHERIZENOISE_ON
			#pragma shader_feature_local _WORLDSPACEUVS_ON
			#pragma shader_feature_local _OBJECTSPACEUVS_ON
			#pragma shader_feature_local _VERTEXWORLDPOS1_VERTEXPOS1 _VERTEXWORLDPOS1_WORLDPOS1
			#pragma shader_feature_local _NOISEUVPREREMAP_ON
			#pragma shader_feature_local _NOISEDISTORTIONENABLED_ON
			#pragma shader_feature_local _NOISEDISTORTIONDILATIONENABLED_ON
			#pragma shader_feature_local _RADIALMASKSUBTRACTIVE_ON
			#pragma shader_feature_local _VERTICALMASK2_ON
			#pragma shader_feature_local _VERTICALMASK1_ON
			#pragma shader_feature_local _RADIALMASK_ON
			#pragma shader_feature_local _UV2DCENTNORM_ON
			#pragma shader_feature_local _RADIALMASKDISTORTIONENABLED_ON
			#pragma shader_feature_local _RADIALMASKDISTORTIONDILATIONENABLED_ON
			#pragma shader_feature_local _VERTICALMASK1SUBTRACTIVE_ON
			#pragma shader_feature_local _VERTICALMASKSOBJECTSPACE_ON
			#pragma shader_feature_local _VERTICALMASK2SUBTRACTIVE_ON
			#pragma shader_feature_local _INVERTDEPTHFADE_ON


			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 uv0 : TEXCOORD0;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 uv3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				#ifdef EDITOR_VISUALIZATION
				float2 VizUV : TEXCOORD0;
				float4 LightCoord : TEXCOORD1;
				#endif
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_color : COLOR;
				float4 ase_texcoord7 : TEXCOORD7;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};


			float3 HSVToRGB( float3 c )
			{
				float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
				float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
				return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
			}
			
			float3 RGBToHSV(float3 c)
			{
				float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
				float4 p = lerp( float4( c.bg, K.wz ), float4( c.gb, K.xy ), step( c.b, c.g ) );
				float4 q = lerp( float4( p.xyw, c.r ), float4( c.r, p.yzx ), step( p.x, c.r ) );
				float d = q.x - min( q.w, q.y );
				float e = 1.0e-10;
				return float3( abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
			}

			struct SurfaceDescription
			{
				float3 Color;
				float3 Emission;
				float Alpha;
				float AlphaClipThreshold;
			};

			void BuildSurfaceData( FragInputs fragInputs, SurfaceDescription surfaceDescription, float3 V, out SurfaceData surfaceData )
			{
				ZERO_INITIALIZE( SurfaceData, surfaceData );
				surfaceData.color = surfaceDescription.Color;

				#ifdef WRITE_NORMAL_BUFFER
				surfaceData.normalWS = fragInputs.tangentToWorld[2];
				#endif
			}

			void GetSurfaceAndBuiltinData( SurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData )
			{
				#ifdef LOD_FADE_CROSSFADE
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                #endif

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
                ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
                #endif

				BuildSurfaceData( fragInputs, surfaceDescription, V, surfaceData );
				ZERO_INITIALIZE( BuiltinData, builtinData );
				builtinData.opacity = surfaceDescription.Alpha;
				#if defined(DEBUG_DISPLAY)
					builtinData.renderingLayers = GetMeshRenderingLayerMask();
				#endif

				#ifdef _ALPHATEST_ON
                    builtinData.alphaClipTreshold = surfaceDescription.AlphaClipThreshold;
                #endif

				builtinData.emissiveColor = surfaceDescription.Emission;

				#ifdef _DEPTHOFFSET_ON
                builtinData.depthOffset = surfaceDescription.DepthOffset;
                #endif


                ApplyDebugToBuiltinData(builtinData);
			}

			#define SCENEPICKINGPASS
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/PickingSpaceTransforms.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/MetaPass.hlsl"

			PackedVaryingsMeshToPS VertexFunction( AttributesMesh inputMesh  )
			{
				PackedVaryingsMeshToPS o;
				UNITY_SETUP_INSTANCE_ID( inputMesh );
				UNITY_TRANSFER_INSTANCE_ID( inputMesh, o );

				float localTwistXZ_float11_g793 = ( 0.0 );
				float2 texCoord721 = inputMesh.uv0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord718 = inputMesh.uv0.xy * float2( 2,2 ) + float2( -1,-1 );
				#if defined( _UV2DNORMCENT1_NORMAL1 )
				float2 staticSwitch714 = texCoord721;
				#elif defined( _UV2DNORMCENT1_CENTERED1 )
				float2 staticSwitch714 = texCoord718;
				#else
				float2 staticSwitch714 = texCoord721;
				#endif
				#ifdef _SWAPUVXY1_ON
				float2 staticSwitch988 = (staticSwitch714).yx;
				#else
				float2 staticSwitch988 = staticSwitch714;
				#endif
				float UV_2D_Ym723 = (staticSwitch988).y;
				float3 Vertex_Normal_Offset947 = ( ( inputMesh.normalOS * _VertexNormalOffset ) + ( pow( UV_2D_Ym723 , _VertexNormalOffsetTopPower ) * inputMesh.normalOS * _VertexNormalOffsetTop ) + ( pow( ( 1.0 - UV_2D_Ym723 ) , _VertexNormalOffsetBottomPower ) * inputMesh.normalOS * _VertexNormalOffsetBottom ) );
				float2 UV_2Dm715 = staticSwitch988;
				float mulTime868 = _TimeParameters.x * _VertexWaveAnimation;
				float temp_output_7_0_g784 = _VertexWaveNoiseVerticalMaskRemapMin;
				float temp_output_23_0_g784 = _VertexWaveNoiseVerticalMaskRemapMax;
				float temp_output_20_0_g784 = UV_2D_Ym723;
				float temp_output_4_0_g784 = _VertexWaveNoiseVerticalMaskPower;
				float smoothstepResult22_g784 = smoothstep( temp_output_7_0_g784 , temp_output_23_0_g784 , pow( temp_output_20_0_g784 , temp_output_4_0_g784 ));
				float Vertex_WaveNoise_Vertical_Mask819 = smoothstepResult22_g784;
				#ifdef _VERTEXWAVEENABLED_ON
				float3 staticSwitch930 = ( ( sin( ( ( UV_2Dm715.y * TWO_PI * _VertexWaveScale ) - ( mulTime868 + ( _VertexWaveOffset * TWO_PI ) ) ) ) * _VertexWave * Vertex_WaveNoise_Vertical_Mask819 ) * inputMesh.normalOS );
				#else
				float3 staticSwitch930 = float3( 0,0,0 );
				#endif
				float3 Vertex_Sine943 = staticSwitch930;
				float localSimplexNoise_float2_g790 = ( 0.0 );
				float Particle_Stable_Random_X771 = ( ( inputMesh.uv0.w - 0.5 ) * 100.0 * _ParticleRandomization );
				float Particle_Age_Percent770 = inputMesh.uv0.z;
				#ifdef _WORLDSPACEUVS2_ON
				float staticSwitch860 = Particle_Age_Percent770;
				#else
				float staticSwitch860 = Particle_Stable_Random_X771;
				#endif
				float3 temp_cast_0 = (staticSwitch860).xxx;
				float4 Vertex_Noise_Offset852 = ( _VertexNoiseOffset + Particle_Stable_Random_X771 + ( _VertexNoiseParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g786 = ( float4( ( temp_cast_0 * _VertexNoiseScale * _VertexNoiseTiling ) , 0.0 ) - ( Vertex_Noise_Offset852 + ( _VertexNoiseAnimation * _TimeParameters.x ) ) );
				float3 temp_output_871_0 = (temp_output_10_0_g786).xyz;
				float3 position2_g790 = temp_output_871_0;
				float temp_output_871_15 = (temp_output_10_0_g786).w;
				float angle2_g790 = temp_output_871_15;
				float octaves2_g790 = _VertexNoiseOctaves;
				float noise2_g790 = 0.0;
				float3 gradient2_g790 = float3( 0,0,0 );
				SimplexNoise_float( position2_g790 , angle2_g790 , octaves2_g790 , noise2_g790 , gradient2_g790 );
				float localSimplexNoise_Caustics_float2_g789 = ( 0.0 );
				float3 position2_g789 = temp_output_871_0;
				float angle2_g789 = temp_output_871_15;
				float octaves2_g789 = _VertexNoiseOctaves;
				float gradientStrength2_g789 = _VertexNoiseDilation;
				float noise2_g789 = 0.0;
				float3 gradient2_g789 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g789 , angle2_g789 , octaves2_g789 , gradientStrength2_g789 , noise2_g789 , gradient2_g789 );
				#ifdef _VERTEXNOISEDILATIONENABLED_ON
				float3 staticSwitch886 = gradient2_g789;
				#else
				float3 staticSwitch886 = gradient2_g790;
				#endif
				float localTwistXZ_float11_g791 = ( 0.0 );
				float3 temp_output_10_0_g791 = staticSwitch886;
				float3 position11_g791 = temp_output_10_0_g791;
				float temp_output_9_0_g791 = _VertexNoiseTwist;
				float angle11_g791 = radians( temp_output_9_0_g791 );
				float3 output11_g791 = float3( 0,0,0 );
				TwistXZ_float( position11_g791 , angle11_g791 , output11_g791 );
				float3 temp_output_898_0 = output11_g791;
				#ifdef _VERTEXNOISETWISTENABLED_ON
				float3 staticSwitch973 = temp_output_898_0;
				#else
				float3 staticSwitch973 = staticSwitch886;
				#endif
				#ifdef _VERTEXNOISEENABLED_ON
				float3 staticSwitch933 = ( temp_output_898_0 * _VertexNoise * Vertex_WaveNoise_Vertical_Mask819 );
				#else
				float3 staticSwitch933 = staticSwitch973;
				#endif
				float3 Vertex_Noise946 = staticSwitch933;
				float2 break876 = ( ( UV_2Dm715 * float2( 2,1 ) ) - float2( 1,0 ) );
				float temp_output_907_0 = ( ( break876.x * pow( break876.y , _VertexUVOffsetTopPower ) ) * ( _VertexUVOffsetTop * 0.5 ) );
				float3 appendResult922 = (float3(temp_output_907_0 , 0.0 , 0.0));
				float3 appendResult921 = (float3(0.0 , temp_output_907_0 , 0.0));
				#ifdef _SWAPUVXY1_ON
				float3 staticSwitch931 = appendResult921;
				#else
				float3 staticSwitch931 = appendResult922;
				#endif
				float3 Vertex_Offset_Top944 = staticSwitch931;
				float2 break869 = ( ( UV_2Dm715 * float2( 2,1 ) ) - float2( 1,0 ) );
				float temp_output_906_0 = ( ( break869.x * pow( ( 1.0 - break869.y ) , _VertexUVOffsetBottomPower ) ) * ( _VertexUVOffsetBottom * 0.5 ) );
				float3 appendResult924 = (float3(temp_output_906_0 , 0.0 , 0.0));
				float3 appendResult923 = (float3(0.0 , temp_output_906_0 , 0.0));
				#ifdef _SWAPUVXY1_ON
				float3 staticSwitch932 = appendResult923;
				#else
				float3 staticSwitch932 = appendResult924;
				#endif
				float3 Vertex_Offset_Bottom945 = staticSwitch932;
				float3 temp_output_10_0_g793 = ( ( Vertex_Normal_Offset947 + Vertex_Sine943 + Vertex_Noise946 + Vertex_Offset_Top944 + Vertex_Offset_Bottom945 ) + inputMesh.positionOS );
				float3 position11_g793 = temp_output_10_0_g793;
				float temp_output_9_0_g793 = -_VertexTwist;
				float angle11_g793 = radians( temp_output_9_0_g793 );
				float3 output11_g793 = float3( 0,0,0 );
				TwistXZ_float( position11_g793 , angle11_g793 , output11_g793 );
				float3 worldToObjDir948 = mul( GetWorldToObjectMatrix(), float4( _VertexOffsetOverY1, 0.0 ) ).xyz;
				float3 worldToObjDir950 = mul( GetWorldToObjectMatrix(), float4( _VertexOffsetOverY2, 0.0 ) ).xyz;
				float UV_2D_Circular_Y929 = sin( ( UV_2D_Ym723 * PI ) );
				float3 Vertex_Offset_over_Y966 = ( ( worldToObjDir948 * pow( UV_2D_Ym723 , _VertexOffsetOverY1Power ) ) + ( worldToObjDir950 * pow( UV_2D_Ym723 , _VertexOffsetOverY2Power ) ) + ( _VertexOffsetOverCircularY * pow( UV_2D_Circular_Y929 , _VertexOffsetOverCircularYPower ) ) );
				float3 Vertex_Offset971 = ( output11_g793 + Vertex_Offset_over_Y966 );
				
				float3 ase_positionWS = GetAbsolutePositionWS( TransformObjectToWorld( ( inputMesh.positionOS ).xyz ) );
				o.ase_texcoord4.xyz = ase_positionWS;
				float4 ase_positionCS = TransformWorldToHClip( TransformObjectToWorld( ( inputMesh.positionOS ).xyz ) );
				float4 screenPos = ComputeScreenPos( ase_positionCS, _ProjectionParams.x );
				o.ase_texcoord5 = screenPos;
				
				float3 ase_normalWS = TransformObjectToWorldNormal( inputMesh.normalOS );
				o.ase_texcoord7.xyz = ase_normalWS;
				float3 objectToViewPos = TransformWorldToView( TransformObjectToWorld( inputMesh.positionOS ) );
				float eyeDepth = -objectToViewPos.z;
				o.ase_texcoord4.w = eyeDepth;
				
				o.ase_texcoord2 = inputMesh.uv0;
				o.ase_texcoord3 = float4(inputMesh.positionOS,1);
				o.ase_texcoord6 = inputMesh.uv1;
				o.ase_color = inputMesh.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord7.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = Vertex_Offset971;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS = inputMesh.normalOS;

			#ifdef EDITOR_VISUALIZATION
				float2 vizUV = 0;
				float4 lightCoord = 0;
				UnityEditorVizData(inputMesh.positionOS.xyz, inputMesh.uv0.xy, inputMesh.uv1.xy, inputMesh.uv2.xy, vizUV, lightCoord);
			#endif

				float2 uv = float2( 0.0, 0.0 );
				if( unity_MetaVertexControl.x )
				{
					uv = inputMesh.uv1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				}
				else if( unity_MetaVertexControl.y )
				{
					uv = inputMesh.uv2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				}

				#ifdef EDITOR_VISUALIZATION
					o.VizUV.xy = vizUV;
					o.LightCoord = lightCoord;
				#endif

				o.positionCS = float4( uv * 2.0 - 1.0, inputMesh.positionOS.z > 0 ? 1.0e-4 : 0.0, 1.0 );
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 uv0 : TEXCOORD0;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 uv3 : TEXCOORD3;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.uv0 = v.uv0;
				o.uv1 = v.uv1;
				o.uv2 = v.uv2;
				o.uv3 = v.uv3;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.uv0 = patch[0].uv0 * bary.x + patch[1].uv0 * bary.y + patch[2].uv0 * bary.z;
				o.uv1 = patch[0].uv1 * bary.x + patch[1].uv1 * bary.y + patch[2].uv1 * bary.z;
				o.uv2 = patch[0].uv2 * bary.x + patch[1].uv2 * bary.y + patch[2].uv2 * bary.z;
				o.uv3 = patch[0].uv3 * bary.x + patch[1].uv3 * bary.y + patch[2].uv3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			float4 Frag( PackedVaryingsMeshToPS packedInput  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( packedInput );
				FragInputs input;
				ZERO_INITIALIZE( FragInputs, input );
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				PositionInputs posInput = GetPositionInput( input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS );

				float3 V = float3( 1.0, 1.0, 1.0 );

				float4 temp_output_22_0_g796 = _ColourB;
				float4 temp_output_22_0_g795 = _ColourA;
				float temp_output_7_0_g781 = _NoiseRemapMin;
				float temp_output_23_0_g781 = _NoiseRemapMax;
				float localSimplexNoise_float2_g779 = ( 0.0 );
				float2 texCoord721 = packedInput.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord718 = packedInput.ase_texcoord2.xy * float2( 2,2 ) + float2( -1,-1 );
				#if defined( _UV2DNORMCENT1_NORMAL1 )
				float2 staticSwitch714 = texCoord721;
				#elif defined( _UV2DNORMCENT1_CENTERED1 )
				float2 staticSwitch714 = texCoord718;
				#else
				float2 staticSwitch714 = texCoord721;
				#endif
				#ifdef _SWAPUVXY1_ON
				float2 staticSwitch988 = (staticSwitch714).yx;
				#else
				float2 staticSwitch988 = staticSwitch714;
				#endif
				float2 UV_2Dm715 = staticSwitch988;
				float3 ase_positionWS = packedInput.ase_texcoord4.xyz;
				#if defined( _VERTEXWORLDPOS1_VERTEXPOS1 )
				float3 staticSwitch734 = packedInput.ase_texcoord3.xyz;
				#elif defined( _VERTEXWORLDPOS1_WORLDPOS1 )
				float3 staticSwitch734 = ase_positionWS;
				#else
				float3 staticSwitch734 = packedInput.ase_texcoord3.xyz;
				#endif
				#ifdef _SWAPUVXY7_ON
				float3 staticSwitch735 = (staticSwitch734).yxz;
				#else
				float3 staticSwitch735 = staticSwitch734;
				#endif
				float3 UV_3D_VWP1739 = staticSwitch735;
				#ifdef _OBJECTSPACEUVS_ON
				float3 staticSwitch792 = UV_3D_VWP1739;
				#else
				float3 staticSwitch792 = float3( UV_2Dm715 ,  0.0 );
				#endif
				float UV_3D_World_VWP2682 = 0.0;
				float3 temp_cast_1 = (UV_3D_World_VWP2682).xxx;
				#ifdef _WORLDSPACEUVS_ON
				float3 staticSwitch793 = temp_cast_1;
				#else
				float3 staticSwitch793 = staticSwitch792;
				#endif
				float4 screenPos = packedInput.ase_texcoord5;
				float4 ase_positionSSNorm = screenPos / screenPos.w;
				ase_positionSSNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_positionSSNorm.z : ase_positionSSNorm.z * 0.5 + 0.5;
				float2 appendResult745 = (float2(ase_positionSSNorm.x , ase_positionSSNorm.y));
				float2 Screen_UV747 = appendResult745;
				float2 appendResult746 = (float2(_ScreenParams.x , _ScreenParams.y));
				float2 Screen_Resolution748 = appendResult746;
				float2 Screen_Position750 = ( Screen_UV747 * Screen_Resolution748 );
				float2 screenPosition441 = Screen_Position750;
				float mulTime440 = _TimeParameters.x * 60.0;
				float time441 = mulTime440;
				float3 localHash33441 = Hash33( screenPosition441 , time441 );
				float3 Sample_Noise445 = ( (localHash33441*2.0 + -1.0) * _UVSampleNoise );
				float3 Noise_Base_UV795 = ( staticSwitch793 + Sample_Noise445 );
				float localSpherize_float5_g755 = ( 0.0 );
				float2 uv5_g755 = (Noise_Base_UV795).xy;
				float2 center5_g755 = ( _SpherizeNoiseOffset + float2( 0.5,0.5 ) );
				float radius5_g755 = _SpherizeNoiseRadius;
				float strength5_g755 = _SpherizeNoiseStrength;
				float2 output5_g755 = float2( 0,0 );
				Spherize_float( uv5_g755 , center5_g755 , radius5_g755 , strength5_g755 , output5_g755 );
				float3 appendResult506 = (float3(output5_g755 , (Noise_Base_UV795).z));
				#ifdef _SPHERIZENOISE_ON
				float3 staticSwitch505 = appendResult506;
				#else
				float3 staticSwitch505 = Noise_Base_UV795;
				#endif
				float2 center45_g765 = ( _NoiseXYTwistOffset + float2( 0.5,0.5 ) );
				float2 delta6_g765 = ( staticSwitch505.xy - center45_g765 );
				float angle10_g765 = ( length( delta6_g765 ) * radians( _NoiseXYTwist ) );
				float x23_g765 = ( ( cos( angle10_g765 ) * delta6_g765.x ) - ( sin( angle10_g765 ) * delta6_g765.y ) );
				float2 break40_g765 = center45_g765;
				float2 break41_g765 = float2( 0,0 );
				float y35_g765 = ( ( sin( angle10_g765 ) * delta6_g765.x ) + ( cos( angle10_g765 ) * delta6_g765.y ) );
				float2 appendResult44_g765 = (float2(( x23_g765 + break40_g765.x + break41_g765.x ) , ( break40_g765.y + break41_g765.y + y35_g765 )));
				float2 temp_output_499_0 = appendResult44_g765;
				float localTwistXZ_float11_g763 = ( 0.0 );
				float3 temp_output_10_0_g763 = float3( temp_output_499_0 ,  0.0 );
				float3 position11_g763 = temp_output_10_0_g763;
				float temp_output_9_0_g763 = _NoiseXZTwist;
				float angle11_g763 = radians( temp_output_9_0_g763 );
				float3 output11_g763 = float3( 0,0,0 );
				TwistXZ_float( position11_g763 , angle11_g763 , output11_g763 );
				#ifdef _NOISEXZTWISTENABLED_ON
				float3 staticSwitch498 = output11_g763;
				#else
				float3 staticSwitch498 = float3( temp_output_499_0 ,  0.0 );
				#endif
				float3 break469 = staticSwitch498;
				float temp_output_478_0 = ( ( break469.y - _NoiseUVYPreOffset ) * _NoiseUVYPreScale );
				float temp_output_7_0_g770 = abs( temp_output_478_0 );
				float temp_output_7_0_g771 = abs( temp_output_478_0 );
				float smoothstepResult16_g771 = smoothstep( _NoiseUVYPreRemapMin , _NoiseUVYPreRemapMax , pow( temp_output_7_0_g771 , _NoiseUVYPrePower ));
				#ifdef _NOISEUVPREREMAP_ON
				float staticSwitch485 = ( smoothstepResult16_g771 * sign( temp_output_478_0 ) );
				#else
				float staticSwitch485 = ( pow( temp_output_7_0_g770 , _NoiseUVYPrePower ) * sign( temp_output_478_0 ) );
				#endif
				float3 appendResult486 = (float3(break469.x , staticSwitch485 , 0.0));
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_positionWS );
				float3 ase_viewDirWS = normalize( ase_viewVectorWS );
				float3 temp_output_787_0 = ( -ase_viewDirWS * _NoiseParallaxOffset );
				#ifdef _SWAPUVXY3_ON
				float3 staticSwitch789 = (temp_output_787_0).yxz;
				#else
				float3 staticSwitch789 = temp_output_787_0;
				#endif
				float3 Parallax_Offset790 = staticSwitch789;
				float localSimplexNoise_float2_g761 = ( 0.0 );
				float Particle_Stable_Random_X771 = ( ( packedInput.ase_texcoord2.w - 0.5 ) * 100.0 * _ParticleRandomization );
				float Particle_Age_Percent770 = packedInput.ase_texcoord2.z;
				float4 Distortion_Noise_Offset813 = ( _NoiseDistortionOffset + Particle_Stable_Random_X771 + ( _NoiseDistortionParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g758 = ( float4( ( ( Noise_Base_UV795 + Parallax_Offset790 ) * _NoiseDistortionScale * _NoiseDistortionTiling ) , 0.0 ) - ( Distortion_Noise_Offset813 + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 temp_output_322_0 = (temp_output_10_0_g758).xyz;
				float3 position2_g761 = temp_output_322_0;
				float temp_output_322_15 = (temp_output_10_0_g758).w;
				float angle2_g761 = temp_output_322_15;
				float octaves2_g761 = _NoiseDistortionOctaves;
				float noise2_g761 = 0.0;
				float3 gradient2_g761 = float3( 0,0,0 );
				SimplexNoise_float( position2_g761 , angle2_g761 , octaves2_g761 , noise2_g761 , gradient2_g761 );
				float localSimplexNoise_Caustics_float2_g760 = ( 0.0 );
				float3 position2_g760 = temp_output_322_0;
				float angle2_g760 = temp_output_322_15;
				float octaves2_g760 = _NoiseDistortionOctaves;
				float gradientStrength2_g760 = _NoiseDistortionDilation;
				float noise2_g760 = 0.0;
				float3 gradient2_g760 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g760 , angle2_g760 , octaves2_g760 , gradientStrength2_g760 , noise2_g760 , gradient2_g760 );
				#ifdef _NOISEDISTORTIONDILATIONENABLED_ON
				float3 staticSwitch329 = gradient2_g760;
				#else
				float3 staticSwitch329 = gradient2_g761;
				#endif
				float3 temp_output_7_0_g766 = abs( staticSwitch329 );
				float3 temp_cast_6 = (_NoiseDistortionPower).xxx;
				#ifdef _NOISEDISTORTIONENABLED_ON
				float3 staticSwitch336 = ( ( pow( temp_output_7_0_g766 , temp_cast_6 ) * sign( staticSwitch329 ) ) * _NoiseDistortion );
				#else
				float3 staticSwitch336 = float3( 0,0,0 );
				#endif
				float3 Noise_Distortion337 = staticSwitch336;
				float3 Noise_UV494 = ( appendResult486 + Parallax_Offset790 + Noise_Distortion337 );
				float4 Noise_Offset786 = ( _NoiseOffset + Particle_Stable_Random_X771 + ( _NoiseParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g775 = ( float4( ( Noise_UV494 * _NoiseScale * _NoiseTiling ) , 0.0 ) - ( Noise_Offset786 + ( _NoiseAnimation * _TimeParameters.x ) ) );
				float3 temp_output_344_0 = (temp_output_10_0_g775).xyz;
				float3 position2_g779 = temp_output_344_0;
				float temp_output_344_15 = (temp_output_10_0_g775).w;
				float angle2_g779 = temp_output_344_15;
				float octaves2_g779 = _NoiseOctaves;
				float noise2_g779 = 0.0;
				float3 gradient2_g779 = float3( 0,0,0 );
				SimplexNoise_float( position2_g779 , angle2_g779 , octaves2_g779 , noise2_g779 , gradient2_g779 );
				float localSimplexNoise_Caustics_float2_g778 = ( 0.0 );
				float3 position2_g778 = temp_output_344_0;
				float angle2_g778 = temp_output_344_15;
				float octaves2_g778 = _NoiseOctaves;
				float gradientStrength2_g778 = _NoiseDilation;
				float noise2_g778 = 0.0;
				float3 gradient2_g778 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g778 , angle2_g778 , octaves2_g778 , gradientStrength2_g778 , noise2_g778 , gradient2_g778 );
				#ifdef _NOISEDILATIONENABLED_ON
				float staticSwitch349 = noise2_g778;
				#else
				float staticSwitch349 = noise2_g779;
				#endif
				float temp_output_20_0_g781 = staticSwitch349;
				float temp_output_4_0_g781 = _NoisePower;
				float smoothstepResult22_g781 = smoothstep( temp_output_7_0_g781 , temp_output_23_0_g781 , pow( temp_output_20_0_g781 , temp_output_4_0_g781 ));
				float Particle_Subtract_Noise_over_Lifetime779 = ( packedInput.ase_texcoord6.y * _ParticleSubtractNoiseoverLifetime1 );
				float temp_output_356_0 = ( smoothstepResult22_g781 - Particle_Subtract_Noise_over_Lifetime779 );
				float lerpResult359 = lerp( 1.0 , temp_output_356_0 , _Noise);
				float Noise360 = lerpResult359;
				float Colour_Power101 = pow( Noise360 , _ColourPower );
				float3 lerpResult123 = lerp( ( (temp_output_22_0_g796).rgb * (temp_output_22_0_g796).a ) , ( (temp_output_22_0_g795).rgb * (temp_output_22_0_g795).a ) , Colour_Power101);
				float3 hsvTorgb147 = RGBToHSV( lerpResult123 );
				float3 hsvTorgb127 = HSVToRGB( float3(( hsvTorgb147.x + _ColourHueShift ),( hsvTorgb147.y + _ColourSaturationShift ),( hsvTorgb147.z * _ColourValueMultiplier )) );
				float4 temp_output_22_0_g797 = _VerticalColourB;
				float4 temp_output_22_0_g798 = _VerticalColourA;
				float3 lerpResult132 = lerp( ( (temp_output_22_0_g797).rgb * (temp_output_22_0_g797).a ) , ( (temp_output_22_0_g798).rgb * (temp_output_22_0_g798).a ) , Colour_Power101);
				float3 hsvTorgb143 = RGBToHSV( lerpResult132 );
				float3 hsvTorgb144 = HSVToRGB( float3(( hsvTorgb143.x + _VerticalColourHueShift ),( hsvTorgb143.y + _VerticalColourSaturationShift ),( hsvTorgb143.z * _VerticalColourValueMultiplier )) );
				float temp_output_7_0_g799 = _VerticalColourMaskRemapMin;
				float temp_output_23_0_g799 = _VerticalColourMaskRemapMax;
				float UV_2D_Ym723 = (staticSwitch988).y;
				float temp_output_20_0_g799 = UV_2D_Ym723;
				float temp_output_4_0_g799 = _VerticalColourMaskPower;
				float smoothstepResult22_g799 = smoothstep( temp_output_7_0_g799 , temp_output_23_0_g799 , pow( temp_output_20_0_g799 , temp_output_4_0_g799 ));
				float Vertical_Colour_Mask627 = smoothstepResult22_g799;
				float3 lerpResult129 = lerp( hsvTorgb127 , hsvTorgb144 , Vertical_Colour_Mask627);
				#ifdef _VERTICALCOLOUR_ON
				float3 staticSwitch128 = lerpResult129;
				#else
				float3 staticSwitch128 = hsvTorgb127;
				#endif
				float3 Colour_Input145 = staticSwitch128;
				float3 hsvTorgb457 = RGBToHSV( float3( 0,0,0 ) );
				float3 hsvTorgb454 = HSVToRGB( float3(( hsvTorgb457.x + _VertexColourHueShift ),( hsvTorgb457.y + _VertexColourSaturationShift ),hsvTorgb457.z) );
				float4 Vertex_Colour467 = (( _VertexColorHSVEnabledOn )?( float4( (hsvTorgb454).xyz , 0.0 ) ):( packedInput.ase_color ));
				float3 hsvTorgb106 = RGBToHSV( Colour_Input145 );
				float3 hsvTorgb113 = HSVToRGB( float3(( hsvTorgb106.x + _IntersectionHighlightColourHueShift ),( hsvTorgb106.y + _IntersectionHighlightColourSaturationShift ),( hsvTorgb106.z * _IntersectionHighlightColourValueMultiplier )) );
				float temp_output_7_0_g788 = _IntersectionHighlightRemapMin;
				float temp_output_23_0_g788 = _IntersectionHighlightRemapMax;
				float screenDepth372 = LinearEyeDepth(SampleCameraDepth( ase_positionSSNorm.xy ),_ZBufferParams);
				float distanceDepth372 = saturate( abs( ( screenDepth372 - LinearEyeDepth( ase_positionSSNorm.z,_ZBufferParams ) ) / ( _IntersectionHighlight ) ) );
				float temp_output_20_0_g788 = ( 1.0 - distanceDepth372 );
				float temp_output_4_0_g788 = _IntersectionHighlightPower;
				float smoothstepResult22_g788 = smoothstep( temp_output_7_0_g788 , temp_output_23_0_g788 , pow( temp_output_20_0_g788 , temp_output_4_0_g788 ));
				float Intersection_Highlight378 = smoothstepResult22_g788;
				float4 lerpResult119 = lerp( ( float4( Colour_Input145 , 0.0 ) * Vertex_Colour467 ) , float4( ( hsvTorgb113 * _IntersectionHighlightColour.rgb ) , 0.0 ) , pow( Intersection_Highlight378 , 0.0001 ));
				float4 Colour118 = lerpResult119;
				
				float Particle_Mask_Radius_over_Lifetime630 = packedInput.ase_texcoord6.x;
				float lerpResult245 = lerp( 1.0 , Particle_Mask_Radius_over_Lifetime630 , _RadialMaskRadiusOverParticleLifetime);
				float temp_output_6_0_g772 = ( 1.0 - ( _RadialMaskRadius * lerpResult245 ) );
				float lerpResult5_g772 = lerp( temp_output_6_0_g772 , 1.0 , _RadialMaskFeather);
				float2 texCoord991 = packedInput.ase_texcoord2.xy * float2( 2,2 ) + float2( -1,-1 );
				float2 texCoord997 = packedInput.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				#ifdef _UV2DCENTNORM_ON
				float2 staticSwitch996 = texCoord997;
				#else
				float2 staticSwitch996 = texCoord991;
				#endif
				#ifdef _SWAPUVXY1_ON
				float2 staticSwitch990 = (staticSwitch996).yx;
				#else
				float2 staticSwitch990 = staticSwitch996;
				#endif
				float2 UV_2D_Centeredm992 = staticSwitch990;
				float localSimplexNoise_float2_g757 = ( 0.0 );
				float4 Mask_Distortion_Noise_Offset805 = ( _RadialMaskDistortionOffset + Particle_Stable_Random_X771 + ( _RadialMaskDistortionParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g725 = ( float4( ( Noise_Base_UV795 * _RadialMaskDistortionScale * _RadialMaskDistortionTiling ) , 0.0 ) - ( Mask_Distortion_Noise_Offset805 + ( _RadialMaskDistortionAnimation * _TimeParameters.x ) ) );
				float3 temp_output_305_0 = (temp_output_10_0_g725).xyz;
				float3 position2_g757 = temp_output_305_0;
				float temp_output_305_15 = (temp_output_10_0_g725).w;
				float angle2_g757 = temp_output_305_15;
				float octaves2_g757 = _RadialMaskDistortionOctaves;
				float noise2_g757 = 0.0;
				float3 gradient2_g757 = float3( 0,0,0 );
				SimplexNoise_float( position2_g757 , angle2_g757 , octaves2_g757 , noise2_g757 , gradient2_g757 );
				float localSimplexNoise_Caustics_float2_g756 = ( 0.0 );
				float3 position2_g756 = temp_output_305_0;
				float angle2_g756 = temp_output_305_15;
				float octaves2_g756 = _RadialMaskDistortionOctaves;
				float gradientStrength2_g756 = _RadialMaskDistortionDilation;
				float noise2_g756 = 0.0;
				float3 gradient2_g756 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g756 , angle2_g756 , octaves2_g756 , gradientStrength2_g756 , noise2_g756 , gradient2_g756 );
				#ifdef _RADIALMASKDISTORTIONDILATIONENABLED_ON
				float3 staticSwitch310 = gradient2_g756;
				#else
				float3 staticSwitch310 = gradient2_g757;
				#endif
				float3 temp_output_7_0_g762 = abs( staticSwitch310 );
				float3 temp_cast_14 = (_RadialMaskDistortionPower).xxx;
				#ifdef _RADIALMASKDISTORTIONENABLED_ON
				float3 staticSwitch325 = ( ( pow( temp_output_7_0_g762 , temp_cast_14 ) * sign( staticSwitch310 ) ) * _RadialMaskDistortion );
				#else
				float3 staticSwitch325 = float3( 0,0,0 );
				#endif
				float3 Mask_Distortion328 = staticSwitch325;
				float temp_output_7_0_g772 = ( 1.0 - length( ( ( ( UV_2D_Centeredm992 + (Mask_Distortion328).xy ) - _RadialMaskOffset ) * _RadialMaskTiling ) ) );
				float smoothstepResult4_g772 = smoothstep( temp_output_6_0_g772 , lerpResult5_g772 , temp_output_7_0_g772);
				#ifdef _RADIALMASK_ON
				float staticSwitch256 = ( 1.0 - pow( smoothstepResult4_g772 , _RadialMaskPower ) );
				#else
				float staticSwitch256 = 0.0;
				#endif
				float Radial_Mask257 = staticSwitch256;
				#ifdef _RADIALMASKSUBTRACTIVE_ON
				float staticSwitch204 = Radial_Mask257;
				#else
				float staticSwitch204 = 0.0;
				#endif
				float temp_output_7_0_g777 = _VerticalMask1RemapMax;
				float temp_output_23_0_g777 = _VerticalMask1RemapMin;
				float UV_3D_Y_VWP1760 = (staticSwitch735).y;
				#ifdef _VERTICALMASKSOBJECTSPACE_ON
				float staticSwitch270 = ( ( UV_3D_Y_VWP1760 - _VerticalMask1ObjectSpaceOffset ) / _VerticalMask1ObjectSpaceScale );
				#else
				float staticSwitch270 = UV_2D_Ym723;
				#endif
				float temp_output_20_0_g777 = staticSwitch270;
				float smoothstepResult25_g777 = smoothstep( temp_output_7_0_g777 , temp_output_23_0_g777 , temp_output_20_0_g777);
				float temp_output_4_0_g777 = _VerticalMask1Power;
				float temp_output_278_0 = pow( smoothstepResult25_g777 , temp_output_4_0_g777 );
				#ifdef _VERTICALMASK1SUBTRACTIVE_ON
				float staticSwitch282 = ( 1.0 - temp_output_278_0 );
				#else
				float staticSwitch282 = temp_output_278_0;
				#endif
				float Vertical_Mask_1287 = staticSwitch282;
				#ifdef _VERTICALMASK1SUBTRACTIVE_ON
				float staticSwitch206 = ( staticSwitch204 + Vertical_Mask_1287 );
				#else
				float staticSwitch206 = staticSwitch204;
				#endif
				#ifdef _VERTICALMASK1_ON
				float staticSwitch207 = staticSwitch206;
				#else
				float staticSwitch207 = staticSwitch204;
				#endif
				float temp_output_7_0_g780 = _VerticalMask2RemapMin;
				float temp_output_23_0_g780 = _VerticalMask2RemapMax;
				#ifdef _VERTICALMASKSOBJECTSPACE_ON
				float staticSwitch286 = ( ( UV_3D_Y_VWP1760 - _VerticalMask2ObjectSpaceOffset ) / _VerticalMask2ObjectSpaceScale );
				#else
				float staticSwitch286 = UV_2D_Ym723;
				#endif
				float temp_output_20_0_g780 = staticSwitch286;
				float smoothstepResult25_g780 = smoothstep( temp_output_7_0_g780 , temp_output_23_0_g780 , temp_output_20_0_g780);
				float temp_output_4_0_g780 = _VerticalMask2Power;
				float temp_output_288_0 = pow( smoothstepResult25_g780 , temp_output_4_0_g780 );
				#ifdef _VERTICALMASK2SUBTRACTIVE_ON
				float staticSwitch290 = ( 1.0 - temp_output_288_0 );
				#else
				float staticSwitch290 = temp_output_288_0;
				#endif
				float Vertical_Mask_2291 = staticSwitch290;
				#ifdef _VERTICALMASK2SUBTRACTIVE_ON
				float staticSwitch208 = ( staticSwitch207 + Vertical_Mask_2291 );
				#else
				float staticSwitch208 = staticSwitch207;
				#endif
				#ifdef _VERTICALMASK2_ON
				float staticSwitch209 = staticSwitch208;
				#else
				float staticSwitch209 = staticSwitch207;
				#endif
				float3 ase_normalWS = packedInput.ase_texcoord7.xyz;
				float fresnelNdotV427 = dot( ase_normalWS, ase_viewDirWS );
				float fresnelNode427 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV427, _FresnelMaskPower ) );
				float smoothstepResult430 = smoothstep( _FresnelMaskRemapMin , _FresnelMaskRemapMax , fresnelNode427);
				float lerpResult432 = lerp( 1.0 , smoothstepResult430 , _FresnelMask);
				float Fresnel_Mask433 = lerpResult432;
				float temp_output_7_0_g782 = 0.0;
				float temp_output_23_0_g782 = 1.0;
				float screenDepth381 = LinearEyeDepth(SampleCameraDepth( ase_positionSSNorm.xy ),_ZBufferParams);
				float distanceDepth381 = saturate( abs( ( screenDepth381 - LinearEyeDepth( ase_positionSSNorm.z,_ZBufferParams ) ) / ( _DepthFade ) ) );
				#ifdef _INVERTDEPTHFADE_ON
				float staticSwitch386 = ( 1.0 - distanceDepth381 );
				#else
				float staticSwitch386 = distanceDepth381;
				#endif
				float temp_output_20_0_g782 = staticSwitch386;
				float temp_output_4_0_g782 = _DepthFadePower;
				float smoothstepResult22_g782 = smoothstep( temp_output_7_0_g782 , temp_output_23_0_g782 , pow( temp_output_20_0_g782 , temp_output_4_0_g782 ));
				float temp_output_7_0_g783 = 0.0;
				float temp_output_23_0_g783 = 1.0;
				float screenDepth384 = LinearEyeDepth(SampleCameraDepth( ase_positionSSNorm.xy ),_ZBufferParams);
				float distanceDepth384 = saturate( abs( ( screenDepth384 - LinearEyeDepth( ase_positionSSNorm.z,_ZBufferParams ) ) / ( _SubtractiveDepthFade ) ) );
				float temp_output_20_0_g783 = ( 1.0 - distanceDepth384 );
				float temp_output_4_0_g783 = _SubtractiveDepthFadePower;
				float smoothstepResult22_g783 = smoothstep( temp_output_7_0_g783 , temp_output_23_0_g783 , pow( temp_output_20_0_g783 , temp_output_4_0_g783 ));
				float Depth_Fade401 = saturate( ( smoothstepResult22_g782 - smoothstepResult22_g783 ) );
				float temp_output_7_0_g785 = 0.0;
				float temp_output_23_0_g785 = 1.0;
				float eyeDepth = packedInput.ase_texcoord4.w;
				float cameraDepthFade392 = (( eyeDepth -_ProjectionParams.y - _CameraDepthFadeOffset ) / _CameraDepthFadeLength);
				float temp_output_20_0_g785 = saturate( cameraDepthFade392 );
				float temp_output_4_0_g785 = _CameraDepthFadePower;
				float smoothstepResult22_g785 = smoothstep( temp_output_7_0_g785 , temp_output_23_0_g785 , pow( temp_output_20_0_g785 , temp_output_4_0_g785 ));
				float Camera_Depth_Fade400 = smoothstepResult22_g785;
				float Intersection_Highlight_Alpha103 = ( _IntersectionHighlightColour.a * _IntersectionHighlightAlpha );
				float temp_output_227_0 = saturate( ( ( saturate( ( Noise360 - staticSwitch209 ) ) * Fresnel_Mask433 * (packedInput.ase_color).a * Depth_Fade401 * Camera_Depth_Fade400 * _Alpha ) + ( Intersection_Highlight378 * Intersection_Highlight_Alpha103 ) ) );
				#ifdef _RADIALMASKSUBTRACTIVE_ON
				float staticSwitch235 = temp_output_227_0;
				#else
				float staticSwitch235 = ( temp_output_227_0 * ( 1.0 - Radial_Mask257 ) );
				#endif
				float Alpha236 = staticSwitch235;
				

				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				surfaceDescription.Color = Colour118.rgb;
				surfaceDescription.Emission = Colour118.rgb;
				surfaceDescription.Alpha = Alpha236;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData( surfaceDescription,input, V, posInput, surfaceData, builtinData );

				BSDFData bsdfData = ConvertSurfaceDataToBSDFData( input.positionSS.xy, surfaceData );
				LightTransportData lightTransportData = GetLightTransportData( surfaceData, builtinData, bsdfData );

				float4 res = float4( 0.0, 0.0, 0.0, 1.0 );
				UnityMetaInput metaInput;
				metaInput.Albedo = lightTransportData.diffuseColor.rgb;
				metaInput.Emission = lightTransportData.emissiveColor;
			#ifdef EDITOR_VISUALIZATION
				metaInput.VizUV = packedInput.VizUV;
				metaInput.LightCoord = packedInput.LightCoord;
			#endif
				res = UnityMetaFragment(metaInput);

				return res;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "SceneSelectionPass"
			Tags { "LightMode"="SceneSelectionPass" }

			Cull Off

			HLSLPROGRAM

			#pragma shader_feature_local_fragment _ENABLE_FOG_ON_TRANSPARENT
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#define HAVE_MESH_MODIFICATION 1
			#define ASE_VERSION 19905
			#define ASE_SRP_VERSION 170200


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT

			#pragma editor_sync_compilation

			#pragma multi_compile _ DOTS_INSTANCING_ON

			#pragma vertex Vert
			#pragma fragment Frag

			#define SHADERPASS SHADERPASS_DEPTH_ONLY
			#define SCENESELECTIONPASS 1
            #define SUPPORT_GLOBAL_MIP_BIAS 1

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl"

			int _ObjectId;
			int _PassValue;

			CBUFFER_START( UnityPerMaterial )
			float4 _VerticalColourB;
			float4 _RadialMaskDistortionOffset;
			float4 _RadialMaskDistortionParticleAnimation;
			float4 _RadialMaskDistortionAnimation;
			float4 _VerticalColourA;
			float4 _ColourA;
			float4 _ColourB;
			float4 _NoiseDistortionOffset;
			float4 _NoiseDistortionParticleAnimation;
			float4 _IntersectionHighlightColour;
			float4 _VertexNoiseAnimation;
			float4 _VertexNoiseParticleAnimation;
			float4 _VertexNoiseOffset;
			float4 _NoiseDistortionAnimation;
			float4 _NoiseOffset;
			float4 _NoiseParticleAnimation;
			float4 _NoiseAnimation;
			float3 _VertexNoiseTiling;
			float3 _NoiseTiling;
			float3 _RadialMaskDistortionTiling;
			float3 _VertexOffsetOverCircularY;
			float3 _NoiseDistortionTiling;
			float3 _VertexOffsetOverY2;
			float3 _VertexOffsetOverY1;
			float2 _RadialMaskOffset;
			float2 _NoiseXYTwistOffset;
			float2 _SpherizeNoiseOffset;
			float2 _RadialMaskTiling;
			float _IntersectionHighlightPower;
			float _VerticalColourSaturationShift;
			float _VerticalColourValueMultiplier;
			float _VerticalColourHueShift;
			float _VerticalColourMaskRemapMin;
			float _VerticalColourMaskRemapMax;
			float _IntersectionHighlightColourHueShift;
			float _IntersectionHighlight;
			float _IntersectionHighlightRemapMax;
			float _VertexColourSaturationShift;
			float _IntersectionHighlightRemapMin;
			float _VertexColorHSVEnabledOn;
			float _VertexColourHueShift;
			float _RadialMaskRadius;
			float _IntersectionHighlightColourValueMultiplier;
			float _IntersectionHighlightColourSaturationShift;
			float _VerticalColourMaskPower;
			float _RadialMaskRadiusOverParticleLifetime;
			float _RadialMaskDistortionOctaves;
			float _RadialMaskDistortionScale;
			float _CameraDepthFadePower;
			float _CameraDepthFadeOffset;
			float _CameraDepthFadeLength;
			float _SubtractiveDepthFadePower;
			float _SubtractiveDepthFade;
			float _DepthFadePower;
			float _DepthFade;
			float _FresnelMask;
			float _FresnelMaskPower;
			float _FresnelMaskRemapMax;
			float _FresnelMaskRemapMin;
			float _VerticalMask2Power;
			float _VerticalMask2ObjectSpaceScale;
			float _VerticalMask2ObjectSpaceOffset;
			float _VerticalMask2RemapMax;
			float _VerticalMask2RemapMin;
			float _VerticalMask1Power;
			float _VerticalMask1ObjectSpaceScale;
			float _VerticalMask1ObjectSpaceOffset;
			float _VerticalMask1RemapMin;
			float _VerticalMask1RemapMax;
			float _RadialMaskPower;
			float _RadialMaskDistortion;
			float _RadialMaskDistortionPower;
			float _RadialMaskDistortionDilation;
			float _RadialMaskFeather;
			float _Tessellation;
			float _NoiseOctaves;
			float _ColourSaturationShift;
			float _VertexOffsetOverY1Power;
			float _VertexTwist;
			float _VertexUVOffsetBottom;
			float _VertexUVOffsetBottomPower;
			float _VertexUVOffsetTop;
			float _VertexUVOffsetTopPower;
			float _VertexNoise;
			float _VertexNoiseTwist;
			float _VertexNoiseDilation;
			float _VertexNoiseOctaves;
			float _VertexNoiseScale;
			float _VertexOffsetOverY2Power;
			float _ParticleRandomization;
			float _VertexWaveNoiseVerticalMaskRemapMax;
			float _VertexWaveNoiseVerticalMaskRemapMin;
			float _VertexWave;
			float _VertexWaveOffset;
			float _VertexWaveAnimation;
			float _VertexWaveScale;
			float _VertexNormalOffsetBottom;
			float _VertexNormalOffsetBottomPower;
			float _VertexNormalOffsetTop;
			float _VertexNormalOffsetTopPower;
			float _VertexNormalOffset;
			float _VertexWaveNoiseVerticalMaskPower;
			float _ColourValueMultiplier;
			float _VertexOffsetOverCircularYPower;
			float _NoiseRemapMax;
			float _ColourHueShift;
			float _ColourPower;
			float _Noise;
			float _ParticleSubtractNoiseoverLifetime1;
			float _NoisePower;
			float _NoiseDilation;
			float _Alpha;
			float _NoiseScale;
			float _NoiseDistortion;
			float _NoiseDistortionPower;
			float _NoiseDistortionDilation;
			float _NoiseRemapMin;
			float _NoiseDistortionOctaves;
			float _NoiseParallaxOffset;
			float _NoiseUVYPreRemapMax;
			float _NoiseUVYPreRemapMin;
			float _NoiseUVYPrePower;
			float _NoiseUVYPreScale;
			float _NoiseUVYPreOffset;
			float _NoiseXZTwist;
			float _NoiseXYTwist;
			float _SpherizeNoiseStrength;
			float _SpherizeNoiseRadius;
			float _UVSampleNoise;
			float _NoiseDistortionScale;
			float _IntersectionHighlightAlpha;
			float4 _EmissionColor;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			#ifdef _ENABLE_SHADOW_MATTE
			float _ShadowMatteFilter;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _DstBlend2;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _AlphaCutoff;
			float _AlphaCutoffShadow;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			float _EnableBlendModePreserveSpecularLighting;
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			float4x4 unity_CameraProjection;
			float4x4 unity_CameraInvProjection;
			float4x4 unity_WorldToCamera;
			float4x4 unity_CameraToWorld;


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/PickingSpaceTransforms.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Unlit/Unlit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#define ASE_NEEDS_TEXTURE_COORDINATES1
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES1
			#pragma shader_feature_local _SWAPUVXY1_ON
			#pragma shader_feature_local _UV2DNORMCENT1_NORMAL1 _UV2DNORMCENT1_CENTERED1
			#pragma shader_feature_local _VERTEXWAVEENABLED_ON
			#pragma shader_feature_local _VERTEXNOISEENABLED_ON
			#pragma shader_feature_local _VERTEXNOISETWISTENABLED_ON
			#pragma shader_feature_local _VERTEXNOISEDILATIONENABLED_ON
			#pragma shader_feature_local _RADIALMASKSUBTRACTIVE_ON
			#pragma shader_feature_local _NOISEDILATIONENABLED_ON
			#pragma shader_feature_local _NOISEXZTWISTENABLED_ON
			#pragma shader_feature_local _SPHERIZENOISE_ON
			#pragma shader_feature_local _WORLDSPACEUVS_ON
			#pragma shader_feature_local _OBJECTSPACEUVS_ON
			#pragma shader_feature_local _VERTEXWORLDPOS1_VERTEXPOS1 _VERTEXWORLDPOS1_WORLDPOS1
			#pragma shader_feature_local _NOISEUVPREREMAP_ON
			#pragma shader_feature_local _NOISEDISTORTIONENABLED_ON
			#pragma shader_feature_local _NOISEDISTORTIONDILATIONENABLED_ON
			#pragma shader_feature_local _VERTICALMASK2_ON
			#pragma shader_feature_local _VERTICALMASK1_ON
			#pragma shader_feature_local _RADIALMASK_ON
			#pragma shader_feature_local _UV2DCENTNORM_ON
			#pragma shader_feature_local _RADIALMASKDISTORTIONENABLED_ON
			#pragma shader_feature_local _RADIALMASKDISTORTIONDILATIONENABLED_ON
			#pragma shader_feature_local _VERTICALMASK1SUBTRACTIVE_ON
			#pragma shader_feature_local _VERTICALMASKSOBJECTSPACE_ON
			#pragma shader_feature_local _VERTICALMASK2SUBTRACTIVE_ON
			#pragma shader_feature_local _INVERTDEPTHFADE_ON


			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};


			
			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};

			void BuildSurfaceData(FragInputs fragInputs, SurfaceDescription surfaceDescription, float3 V, out SurfaceData surfaceData)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				#ifdef WRITE_NORMAL_BUFFER
				surfaceData.normalWS = fragInputs.tangentToWorld[2];
				#endif
			}

			void GetSurfaceAndBuiltinData(SurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                #endif

				#ifdef _ALPHATEST_ON
				DoAlphaTest ( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				BuildSurfaceData(fragInputs, surfaceDescription, V, surfaceData);
				ZERO_INITIALIZE(BuiltinData, builtinData);
				builtinData.opacity =  surfaceDescription.Alpha;

				#ifdef _ALPHATEST_ON
                    builtinData.alphaClipTreshold = surfaceDescription.AlphaClipThreshold;
                #endif

				#ifdef _DEPTHOFFSET_ON
                builtinData.depthOffset = surfaceDescription.DepthOffset;
                #endif


                ApplyDebugToBuiltinData(builtinData);
			}

			PackedVaryingsMeshToPS VertexFunction( AttributesMesh inputMesh  )
			{
				PackedVaryingsMeshToPS o;
				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				float localTwistXZ_float11_g793 = ( 0.0 );
				float2 texCoord721 = inputMesh.ase_texcoord * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord718 = inputMesh.ase_texcoord.xy * float2( 2,2 ) + float2( -1,-1 );
				#if defined( _UV2DNORMCENT1_NORMAL1 )
				float2 staticSwitch714 = texCoord721;
				#elif defined( _UV2DNORMCENT1_CENTERED1 )
				float2 staticSwitch714 = texCoord718;
				#else
				float2 staticSwitch714 = texCoord721;
				#endif
				#ifdef _SWAPUVXY1_ON
				float2 staticSwitch988 = (staticSwitch714).yx;
				#else
				float2 staticSwitch988 = staticSwitch714;
				#endif
				float UV_2D_Ym723 = (staticSwitch988).y;
				float3 Vertex_Normal_Offset947 = ( ( inputMesh.normalOS * _VertexNormalOffset ) + ( pow( UV_2D_Ym723 , _VertexNormalOffsetTopPower ) * inputMesh.normalOS * _VertexNormalOffsetTop ) + ( pow( ( 1.0 - UV_2D_Ym723 ) , _VertexNormalOffsetBottomPower ) * inputMesh.normalOS * _VertexNormalOffsetBottom ) );
				float2 UV_2Dm715 = staticSwitch988;
				float mulTime868 = _TimeParameters.x * _VertexWaveAnimation;
				float temp_output_7_0_g784 = _VertexWaveNoiseVerticalMaskRemapMin;
				float temp_output_23_0_g784 = _VertexWaveNoiseVerticalMaskRemapMax;
				float temp_output_20_0_g784 = UV_2D_Ym723;
				float temp_output_4_0_g784 = _VertexWaveNoiseVerticalMaskPower;
				float smoothstepResult22_g784 = smoothstep( temp_output_7_0_g784 , temp_output_23_0_g784 , pow( temp_output_20_0_g784 , temp_output_4_0_g784 ));
				float Vertex_WaveNoise_Vertical_Mask819 = smoothstepResult22_g784;
				#ifdef _VERTEXWAVEENABLED_ON
				float3 staticSwitch930 = ( ( sin( ( ( UV_2Dm715.y * TWO_PI * _VertexWaveScale ) - ( mulTime868 + ( _VertexWaveOffset * TWO_PI ) ) ) ) * _VertexWave * Vertex_WaveNoise_Vertical_Mask819 ) * inputMesh.normalOS );
				#else
				float3 staticSwitch930 = float3( 0,0,0 );
				#endif
				float3 Vertex_Sine943 = staticSwitch930;
				float localSimplexNoise_float2_g790 = ( 0.0 );
				float Particle_Stable_Random_X771 = ( ( inputMesh.ase_texcoord.w - 0.5 ) * 100.0 * _ParticleRandomization );
				float Particle_Age_Percent770 = inputMesh.ase_texcoord.z;
				#ifdef _WORLDSPACEUVS2_ON
				float staticSwitch860 = Particle_Age_Percent770;
				#else
				float staticSwitch860 = Particle_Stable_Random_X771;
				#endif
				float3 temp_cast_0 = (staticSwitch860).xxx;
				float4 Vertex_Noise_Offset852 = ( _VertexNoiseOffset + Particle_Stable_Random_X771 + ( _VertexNoiseParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g786 = ( float4( ( temp_cast_0 * _VertexNoiseScale * _VertexNoiseTiling ) , 0.0 ) - ( Vertex_Noise_Offset852 + ( _VertexNoiseAnimation * _TimeParameters.x ) ) );
				float3 temp_output_871_0 = (temp_output_10_0_g786).xyz;
				float3 position2_g790 = temp_output_871_0;
				float temp_output_871_15 = (temp_output_10_0_g786).w;
				float angle2_g790 = temp_output_871_15;
				float octaves2_g790 = _VertexNoiseOctaves;
				float noise2_g790 = 0.0;
				float3 gradient2_g790 = float3( 0,0,0 );
				SimplexNoise_float( position2_g790 , angle2_g790 , octaves2_g790 , noise2_g790 , gradient2_g790 );
				float localSimplexNoise_Caustics_float2_g789 = ( 0.0 );
				float3 position2_g789 = temp_output_871_0;
				float angle2_g789 = temp_output_871_15;
				float octaves2_g789 = _VertexNoiseOctaves;
				float gradientStrength2_g789 = _VertexNoiseDilation;
				float noise2_g789 = 0.0;
				float3 gradient2_g789 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g789 , angle2_g789 , octaves2_g789 , gradientStrength2_g789 , noise2_g789 , gradient2_g789 );
				#ifdef _VERTEXNOISEDILATIONENABLED_ON
				float3 staticSwitch886 = gradient2_g789;
				#else
				float3 staticSwitch886 = gradient2_g790;
				#endif
				float localTwistXZ_float11_g791 = ( 0.0 );
				float3 temp_output_10_0_g791 = staticSwitch886;
				float3 position11_g791 = temp_output_10_0_g791;
				float temp_output_9_0_g791 = _VertexNoiseTwist;
				float angle11_g791 = radians( temp_output_9_0_g791 );
				float3 output11_g791 = float3( 0,0,0 );
				TwistXZ_float( position11_g791 , angle11_g791 , output11_g791 );
				float3 temp_output_898_0 = output11_g791;
				#ifdef _VERTEXNOISETWISTENABLED_ON
				float3 staticSwitch973 = temp_output_898_0;
				#else
				float3 staticSwitch973 = staticSwitch886;
				#endif
				#ifdef _VERTEXNOISEENABLED_ON
				float3 staticSwitch933 = ( temp_output_898_0 * _VertexNoise * Vertex_WaveNoise_Vertical_Mask819 );
				#else
				float3 staticSwitch933 = staticSwitch973;
				#endif
				float3 Vertex_Noise946 = staticSwitch933;
				float2 break876 = ( ( UV_2Dm715 * float2( 2,1 ) ) - float2( 1,0 ) );
				float temp_output_907_0 = ( ( break876.x * pow( break876.y , _VertexUVOffsetTopPower ) ) * ( _VertexUVOffsetTop * 0.5 ) );
				float3 appendResult922 = (float3(temp_output_907_0 , 0.0 , 0.0));
				float3 appendResult921 = (float3(0.0 , temp_output_907_0 , 0.0));
				#ifdef _SWAPUVXY1_ON
				float3 staticSwitch931 = appendResult921;
				#else
				float3 staticSwitch931 = appendResult922;
				#endif
				float3 Vertex_Offset_Top944 = staticSwitch931;
				float2 break869 = ( ( UV_2Dm715 * float2( 2,1 ) ) - float2( 1,0 ) );
				float temp_output_906_0 = ( ( break869.x * pow( ( 1.0 - break869.y ) , _VertexUVOffsetBottomPower ) ) * ( _VertexUVOffsetBottom * 0.5 ) );
				float3 appendResult924 = (float3(temp_output_906_0 , 0.0 , 0.0));
				float3 appendResult923 = (float3(0.0 , temp_output_906_0 , 0.0));
				#ifdef _SWAPUVXY1_ON
				float3 staticSwitch932 = appendResult923;
				#else
				float3 staticSwitch932 = appendResult924;
				#endif
				float3 Vertex_Offset_Bottom945 = staticSwitch932;
				float3 temp_output_10_0_g793 = ( ( Vertex_Normal_Offset947 + Vertex_Sine943 + Vertex_Noise946 + Vertex_Offset_Top944 + Vertex_Offset_Bottom945 ) + inputMesh.positionOS );
				float3 position11_g793 = temp_output_10_0_g793;
				float temp_output_9_0_g793 = -_VertexTwist;
				float angle11_g793 = radians( temp_output_9_0_g793 );
				float3 output11_g793 = float3( 0,0,0 );
				TwistXZ_float( position11_g793 , angle11_g793 , output11_g793 );
				float3 worldToObjDir948 = mul( GetWorldToObjectMatrix(), float4( _VertexOffsetOverY1, 0.0 ) ).xyz;
				float3 worldToObjDir950 = mul( GetWorldToObjectMatrix(), float4( _VertexOffsetOverY2, 0.0 ) ).xyz;
				float UV_2D_Circular_Y929 = sin( ( UV_2D_Ym723 * PI ) );
				float3 Vertex_Offset_over_Y966 = ( ( worldToObjDir948 * pow( UV_2D_Ym723 , _VertexOffsetOverY1Power ) ) + ( worldToObjDir950 * pow( UV_2D_Ym723 , _VertexOffsetOverY2Power ) ) + ( _VertexOffsetOverCircularY * pow( UV_2D_Circular_Y929 , _VertexOffsetOverCircularYPower ) ) );
				float3 Vertex_Offset971 = ( output11_g793 + Vertex_Offset_over_Y966 );
				
				float3 ase_positionWS = GetAbsolutePositionWS( TransformObjectToWorld( ( inputMesh.positionOS ).xyz ) );
				o.ase_texcoord2.xyz = ase_positionWS;
				float4 ase_positionCS = TransformWorldToHClip( TransformObjectToWorld( ( inputMesh.positionOS ).xyz ) );
				float4 screenPos = ComputeScreenPos( ase_positionCS, _ProjectionParams.x );
				o.ase_texcoord3 = screenPos;
				float3 ase_normalWS = TransformObjectToWorldNormal( inputMesh.normalOS );
				o.ase_texcoord5.xyz = ase_normalWS;
				float3 objectToViewPos = TransformWorldToView( TransformObjectToWorld( inputMesh.positionOS ) );
				float eyeDepth = -objectToViewPos.z;
				o.ase_texcoord2.w = eyeDepth;
				
				o.ase_texcoord = inputMesh.ase_texcoord;
				o.ase_texcoord1 = float4(inputMesh.positionOS,1);
				o.ase_texcoord4 = inputMesh.ase_texcoord1;
				o.ase_color = inputMesh.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord5.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =  Vertex_Offset971;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS = inputMesh.normalOS;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				o.positionCS = TransformWorldToHClip(positionRWS);
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_texcoord1 = v.ase_texcoord1;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput
					, out float4 outColor : SV_Target0
					#ifdef _DEPTHOFFSET_ON
					, out float outputDepth : SV_Depth
					#endif
					
					)
			{
				UNITY_SETUP_INSTANCE_ID( packedInput );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = float3( 1.0, 1.0, 1.0 );

				float temp_output_7_0_g781 = _NoiseRemapMin;
				float temp_output_23_0_g781 = _NoiseRemapMax;
				float localSimplexNoise_float2_g779 = ( 0.0 );
				float2 texCoord721 = packedInput.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord718 = packedInput.ase_texcoord.xy * float2( 2,2 ) + float2( -1,-1 );
				#if defined( _UV2DNORMCENT1_NORMAL1 )
				float2 staticSwitch714 = texCoord721;
				#elif defined( _UV2DNORMCENT1_CENTERED1 )
				float2 staticSwitch714 = texCoord718;
				#else
				float2 staticSwitch714 = texCoord721;
				#endif
				#ifdef _SWAPUVXY1_ON
				float2 staticSwitch988 = (staticSwitch714).yx;
				#else
				float2 staticSwitch988 = staticSwitch714;
				#endif
				float2 UV_2Dm715 = staticSwitch988;
				float3 ase_positionWS = packedInput.ase_texcoord2.xyz;
				#if defined( _VERTEXWORLDPOS1_VERTEXPOS1 )
				float3 staticSwitch734 = packedInput.ase_texcoord1.xyz;
				#elif defined( _VERTEXWORLDPOS1_WORLDPOS1 )
				float3 staticSwitch734 = ase_positionWS;
				#else
				float3 staticSwitch734 = packedInput.ase_texcoord1.xyz;
				#endif
				#ifdef _SWAPUVXY7_ON
				float3 staticSwitch735 = (staticSwitch734).yxz;
				#else
				float3 staticSwitch735 = staticSwitch734;
				#endif
				float3 UV_3D_VWP1739 = staticSwitch735;
				#ifdef _OBJECTSPACEUVS_ON
				float3 staticSwitch792 = UV_3D_VWP1739;
				#else
				float3 staticSwitch792 = float3( UV_2Dm715 ,  0.0 );
				#endif
				float UV_3D_World_VWP2682 = 0.0;
				float3 temp_cast_1 = (UV_3D_World_VWP2682).xxx;
				#ifdef _WORLDSPACEUVS_ON
				float3 staticSwitch793 = temp_cast_1;
				#else
				float3 staticSwitch793 = staticSwitch792;
				#endif
				float4 screenPos = packedInput.ase_texcoord3;
				float4 ase_positionSSNorm = screenPos / screenPos.w;
				ase_positionSSNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_positionSSNorm.z : ase_positionSSNorm.z * 0.5 + 0.5;
				float2 appendResult745 = (float2(ase_positionSSNorm.x , ase_positionSSNorm.y));
				float2 Screen_UV747 = appendResult745;
				float2 appendResult746 = (float2(_ScreenParams.x , _ScreenParams.y));
				float2 Screen_Resolution748 = appendResult746;
				float2 Screen_Position750 = ( Screen_UV747 * Screen_Resolution748 );
				float2 screenPosition441 = Screen_Position750;
				float mulTime440 = _TimeParameters.x * 60.0;
				float time441 = mulTime440;
				float3 localHash33441 = Hash33( screenPosition441 , time441 );
				float3 Sample_Noise445 = ( (localHash33441*2.0 + -1.0) * _UVSampleNoise );
				float3 Noise_Base_UV795 = ( staticSwitch793 + Sample_Noise445 );
				float localSpherize_float5_g755 = ( 0.0 );
				float2 uv5_g755 = (Noise_Base_UV795).xy;
				float2 center5_g755 = ( _SpherizeNoiseOffset + float2( 0.5,0.5 ) );
				float radius5_g755 = _SpherizeNoiseRadius;
				float strength5_g755 = _SpherizeNoiseStrength;
				float2 output5_g755 = float2( 0,0 );
				Spherize_float( uv5_g755 , center5_g755 , radius5_g755 , strength5_g755 , output5_g755 );
				float3 appendResult506 = (float3(output5_g755 , (Noise_Base_UV795).z));
				#ifdef _SPHERIZENOISE_ON
				float3 staticSwitch505 = appendResult506;
				#else
				float3 staticSwitch505 = Noise_Base_UV795;
				#endif
				float2 center45_g765 = ( _NoiseXYTwistOffset + float2( 0.5,0.5 ) );
				float2 delta6_g765 = ( staticSwitch505.xy - center45_g765 );
				float angle10_g765 = ( length( delta6_g765 ) * radians( _NoiseXYTwist ) );
				float x23_g765 = ( ( cos( angle10_g765 ) * delta6_g765.x ) - ( sin( angle10_g765 ) * delta6_g765.y ) );
				float2 break40_g765 = center45_g765;
				float2 break41_g765 = float2( 0,0 );
				float y35_g765 = ( ( sin( angle10_g765 ) * delta6_g765.x ) + ( cos( angle10_g765 ) * delta6_g765.y ) );
				float2 appendResult44_g765 = (float2(( x23_g765 + break40_g765.x + break41_g765.x ) , ( break40_g765.y + break41_g765.y + y35_g765 )));
				float2 temp_output_499_0 = appendResult44_g765;
				float localTwistXZ_float11_g763 = ( 0.0 );
				float3 temp_output_10_0_g763 = float3( temp_output_499_0 ,  0.0 );
				float3 position11_g763 = temp_output_10_0_g763;
				float temp_output_9_0_g763 = _NoiseXZTwist;
				float angle11_g763 = radians( temp_output_9_0_g763 );
				float3 output11_g763 = float3( 0,0,0 );
				TwistXZ_float( position11_g763 , angle11_g763 , output11_g763 );
				#ifdef _NOISEXZTWISTENABLED_ON
				float3 staticSwitch498 = output11_g763;
				#else
				float3 staticSwitch498 = float3( temp_output_499_0 ,  0.0 );
				#endif
				float3 break469 = staticSwitch498;
				float temp_output_478_0 = ( ( break469.y - _NoiseUVYPreOffset ) * _NoiseUVYPreScale );
				float temp_output_7_0_g770 = abs( temp_output_478_0 );
				float temp_output_7_0_g771 = abs( temp_output_478_0 );
				float smoothstepResult16_g771 = smoothstep( _NoiseUVYPreRemapMin , _NoiseUVYPreRemapMax , pow( temp_output_7_0_g771 , _NoiseUVYPrePower ));
				#ifdef _NOISEUVPREREMAP_ON
				float staticSwitch485 = ( smoothstepResult16_g771 * sign( temp_output_478_0 ) );
				#else
				float staticSwitch485 = ( pow( temp_output_7_0_g770 , _NoiseUVYPrePower ) * sign( temp_output_478_0 ) );
				#endif
				float3 appendResult486 = (float3(break469.x , staticSwitch485 , 0.0));
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_positionWS );
				float3 ase_viewDirWS = normalize( ase_viewVectorWS );
				float3 temp_output_787_0 = ( -ase_viewDirWS * _NoiseParallaxOffset );
				#ifdef _SWAPUVXY3_ON
				float3 staticSwitch789 = (temp_output_787_0).yxz;
				#else
				float3 staticSwitch789 = temp_output_787_0;
				#endif
				float3 Parallax_Offset790 = staticSwitch789;
				float localSimplexNoise_float2_g761 = ( 0.0 );
				float Particle_Stable_Random_X771 = ( ( packedInput.ase_texcoord.w - 0.5 ) * 100.0 * _ParticleRandomization );
				float Particle_Age_Percent770 = packedInput.ase_texcoord.z;
				float4 Distortion_Noise_Offset813 = ( _NoiseDistortionOffset + Particle_Stable_Random_X771 + ( _NoiseDistortionParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g758 = ( float4( ( ( Noise_Base_UV795 + Parallax_Offset790 ) * _NoiseDistortionScale * _NoiseDistortionTiling ) , 0.0 ) - ( Distortion_Noise_Offset813 + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 temp_output_322_0 = (temp_output_10_0_g758).xyz;
				float3 position2_g761 = temp_output_322_0;
				float temp_output_322_15 = (temp_output_10_0_g758).w;
				float angle2_g761 = temp_output_322_15;
				float octaves2_g761 = _NoiseDistortionOctaves;
				float noise2_g761 = 0.0;
				float3 gradient2_g761 = float3( 0,0,0 );
				SimplexNoise_float( position2_g761 , angle2_g761 , octaves2_g761 , noise2_g761 , gradient2_g761 );
				float localSimplexNoise_Caustics_float2_g760 = ( 0.0 );
				float3 position2_g760 = temp_output_322_0;
				float angle2_g760 = temp_output_322_15;
				float octaves2_g760 = _NoiseDistortionOctaves;
				float gradientStrength2_g760 = _NoiseDistortionDilation;
				float noise2_g760 = 0.0;
				float3 gradient2_g760 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g760 , angle2_g760 , octaves2_g760 , gradientStrength2_g760 , noise2_g760 , gradient2_g760 );
				#ifdef _NOISEDISTORTIONDILATIONENABLED_ON
				float3 staticSwitch329 = gradient2_g760;
				#else
				float3 staticSwitch329 = gradient2_g761;
				#endif
				float3 temp_output_7_0_g766 = abs( staticSwitch329 );
				float3 temp_cast_6 = (_NoiseDistortionPower).xxx;
				#ifdef _NOISEDISTORTIONENABLED_ON
				float3 staticSwitch336 = ( ( pow( temp_output_7_0_g766 , temp_cast_6 ) * sign( staticSwitch329 ) ) * _NoiseDistortion );
				#else
				float3 staticSwitch336 = float3( 0,0,0 );
				#endif
				float3 Noise_Distortion337 = staticSwitch336;
				float3 Noise_UV494 = ( appendResult486 + Parallax_Offset790 + Noise_Distortion337 );
				float4 Noise_Offset786 = ( _NoiseOffset + Particle_Stable_Random_X771 + ( _NoiseParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g775 = ( float4( ( Noise_UV494 * _NoiseScale * _NoiseTiling ) , 0.0 ) - ( Noise_Offset786 + ( _NoiseAnimation * _TimeParameters.x ) ) );
				float3 temp_output_344_0 = (temp_output_10_0_g775).xyz;
				float3 position2_g779 = temp_output_344_0;
				float temp_output_344_15 = (temp_output_10_0_g775).w;
				float angle2_g779 = temp_output_344_15;
				float octaves2_g779 = _NoiseOctaves;
				float noise2_g779 = 0.0;
				float3 gradient2_g779 = float3( 0,0,0 );
				SimplexNoise_float( position2_g779 , angle2_g779 , octaves2_g779 , noise2_g779 , gradient2_g779 );
				float localSimplexNoise_Caustics_float2_g778 = ( 0.0 );
				float3 position2_g778 = temp_output_344_0;
				float angle2_g778 = temp_output_344_15;
				float octaves2_g778 = _NoiseOctaves;
				float gradientStrength2_g778 = _NoiseDilation;
				float noise2_g778 = 0.0;
				float3 gradient2_g778 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g778 , angle2_g778 , octaves2_g778 , gradientStrength2_g778 , noise2_g778 , gradient2_g778 );
				#ifdef _NOISEDILATIONENABLED_ON
				float staticSwitch349 = noise2_g778;
				#else
				float staticSwitch349 = noise2_g779;
				#endif
				float temp_output_20_0_g781 = staticSwitch349;
				float temp_output_4_0_g781 = _NoisePower;
				float smoothstepResult22_g781 = smoothstep( temp_output_7_0_g781 , temp_output_23_0_g781 , pow( temp_output_20_0_g781 , temp_output_4_0_g781 ));
				float Particle_Subtract_Noise_over_Lifetime779 = ( packedInput.ase_texcoord4.y * _ParticleSubtractNoiseoverLifetime1 );
				float temp_output_356_0 = ( smoothstepResult22_g781 - Particle_Subtract_Noise_over_Lifetime779 );
				float lerpResult359 = lerp( 1.0 , temp_output_356_0 , _Noise);
				float Noise360 = lerpResult359;
				float Particle_Mask_Radius_over_Lifetime630 = packedInput.ase_texcoord4.x;
				float lerpResult245 = lerp( 1.0 , Particle_Mask_Radius_over_Lifetime630 , _RadialMaskRadiusOverParticleLifetime);
				float temp_output_6_0_g772 = ( 1.0 - ( _RadialMaskRadius * lerpResult245 ) );
				float lerpResult5_g772 = lerp( temp_output_6_0_g772 , 1.0 , _RadialMaskFeather);
				float2 texCoord991 = packedInput.ase_texcoord.xy * float2( 2,2 ) + float2( -1,-1 );
				float2 texCoord997 = packedInput.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				#ifdef _UV2DCENTNORM_ON
				float2 staticSwitch996 = texCoord997;
				#else
				float2 staticSwitch996 = texCoord991;
				#endif
				#ifdef _SWAPUVXY1_ON
				float2 staticSwitch990 = (staticSwitch996).yx;
				#else
				float2 staticSwitch990 = staticSwitch996;
				#endif
				float2 UV_2D_Centeredm992 = staticSwitch990;
				float localSimplexNoise_float2_g757 = ( 0.0 );
				float4 Mask_Distortion_Noise_Offset805 = ( _RadialMaskDistortionOffset + Particle_Stable_Random_X771 + ( _RadialMaskDistortionParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g725 = ( float4( ( Noise_Base_UV795 * _RadialMaskDistortionScale * _RadialMaskDistortionTiling ) , 0.0 ) - ( Mask_Distortion_Noise_Offset805 + ( _RadialMaskDistortionAnimation * _TimeParameters.x ) ) );
				float3 temp_output_305_0 = (temp_output_10_0_g725).xyz;
				float3 position2_g757 = temp_output_305_0;
				float temp_output_305_15 = (temp_output_10_0_g725).w;
				float angle2_g757 = temp_output_305_15;
				float octaves2_g757 = _RadialMaskDistortionOctaves;
				float noise2_g757 = 0.0;
				float3 gradient2_g757 = float3( 0,0,0 );
				SimplexNoise_float( position2_g757 , angle2_g757 , octaves2_g757 , noise2_g757 , gradient2_g757 );
				float localSimplexNoise_Caustics_float2_g756 = ( 0.0 );
				float3 position2_g756 = temp_output_305_0;
				float angle2_g756 = temp_output_305_15;
				float octaves2_g756 = _RadialMaskDistortionOctaves;
				float gradientStrength2_g756 = _RadialMaskDistortionDilation;
				float noise2_g756 = 0.0;
				float3 gradient2_g756 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g756 , angle2_g756 , octaves2_g756 , gradientStrength2_g756 , noise2_g756 , gradient2_g756 );
				#ifdef _RADIALMASKDISTORTIONDILATIONENABLED_ON
				float3 staticSwitch310 = gradient2_g756;
				#else
				float3 staticSwitch310 = gradient2_g757;
				#endif
				float3 temp_output_7_0_g762 = abs( staticSwitch310 );
				float3 temp_cast_9 = (_RadialMaskDistortionPower).xxx;
				#ifdef _RADIALMASKDISTORTIONENABLED_ON
				float3 staticSwitch325 = ( ( pow( temp_output_7_0_g762 , temp_cast_9 ) * sign( staticSwitch310 ) ) * _RadialMaskDistortion );
				#else
				float3 staticSwitch325 = float3( 0,0,0 );
				#endif
				float3 Mask_Distortion328 = staticSwitch325;
				float temp_output_7_0_g772 = ( 1.0 - length( ( ( ( UV_2D_Centeredm992 + (Mask_Distortion328).xy ) - _RadialMaskOffset ) * _RadialMaskTiling ) ) );
				float smoothstepResult4_g772 = smoothstep( temp_output_6_0_g772 , lerpResult5_g772 , temp_output_7_0_g772);
				#ifdef _RADIALMASK_ON
				float staticSwitch256 = ( 1.0 - pow( smoothstepResult4_g772 , _RadialMaskPower ) );
				#else
				float staticSwitch256 = 0.0;
				#endif
				float Radial_Mask257 = staticSwitch256;
				#ifdef _RADIALMASKSUBTRACTIVE_ON
				float staticSwitch204 = Radial_Mask257;
				#else
				float staticSwitch204 = 0.0;
				#endif
				float temp_output_7_0_g777 = _VerticalMask1RemapMax;
				float temp_output_23_0_g777 = _VerticalMask1RemapMin;
				float UV_2D_Ym723 = (staticSwitch988).y;
				float UV_3D_Y_VWP1760 = (staticSwitch735).y;
				#ifdef _VERTICALMASKSOBJECTSPACE_ON
				float staticSwitch270 = ( ( UV_3D_Y_VWP1760 - _VerticalMask1ObjectSpaceOffset ) / _VerticalMask1ObjectSpaceScale );
				#else
				float staticSwitch270 = UV_2D_Ym723;
				#endif
				float temp_output_20_0_g777 = staticSwitch270;
				float smoothstepResult25_g777 = smoothstep( temp_output_7_0_g777 , temp_output_23_0_g777 , temp_output_20_0_g777);
				float temp_output_4_0_g777 = _VerticalMask1Power;
				float temp_output_278_0 = pow( smoothstepResult25_g777 , temp_output_4_0_g777 );
				#ifdef _VERTICALMASK1SUBTRACTIVE_ON
				float staticSwitch282 = ( 1.0 - temp_output_278_0 );
				#else
				float staticSwitch282 = temp_output_278_0;
				#endif
				float Vertical_Mask_1287 = staticSwitch282;
				#ifdef _VERTICALMASK1SUBTRACTIVE_ON
				float staticSwitch206 = ( staticSwitch204 + Vertical_Mask_1287 );
				#else
				float staticSwitch206 = staticSwitch204;
				#endif
				#ifdef _VERTICALMASK1_ON
				float staticSwitch207 = staticSwitch206;
				#else
				float staticSwitch207 = staticSwitch204;
				#endif
				float temp_output_7_0_g780 = _VerticalMask2RemapMin;
				float temp_output_23_0_g780 = _VerticalMask2RemapMax;
				#ifdef _VERTICALMASKSOBJECTSPACE_ON
				float staticSwitch286 = ( ( UV_3D_Y_VWP1760 - _VerticalMask2ObjectSpaceOffset ) / _VerticalMask2ObjectSpaceScale );
				#else
				float staticSwitch286 = UV_2D_Ym723;
				#endif
				float temp_output_20_0_g780 = staticSwitch286;
				float smoothstepResult25_g780 = smoothstep( temp_output_7_0_g780 , temp_output_23_0_g780 , temp_output_20_0_g780);
				float temp_output_4_0_g780 = _VerticalMask2Power;
				float temp_output_288_0 = pow( smoothstepResult25_g780 , temp_output_4_0_g780 );
				#ifdef _VERTICALMASK2SUBTRACTIVE_ON
				float staticSwitch290 = ( 1.0 - temp_output_288_0 );
				#else
				float staticSwitch290 = temp_output_288_0;
				#endif
				float Vertical_Mask_2291 = staticSwitch290;
				#ifdef _VERTICALMASK2SUBTRACTIVE_ON
				float staticSwitch208 = ( staticSwitch207 + Vertical_Mask_2291 );
				#else
				float staticSwitch208 = staticSwitch207;
				#endif
				#ifdef _VERTICALMASK2_ON
				float staticSwitch209 = staticSwitch208;
				#else
				float staticSwitch209 = staticSwitch207;
				#endif
				float3 ase_normalWS = packedInput.ase_texcoord5.xyz;
				float fresnelNdotV427 = dot( ase_normalWS, ase_viewDirWS );
				float fresnelNode427 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV427, _FresnelMaskPower ) );
				float smoothstepResult430 = smoothstep( _FresnelMaskRemapMin , _FresnelMaskRemapMax , fresnelNode427);
				float lerpResult432 = lerp( 1.0 , smoothstepResult430 , _FresnelMask);
				float Fresnel_Mask433 = lerpResult432;
				float temp_output_7_0_g782 = 0.0;
				float temp_output_23_0_g782 = 1.0;
				float screenDepth381 = LinearEyeDepth(SampleCameraDepth( ase_positionSSNorm.xy ),_ZBufferParams);
				float distanceDepth381 = saturate( abs( ( screenDepth381 - LinearEyeDepth( ase_positionSSNorm.z,_ZBufferParams ) ) / ( _DepthFade ) ) );
				#ifdef _INVERTDEPTHFADE_ON
				float staticSwitch386 = ( 1.0 - distanceDepth381 );
				#else
				float staticSwitch386 = distanceDepth381;
				#endif
				float temp_output_20_0_g782 = staticSwitch386;
				float temp_output_4_0_g782 = _DepthFadePower;
				float smoothstepResult22_g782 = smoothstep( temp_output_7_0_g782 , temp_output_23_0_g782 , pow( temp_output_20_0_g782 , temp_output_4_0_g782 ));
				float temp_output_7_0_g783 = 0.0;
				float temp_output_23_0_g783 = 1.0;
				float screenDepth384 = LinearEyeDepth(SampleCameraDepth( ase_positionSSNorm.xy ),_ZBufferParams);
				float distanceDepth384 = saturate( abs( ( screenDepth384 - LinearEyeDepth( ase_positionSSNorm.z,_ZBufferParams ) ) / ( _SubtractiveDepthFade ) ) );
				float temp_output_20_0_g783 = ( 1.0 - distanceDepth384 );
				float temp_output_4_0_g783 = _SubtractiveDepthFadePower;
				float smoothstepResult22_g783 = smoothstep( temp_output_7_0_g783 , temp_output_23_0_g783 , pow( temp_output_20_0_g783 , temp_output_4_0_g783 ));
				float Depth_Fade401 = saturate( ( smoothstepResult22_g782 - smoothstepResult22_g783 ) );
				float temp_output_7_0_g785 = 0.0;
				float temp_output_23_0_g785 = 1.0;
				float eyeDepth = packedInput.ase_texcoord2.w;
				float cameraDepthFade392 = (( eyeDepth -_ProjectionParams.y - _CameraDepthFadeOffset ) / _CameraDepthFadeLength);
				float temp_output_20_0_g785 = saturate( cameraDepthFade392 );
				float temp_output_4_0_g785 = _CameraDepthFadePower;
				float smoothstepResult22_g785 = smoothstep( temp_output_7_0_g785 , temp_output_23_0_g785 , pow( temp_output_20_0_g785 , temp_output_4_0_g785 ));
				float Camera_Depth_Fade400 = smoothstepResult22_g785;
				float temp_output_7_0_g788 = _IntersectionHighlightRemapMin;
				float temp_output_23_0_g788 = _IntersectionHighlightRemapMax;
				float screenDepth372 = LinearEyeDepth(SampleCameraDepth( ase_positionSSNorm.xy ),_ZBufferParams);
				float distanceDepth372 = saturate( abs( ( screenDepth372 - LinearEyeDepth( ase_positionSSNorm.z,_ZBufferParams ) ) / ( _IntersectionHighlight ) ) );
				float temp_output_20_0_g788 = ( 1.0 - distanceDepth372 );
				float temp_output_4_0_g788 = _IntersectionHighlightPower;
				float smoothstepResult22_g788 = smoothstep( temp_output_7_0_g788 , temp_output_23_0_g788 , pow( temp_output_20_0_g788 , temp_output_4_0_g788 ));
				float Intersection_Highlight378 = smoothstepResult22_g788;
				float Intersection_Highlight_Alpha103 = ( _IntersectionHighlightColour.a * _IntersectionHighlightAlpha );
				float temp_output_227_0 = saturate( ( ( saturate( ( Noise360 - staticSwitch209 ) ) * Fresnel_Mask433 * (packedInput.ase_color).a * Depth_Fade401 * Camera_Depth_Fade400 * _Alpha ) + ( Intersection_Highlight378 * Intersection_Highlight_Alpha103 ) ) );
				#ifdef _RADIALMASKSUBTRACTIVE_ON
				float staticSwitch235 = temp_output_227_0;
				#else
				float staticSwitch235 = ( temp_output_227_0 * ( 1.0 - Radial_Mask257 ) );
				#endif
				float Alpha236 = staticSwitch235;
				

				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				surfaceDescription.Alpha = Alpha236;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
				posInput.deviceDepth = input.positionSS.z;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

				#if defined(_DEPTHOFFSET_ON) || defined(ASE_DEPTH_WRITE_ON)
				outputDepth = posInput.deviceDepth;
				#endif

				outColor = float4( _ObjectId, _PassValue, 1.0, 1.0 );
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthForwardOnly"
			Tags { "LightMode"="DepthForwardOnly" }

			Cull [_CullMode]
			ZWrite On
			Stencil
			{
				Ref [_StencilRefDepth]
				WriteMask [_StencilWriteMaskDepth]
				Comp Always
				Pass Replace
			}


			ColorMask 0 0

			HLSLPROGRAM

			#pragma shader_feature_local_fragment _ENABLE_FOG_ON_TRANSPARENT
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#define HAVE_MESH_MODIFICATION 1
			#define ASE_VERSION 19905
			#define ASE_SRP_VERSION 170200


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT

			#pragma multi_compile _ WRITE_MSAA_DEPTH

			#pragma multi_compile _ DOTS_INSTANCING_ON

			#pragma vertex Vert
			#pragma fragment Frag

			#define SHADERPASS SHADERPASS_DEPTH_ONLY
            #define SUPPORT_GLOBAL_MIP_BIAS 1

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl"

			CBUFFER_START( UnityPerMaterial )
			float4 _VerticalColourB;
			float4 _RadialMaskDistortionOffset;
			float4 _RadialMaskDistortionParticleAnimation;
			float4 _RadialMaskDistortionAnimation;
			float4 _VerticalColourA;
			float4 _ColourA;
			float4 _ColourB;
			float4 _NoiseDistortionOffset;
			float4 _NoiseDistortionParticleAnimation;
			float4 _IntersectionHighlightColour;
			float4 _VertexNoiseAnimation;
			float4 _VertexNoiseParticleAnimation;
			float4 _VertexNoiseOffset;
			float4 _NoiseDistortionAnimation;
			float4 _NoiseOffset;
			float4 _NoiseParticleAnimation;
			float4 _NoiseAnimation;
			float3 _VertexNoiseTiling;
			float3 _NoiseTiling;
			float3 _RadialMaskDistortionTiling;
			float3 _VertexOffsetOverCircularY;
			float3 _NoiseDistortionTiling;
			float3 _VertexOffsetOverY2;
			float3 _VertexOffsetOverY1;
			float2 _RadialMaskOffset;
			float2 _NoiseXYTwistOffset;
			float2 _SpherizeNoiseOffset;
			float2 _RadialMaskTiling;
			float _IntersectionHighlightPower;
			float _VerticalColourSaturationShift;
			float _VerticalColourValueMultiplier;
			float _VerticalColourHueShift;
			float _VerticalColourMaskRemapMin;
			float _VerticalColourMaskRemapMax;
			float _IntersectionHighlightColourHueShift;
			float _IntersectionHighlight;
			float _IntersectionHighlightRemapMax;
			float _VertexColourSaturationShift;
			float _IntersectionHighlightRemapMin;
			float _VertexColorHSVEnabledOn;
			float _VertexColourHueShift;
			float _RadialMaskRadius;
			float _IntersectionHighlightColourValueMultiplier;
			float _IntersectionHighlightColourSaturationShift;
			float _VerticalColourMaskPower;
			float _RadialMaskRadiusOverParticleLifetime;
			float _RadialMaskDistortionOctaves;
			float _RadialMaskDistortionScale;
			float _CameraDepthFadePower;
			float _CameraDepthFadeOffset;
			float _CameraDepthFadeLength;
			float _SubtractiveDepthFadePower;
			float _SubtractiveDepthFade;
			float _DepthFadePower;
			float _DepthFade;
			float _FresnelMask;
			float _FresnelMaskPower;
			float _FresnelMaskRemapMax;
			float _FresnelMaskRemapMin;
			float _VerticalMask2Power;
			float _VerticalMask2ObjectSpaceScale;
			float _VerticalMask2ObjectSpaceOffset;
			float _VerticalMask2RemapMax;
			float _VerticalMask2RemapMin;
			float _VerticalMask1Power;
			float _VerticalMask1ObjectSpaceScale;
			float _VerticalMask1ObjectSpaceOffset;
			float _VerticalMask1RemapMin;
			float _VerticalMask1RemapMax;
			float _RadialMaskPower;
			float _RadialMaskDistortion;
			float _RadialMaskDistortionPower;
			float _RadialMaskDistortionDilation;
			float _RadialMaskFeather;
			float _Tessellation;
			float _NoiseOctaves;
			float _ColourSaturationShift;
			float _VertexOffsetOverY1Power;
			float _VertexTwist;
			float _VertexUVOffsetBottom;
			float _VertexUVOffsetBottomPower;
			float _VertexUVOffsetTop;
			float _VertexUVOffsetTopPower;
			float _VertexNoise;
			float _VertexNoiseTwist;
			float _VertexNoiseDilation;
			float _VertexNoiseOctaves;
			float _VertexNoiseScale;
			float _VertexOffsetOverY2Power;
			float _ParticleRandomization;
			float _VertexWaveNoiseVerticalMaskRemapMax;
			float _VertexWaveNoiseVerticalMaskRemapMin;
			float _VertexWave;
			float _VertexWaveOffset;
			float _VertexWaveAnimation;
			float _VertexWaveScale;
			float _VertexNormalOffsetBottom;
			float _VertexNormalOffsetBottomPower;
			float _VertexNormalOffsetTop;
			float _VertexNormalOffsetTopPower;
			float _VertexNormalOffset;
			float _VertexWaveNoiseVerticalMaskPower;
			float _ColourValueMultiplier;
			float _VertexOffsetOverCircularYPower;
			float _NoiseRemapMax;
			float _ColourHueShift;
			float _ColourPower;
			float _Noise;
			float _ParticleSubtractNoiseoverLifetime1;
			float _NoisePower;
			float _NoiseDilation;
			float _Alpha;
			float _NoiseScale;
			float _NoiseDistortion;
			float _NoiseDistortionPower;
			float _NoiseDistortionDilation;
			float _NoiseRemapMin;
			float _NoiseDistortionOctaves;
			float _NoiseParallaxOffset;
			float _NoiseUVYPreRemapMax;
			float _NoiseUVYPreRemapMin;
			float _NoiseUVYPrePower;
			float _NoiseUVYPreScale;
			float _NoiseUVYPreOffset;
			float _NoiseXZTwist;
			float _NoiseXYTwist;
			float _SpherizeNoiseStrength;
			float _SpherizeNoiseRadius;
			float _UVSampleNoise;
			float _NoiseDistortionScale;
			float _IntersectionHighlightAlpha;
			float4 _EmissionColor;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			#ifdef _ENABLE_SHADOW_MATTE
			float _ShadowMatteFilter;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _DstBlend2;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _AlphaCutoff;
			float _AlphaCutoffShadow;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			float _EnableBlendModePreserveSpecularLighting;
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			float4x4 unity_CameraProjection;
			float4x4 unity_CameraInvProjection;
			float4x4 unity_WorldToCamera;
			float4x4 unity_CameraToWorld;


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Unlit/Unlit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#define ASE_NEEDS_RELATIVE_WORLD_POS
			#define ASE_NEEDS_FRAG_RELATIVE_WORLD_POS
			#define ASE_NEEDS_FRAG_SCREEN_POSITION_NORMALIZED
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_TEXTURE_COORDINATES1
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES1
			#pragma shader_feature_local _SWAPUVXY1_ON
			#pragma shader_feature_local _UV2DNORMCENT1_NORMAL1 _UV2DNORMCENT1_CENTERED1
			#pragma shader_feature_local _VERTEXWAVEENABLED_ON
			#pragma shader_feature_local _VERTEXNOISEENABLED_ON
			#pragma shader_feature_local _VERTEXNOISETWISTENABLED_ON
			#pragma shader_feature_local _VERTEXNOISEDILATIONENABLED_ON
			#pragma shader_feature_local _RADIALMASKSUBTRACTIVE_ON
			#pragma shader_feature_local _NOISEDILATIONENABLED_ON
			#pragma shader_feature_local _NOISEXZTWISTENABLED_ON
			#pragma shader_feature_local _SPHERIZENOISE_ON
			#pragma shader_feature_local _WORLDSPACEUVS_ON
			#pragma shader_feature_local _OBJECTSPACEUVS_ON
			#pragma shader_feature_local _VERTEXWORLDPOS1_VERTEXPOS1 _VERTEXWORLDPOS1_WORLDPOS1
			#pragma shader_feature_local _NOISEUVPREREMAP_ON
			#pragma shader_feature_local _NOISEDISTORTIONENABLED_ON
			#pragma shader_feature_local _NOISEDISTORTIONDILATIONENABLED_ON
			#pragma shader_feature_local _VERTICALMASK2_ON
			#pragma shader_feature_local _VERTICALMASK1_ON
			#pragma shader_feature_local _RADIALMASK_ON
			#pragma shader_feature_local _UV2DCENTNORM_ON
			#pragma shader_feature_local _RADIALMASKDISTORTIONENABLED_ON
			#pragma shader_feature_local _RADIALMASKDISTORTIONDILATIONENABLED_ON
			#pragma shader_feature_local _VERTICALMASK1SUBTRACTIVE_ON
			#pragma shader_feature_local _VERTICALMASKSOBJECTSPACE_ON
			#pragma shader_feature_local _VERTICALMASK2SUBTRACTIVE_ON
			#pragma shader_feature_local _INVERTDEPTHFADE_ON


			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 positionRWS : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			
			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};

			void BuildSurfaceData(FragInputs fragInputs, SurfaceDescription surfaceDescription, float3 V, out SurfaceData surfaceData)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);
				#ifdef WRITE_NORMAL_BUFFER
				surfaceData.normalWS = fragInputs.tangentToWorld[2];
				#endif
			}

			void GetSurfaceAndBuiltinData(SurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                #endif

				#ifdef _ALPHATEST_ON
				DoAlphaTest ( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
                ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
                #endif

				BuildSurfaceData(fragInputs, surfaceDescription, V, surfaceData);
				ZERO_INITIALIZE(BuiltinData, builtinData);
				builtinData.opacity =  surfaceDescription.Alpha;

				#if defined(DEBUG_DISPLAY)
					builtinData.renderingLayers = GetMeshRenderingLayerMask();
				#endif

                #ifdef _ALPHATEST_ON
                    builtinData.alphaClipTreshold = surfaceDescription.AlphaClipThreshold;
                #endif

				#ifdef _DEPTHOFFSET_ON
                builtinData.depthOffset = surfaceDescription.DepthOffset;
                #endif

                ApplyDebugToBuiltinData(builtinData);
			}

			PackedVaryingsMeshToPS VertexFunction( AttributesMesh inputMesh  )
			{
				PackedVaryingsMeshToPS o;
				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				float localTwistXZ_float11_g793 = ( 0.0 );
				float2 texCoord721 = inputMesh.ase_texcoord * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord718 = inputMesh.ase_texcoord.xy * float2( 2,2 ) + float2( -1,-1 );
				#if defined( _UV2DNORMCENT1_NORMAL1 )
				float2 staticSwitch714 = texCoord721;
				#elif defined( _UV2DNORMCENT1_CENTERED1 )
				float2 staticSwitch714 = texCoord718;
				#else
				float2 staticSwitch714 = texCoord721;
				#endif
				#ifdef _SWAPUVXY1_ON
				float2 staticSwitch988 = (staticSwitch714).yx;
				#else
				float2 staticSwitch988 = staticSwitch714;
				#endif
				float UV_2D_Ym723 = (staticSwitch988).y;
				float3 Vertex_Normal_Offset947 = ( ( inputMesh.normalOS * _VertexNormalOffset ) + ( pow( UV_2D_Ym723 , _VertexNormalOffsetTopPower ) * inputMesh.normalOS * _VertexNormalOffsetTop ) + ( pow( ( 1.0 - UV_2D_Ym723 ) , _VertexNormalOffsetBottomPower ) * inputMesh.normalOS * _VertexNormalOffsetBottom ) );
				float2 UV_2Dm715 = staticSwitch988;
				float mulTime868 = _TimeParameters.x * _VertexWaveAnimation;
				float temp_output_7_0_g784 = _VertexWaveNoiseVerticalMaskRemapMin;
				float temp_output_23_0_g784 = _VertexWaveNoiseVerticalMaskRemapMax;
				float temp_output_20_0_g784 = UV_2D_Ym723;
				float temp_output_4_0_g784 = _VertexWaveNoiseVerticalMaskPower;
				float smoothstepResult22_g784 = smoothstep( temp_output_7_0_g784 , temp_output_23_0_g784 , pow( temp_output_20_0_g784 , temp_output_4_0_g784 ));
				float Vertex_WaveNoise_Vertical_Mask819 = smoothstepResult22_g784;
				#ifdef _VERTEXWAVEENABLED_ON
				float3 staticSwitch930 = ( ( sin( ( ( UV_2Dm715.y * TWO_PI * _VertexWaveScale ) - ( mulTime868 + ( _VertexWaveOffset * TWO_PI ) ) ) ) * _VertexWave * Vertex_WaveNoise_Vertical_Mask819 ) * inputMesh.normalOS );
				#else
				float3 staticSwitch930 = float3( 0,0,0 );
				#endif
				float3 Vertex_Sine943 = staticSwitch930;
				float localSimplexNoise_float2_g790 = ( 0.0 );
				float Particle_Stable_Random_X771 = ( ( inputMesh.ase_texcoord.w - 0.5 ) * 100.0 * _ParticleRandomization );
				float Particle_Age_Percent770 = inputMesh.ase_texcoord.z;
				#ifdef _WORLDSPACEUVS2_ON
				float staticSwitch860 = Particle_Age_Percent770;
				#else
				float staticSwitch860 = Particle_Stable_Random_X771;
				#endif
				float3 temp_cast_0 = (staticSwitch860).xxx;
				float4 Vertex_Noise_Offset852 = ( _VertexNoiseOffset + Particle_Stable_Random_X771 + ( _VertexNoiseParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g786 = ( float4( ( temp_cast_0 * _VertexNoiseScale * _VertexNoiseTiling ) , 0.0 ) - ( Vertex_Noise_Offset852 + ( _VertexNoiseAnimation * _TimeParameters.x ) ) );
				float3 temp_output_871_0 = (temp_output_10_0_g786).xyz;
				float3 position2_g790 = temp_output_871_0;
				float temp_output_871_15 = (temp_output_10_0_g786).w;
				float angle2_g790 = temp_output_871_15;
				float octaves2_g790 = _VertexNoiseOctaves;
				float noise2_g790 = 0.0;
				float3 gradient2_g790 = float3( 0,0,0 );
				SimplexNoise_float( position2_g790 , angle2_g790 , octaves2_g790 , noise2_g790 , gradient2_g790 );
				float localSimplexNoise_Caustics_float2_g789 = ( 0.0 );
				float3 position2_g789 = temp_output_871_0;
				float angle2_g789 = temp_output_871_15;
				float octaves2_g789 = _VertexNoiseOctaves;
				float gradientStrength2_g789 = _VertexNoiseDilation;
				float noise2_g789 = 0.0;
				float3 gradient2_g789 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g789 , angle2_g789 , octaves2_g789 , gradientStrength2_g789 , noise2_g789 , gradient2_g789 );
				#ifdef _VERTEXNOISEDILATIONENABLED_ON
				float3 staticSwitch886 = gradient2_g789;
				#else
				float3 staticSwitch886 = gradient2_g790;
				#endif
				float localTwistXZ_float11_g791 = ( 0.0 );
				float3 temp_output_10_0_g791 = staticSwitch886;
				float3 position11_g791 = temp_output_10_0_g791;
				float temp_output_9_0_g791 = _VertexNoiseTwist;
				float angle11_g791 = radians( temp_output_9_0_g791 );
				float3 output11_g791 = float3( 0,0,0 );
				TwistXZ_float( position11_g791 , angle11_g791 , output11_g791 );
				float3 temp_output_898_0 = output11_g791;
				#ifdef _VERTEXNOISETWISTENABLED_ON
				float3 staticSwitch973 = temp_output_898_0;
				#else
				float3 staticSwitch973 = staticSwitch886;
				#endif
				#ifdef _VERTEXNOISEENABLED_ON
				float3 staticSwitch933 = ( temp_output_898_0 * _VertexNoise * Vertex_WaveNoise_Vertical_Mask819 );
				#else
				float3 staticSwitch933 = staticSwitch973;
				#endif
				float3 Vertex_Noise946 = staticSwitch933;
				float2 break876 = ( ( UV_2Dm715 * float2( 2,1 ) ) - float2( 1,0 ) );
				float temp_output_907_0 = ( ( break876.x * pow( break876.y , _VertexUVOffsetTopPower ) ) * ( _VertexUVOffsetTop * 0.5 ) );
				float3 appendResult922 = (float3(temp_output_907_0 , 0.0 , 0.0));
				float3 appendResult921 = (float3(0.0 , temp_output_907_0 , 0.0));
				#ifdef _SWAPUVXY1_ON
				float3 staticSwitch931 = appendResult921;
				#else
				float3 staticSwitch931 = appendResult922;
				#endif
				float3 Vertex_Offset_Top944 = staticSwitch931;
				float2 break869 = ( ( UV_2Dm715 * float2( 2,1 ) ) - float2( 1,0 ) );
				float temp_output_906_0 = ( ( break869.x * pow( ( 1.0 - break869.y ) , _VertexUVOffsetBottomPower ) ) * ( _VertexUVOffsetBottom * 0.5 ) );
				float3 appendResult924 = (float3(temp_output_906_0 , 0.0 , 0.0));
				float3 appendResult923 = (float3(0.0 , temp_output_906_0 , 0.0));
				#ifdef _SWAPUVXY1_ON
				float3 staticSwitch932 = appendResult923;
				#else
				float3 staticSwitch932 = appendResult924;
				#endif
				float3 Vertex_Offset_Bottom945 = staticSwitch932;
				float3 temp_output_10_0_g793 = ( ( Vertex_Normal_Offset947 + Vertex_Sine943 + Vertex_Noise946 + Vertex_Offset_Top944 + Vertex_Offset_Bottom945 ) + inputMesh.positionOS );
				float3 position11_g793 = temp_output_10_0_g793;
				float temp_output_9_0_g793 = -_VertexTwist;
				float angle11_g793 = radians( temp_output_9_0_g793 );
				float3 output11_g793 = float3( 0,0,0 );
				TwistXZ_float( position11_g793 , angle11_g793 , output11_g793 );
				float3 worldToObjDir948 = mul( GetWorldToObjectMatrix(), float4( _VertexOffsetOverY1, 0.0 ) ).xyz;
				float3 worldToObjDir950 = mul( GetWorldToObjectMatrix(), float4( _VertexOffsetOverY2, 0.0 ) ).xyz;
				float UV_2D_Circular_Y929 = sin( ( UV_2D_Ym723 * PI ) );
				float3 Vertex_Offset_over_Y966 = ( ( worldToObjDir948 * pow( UV_2D_Ym723 , _VertexOffsetOverY1Power ) ) + ( worldToObjDir950 * pow( UV_2D_Ym723 , _VertexOffsetOverY2Power ) ) + ( _VertexOffsetOverCircularY * pow( UV_2D_Circular_Y929 , _VertexOffsetOverCircularYPower ) ) );
				float3 Vertex_Offset971 = ( output11_g793 + Vertex_Offset_over_Y966 );
				
				float3 ase_normalWS = TransformObjectToWorldNormal( inputMesh.normalOS );
				o.ase_texcoord4.xyz = ase_normalWS;
				float3 objectToViewPos = TransformWorldToView( TransformObjectToWorld( inputMesh.positionOS ) );
				float eyeDepth = -objectToViewPos.z;
				o.ase_texcoord4.w = eyeDepth;
				
				o.ase_texcoord1 = inputMesh.ase_texcoord;
				o.ase_texcoord2 = float4(inputMesh.positionOS,1);
				o.ase_texcoord3 = inputMesh.ase_texcoord1;
				o.ase_color = inputMesh.ase_color;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =  Vertex_Offset971;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS = inputMesh.normalOS;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				o.positionCS = TransformWorldToHClip(positionRWS);
				o.positionRWS = positionRWS;
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_texcoord1 = v.ase_texcoord1;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput
						#ifdef WRITE_MSAA_DEPTH
						, out float4 depthColor : SV_Target0
							#ifdef WRITE_NORMAL_BUFFER
							, out float4 outNormalBuffer : SV_Target1
							#endif
						#else
							#ifdef WRITE_NORMAL_BUFFER
							, out float4 outNormalBuffer : SV_Target0
							#endif
						#endif
						#if (defined(_DEPTHOFFSET_ON) || defined(ASE_DEPTH_WRITE_ON)) && !defined(SCENEPICKINGPASS)
						, out float outputDepth : DEPTH_OFFSET_SEMANTIC
						#endif
					
					)
			{
				UNITY_SETUP_INSTANCE_ID( packedInput );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;
				input.positionRWS = packedInput.positionRWS;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 PositionRWS = packedInput.positionRWS;
				float3 V = GetWorldSpaceNormalizeViewDir( packedInput.positionRWS );
				float4 ScreenPosNorm = float4( posInput.positionNDC, packedInput.positionCS.zw );
				float4 ClipPos = ComputeClipSpacePosition( ScreenPosNorm.xy, packedInput.positionCS.z ) * packedInput.positionCS.w;
				float4 ScreenPos = ComputeScreenPos( ClipPos, _ProjectionParams.x );

				float temp_output_7_0_g781 = _NoiseRemapMin;
				float temp_output_23_0_g781 = _NoiseRemapMax;
				float localSimplexNoise_float2_g779 = ( 0.0 );
				float2 texCoord721 = packedInput.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord718 = packedInput.ase_texcoord1.xy * float2( 2,2 ) + float2( -1,-1 );
				#if defined( _UV2DNORMCENT1_NORMAL1 )
				float2 staticSwitch714 = texCoord721;
				#elif defined( _UV2DNORMCENT1_CENTERED1 )
				float2 staticSwitch714 = texCoord718;
				#else
				float2 staticSwitch714 = texCoord721;
				#endif
				#ifdef _SWAPUVXY1_ON
				float2 staticSwitch988 = (staticSwitch714).yx;
				#else
				float2 staticSwitch988 = staticSwitch714;
				#endif
				float2 UV_2Dm715 = staticSwitch988;
				float3 ase_positionWS = GetAbsolutePositionWS( PositionRWS );
				#if defined( _VERTEXWORLDPOS1_VERTEXPOS1 )
				float3 staticSwitch734 = packedInput.ase_texcoord2.xyz;
				#elif defined( _VERTEXWORLDPOS1_WORLDPOS1 )
				float3 staticSwitch734 = ase_positionWS;
				#else
				float3 staticSwitch734 = packedInput.ase_texcoord2.xyz;
				#endif
				#ifdef _SWAPUVXY7_ON
				float3 staticSwitch735 = (staticSwitch734).yxz;
				#else
				float3 staticSwitch735 = staticSwitch734;
				#endif
				float3 UV_3D_VWP1739 = staticSwitch735;
				#ifdef _OBJECTSPACEUVS_ON
				float3 staticSwitch792 = UV_3D_VWP1739;
				#else
				float3 staticSwitch792 = float3( UV_2Dm715 ,  0.0 );
				#endif
				float UV_3D_World_VWP2682 = 0.0;
				float3 temp_cast_1 = (UV_3D_World_VWP2682).xxx;
				#ifdef _WORLDSPACEUVS_ON
				float3 staticSwitch793 = temp_cast_1;
				#else
				float3 staticSwitch793 = staticSwitch792;
				#endif
				float2 appendResult745 = (float2(ScreenPosNorm.x , ScreenPosNorm.y));
				float2 Screen_UV747 = appendResult745;
				float2 appendResult746 = (float2(_ScreenParams.x , _ScreenParams.y));
				float2 Screen_Resolution748 = appendResult746;
				float2 Screen_Position750 = ( Screen_UV747 * Screen_Resolution748 );
				float2 screenPosition441 = Screen_Position750;
				float mulTime440 = _TimeParameters.x * 60.0;
				float time441 = mulTime440;
				float3 localHash33441 = Hash33( screenPosition441 , time441 );
				float3 Sample_Noise445 = ( (localHash33441*2.0 + -1.0) * _UVSampleNoise );
				float3 Noise_Base_UV795 = ( staticSwitch793 + Sample_Noise445 );
				float localSpherize_float5_g755 = ( 0.0 );
				float2 uv5_g755 = (Noise_Base_UV795).xy;
				float2 center5_g755 = ( _SpherizeNoiseOffset + float2( 0.5,0.5 ) );
				float radius5_g755 = _SpherizeNoiseRadius;
				float strength5_g755 = _SpherizeNoiseStrength;
				float2 output5_g755 = float2( 0,0 );
				Spherize_float( uv5_g755 , center5_g755 , radius5_g755 , strength5_g755 , output5_g755 );
				float3 appendResult506 = (float3(output5_g755 , (Noise_Base_UV795).z));
				#ifdef _SPHERIZENOISE_ON
				float3 staticSwitch505 = appendResult506;
				#else
				float3 staticSwitch505 = Noise_Base_UV795;
				#endif
				float2 center45_g765 = ( _NoiseXYTwistOffset + float2( 0.5,0.5 ) );
				float2 delta6_g765 = ( staticSwitch505.xy - center45_g765 );
				float angle10_g765 = ( length( delta6_g765 ) * radians( _NoiseXYTwist ) );
				float x23_g765 = ( ( cos( angle10_g765 ) * delta6_g765.x ) - ( sin( angle10_g765 ) * delta6_g765.y ) );
				float2 break40_g765 = center45_g765;
				float2 break41_g765 = float2( 0,0 );
				float y35_g765 = ( ( sin( angle10_g765 ) * delta6_g765.x ) + ( cos( angle10_g765 ) * delta6_g765.y ) );
				float2 appendResult44_g765 = (float2(( x23_g765 + break40_g765.x + break41_g765.x ) , ( break40_g765.y + break41_g765.y + y35_g765 )));
				float2 temp_output_499_0 = appendResult44_g765;
				float localTwistXZ_float11_g763 = ( 0.0 );
				float3 temp_output_10_0_g763 = float3( temp_output_499_0 ,  0.0 );
				float3 position11_g763 = temp_output_10_0_g763;
				float temp_output_9_0_g763 = _NoiseXZTwist;
				float angle11_g763 = radians( temp_output_9_0_g763 );
				float3 output11_g763 = float3( 0,0,0 );
				TwistXZ_float( position11_g763 , angle11_g763 , output11_g763 );
				#ifdef _NOISEXZTWISTENABLED_ON
				float3 staticSwitch498 = output11_g763;
				#else
				float3 staticSwitch498 = float3( temp_output_499_0 ,  0.0 );
				#endif
				float3 break469 = staticSwitch498;
				float temp_output_478_0 = ( ( break469.y - _NoiseUVYPreOffset ) * _NoiseUVYPreScale );
				float temp_output_7_0_g770 = abs( temp_output_478_0 );
				float temp_output_7_0_g771 = abs( temp_output_478_0 );
				float smoothstepResult16_g771 = smoothstep( _NoiseUVYPreRemapMin , _NoiseUVYPreRemapMax , pow( temp_output_7_0_g771 , _NoiseUVYPrePower ));
				#ifdef _NOISEUVPREREMAP_ON
				float staticSwitch485 = ( smoothstepResult16_g771 * sign( temp_output_478_0 ) );
				#else
				float staticSwitch485 = ( pow( temp_output_7_0_g770 , _NoiseUVYPrePower ) * sign( temp_output_478_0 ) );
				#endif
				float3 appendResult486 = (float3(break469.x , staticSwitch485 , 0.0));
				float3 temp_output_787_0 = ( -V * _NoiseParallaxOffset );
				#ifdef _SWAPUVXY3_ON
				float3 staticSwitch789 = (temp_output_787_0).yxz;
				#else
				float3 staticSwitch789 = temp_output_787_0;
				#endif
				float3 Parallax_Offset790 = staticSwitch789;
				float localSimplexNoise_float2_g761 = ( 0.0 );
				float Particle_Stable_Random_X771 = ( ( packedInput.ase_texcoord1.w - 0.5 ) * 100.0 * _ParticleRandomization );
				float Particle_Age_Percent770 = packedInput.ase_texcoord1.z;
				float4 Distortion_Noise_Offset813 = ( _NoiseDistortionOffset + Particle_Stable_Random_X771 + ( _NoiseDistortionParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g758 = ( float4( ( ( Noise_Base_UV795 + Parallax_Offset790 ) * _NoiseDistortionScale * _NoiseDistortionTiling ) , 0.0 ) - ( Distortion_Noise_Offset813 + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 temp_output_322_0 = (temp_output_10_0_g758).xyz;
				float3 position2_g761 = temp_output_322_0;
				float temp_output_322_15 = (temp_output_10_0_g758).w;
				float angle2_g761 = temp_output_322_15;
				float octaves2_g761 = _NoiseDistortionOctaves;
				float noise2_g761 = 0.0;
				float3 gradient2_g761 = float3( 0,0,0 );
				SimplexNoise_float( position2_g761 , angle2_g761 , octaves2_g761 , noise2_g761 , gradient2_g761 );
				float localSimplexNoise_Caustics_float2_g760 = ( 0.0 );
				float3 position2_g760 = temp_output_322_0;
				float angle2_g760 = temp_output_322_15;
				float octaves2_g760 = _NoiseDistortionOctaves;
				float gradientStrength2_g760 = _NoiseDistortionDilation;
				float noise2_g760 = 0.0;
				float3 gradient2_g760 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g760 , angle2_g760 , octaves2_g760 , gradientStrength2_g760 , noise2_g760 , gradient2_g760 );
				#ifdef _NOISEDISTORTIONDILATIONENABLED_ON
				float3 staticSwitch329 = gradient2_g760;
				#else
				float3 staticSwitch329 = gradient2_g761;
				#endif
				float3 temp_output_7_0_g766 = abs( staticSwitch329 );
				float3 temp_cast_6 = (_NoiseDistortionPower).xxx;
				#ifdef _NOISEDISTORTIONENABLED_ON
				float3 staticSwitch336 = ( ( pow( temp_output_7_0_g766 , temp_cast_6 ) * sign( staticSwitch329 ) ) * _NoiseDistortion );
				#else
				float3 staticSwitch336 = float3( 0,0,0 );
				#endif
				float3 Noise_Distortion337 = staticSwitch336;
				float3 Noise_UV494 = ( appendResult486 + Parallax_Offset790 + Noise_Distortion337 );
				float4 Noise_Offset786 = ( _NoiseOffset + Particle_Stable_Random_X771 + ( _NoiseParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g775 = ( float4( ( Noise_UV494 * _NoiseScale * _NoiseTiling ) , 0.0 ) - ( Noise_Offset786 + ( _NoiseAnimation * _TimeParameters.x ) ) );
				float3 temp_output_344_0 = (temp_output_10_0_g775).xyz;
				float3 position2_g779 = temp_output_344_0;
				float temp_output_344_15 = (temp_output_10_0_g775).w;
				float angle2_g779 = temp_output_344_15;
				float octaves2_g779 = _NoiseOctaves;
				float noise2_g779 = 0.0;
				float3 gradient2_g779 = float3( 0,0,0 );
				SimplexNoise_float( position2_g779 , angle2_g779 , octaves2_g779 , noise2_g779 , gradient2_g779 );
				float localSimplexNoise_Caustics_float2_g778 = ( 0.0 );
				float3 position2_g778 = temp_output_344_0;
				float angle2_g778 = temp_output_344_15;
				float octaves2_g778 = _NoiseOctaves;
				float gradientStrength2_g778 = _NoiseDilation;
				float noise2_g778 = 0.0;
				float3 gradient2_g778 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g778 , angle2_g778 , octaves2_g778 , gradientStrength2_g778 , noise2_g778 , gradient2_g778 );
				#ifdef _NOISEDILATIONENABLED_ON
				float staticSwitch349 = noise2_g778;
				#else
				float staticSwitch349 = noise2_g779;
				#endif
				float temp_output_20_0_g781 = staticSwitch349;
				float temp_output_4_0_g781 = _NoisePower;
				float smoothstepResult22_g781 = smoothstep( temp_output_7_0_g781 , temp_output_23_0_g781 , pow( temp_output_20_0_g781 , temp_output_4_0_g781 ));
				float Particle_Subtract_Noise_over_Lifetime779 = ( packedInput.ase_texcoord3.y * _ParticleSubtractNoiseoverLifetime1 );
				float temp_output_356_0 = ( smoothstepResult22_g781 - Particle_Subtract_Noise_over_Lifetime779 );
				float lerpResult359 = lerp( 1.0 , temp_output_356_0 , _Noise);
				float Noise360 = lerpResult359;
				float Particle_Mask_Radius_over_Lifetime630 = packedInput.ase_texcoord3.x;
				float lerpResult245 = lerp( 1.0 , Particle_Mask_Radius_over_Lifetime630 , _RadialMaskRadiusOverParticleLifetime);
				float temp_output_6_0_g772 = ( 1.0 - ( _RadialMaskRadius * lerpResult245 ) );
				float lerpResult5_g772 = lerp( temp_output_6_0_g772 , 1.0 , _RadialMaskFeather);
				float2 texCoord991 = packedInput.ase_texcoord1.xy * float2( 2,2 ) + float2( -1,-1 );
				float2 texCoord997 = packedInput.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				#ifdef _UV2DCENTNORM_ON
				float2 staticSwitch996 = texCoord997;
				#else
				float2 staticSwitch996 = texCoord991;
				#endif
				#ifdef _SWAPUVXY1_ON
				float2 staticSwitch990 = (staticSwitch996).yx;
				#else
				float2 staticSwitch990 = staticSwitch996;
				#endif
				float2 UV_2D_Centeredm992 = staticSwitch990;
				float localSimplexNoise_float2_g757 = ( 0.0 );
				float4 Mask_Distortion_Noise_Offset805 = ( _RadialMaskDistortionOffset + Particle_Stable_Random_X771 + ( _RadialMaskDistortionParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g725 = ( float4( ( Noise_Base_UV795 * _RadialMaskDistortionScale * _RadialMaskDistortionTiling ) , 0.0 ) - ( Mask_Distortion_Noise_Offset805 + ( _RadialMaskDistortionAnimation * _TimeParameters.x ) ) );
				float3 temp_output_305_0 = (temp_output_10_0_g725).xyz;
				float3 position2_g757 = temp_output_305_0;
				float temp_output_305_15 = (temp_output_10_0_g725).w;
				float angle2_g757 = temp_output_305_15;
				float octaves2_g757 = _RadialMaskDistortionOctaves;
				float noise2_g757 = 0.0;
				float3 gradient2_g757 = float3( 0,0,0 );
				SimplexNoise_float( position2_g757 , angle2_g757 , octaves2_g757 , noise2_g757 , gradient2_g757 );
				float localSimplexNoise_Caustics_float2_g756 = ( 0.0 );
				float3 position2_g756 = temp_output_305_0;
				float angle2_g756 = temp_output_305_15;
				float octaves2_g756 = _RadialMaskDistortionOctaves;
				float gradientStrength2_g756 = _RadialMaskDistortionDilation;
				float noise2_g756 = 0.0;
				float3 gradient2_g756 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g756 , angle2_g756 , octaves2_g756 , gradientStrength2_g756 , noise2_g756 , gradient2_g756 );
				#ifdef _RADIALMASKDISTORTIONDILATIONENABLED_ON
				float3 staticSwitch310 = gradient2_g756;
				#else
				float3 staticSwitch310 = gradient2_g757;
				#endif
				float3 temp_output_7_0_g762 = abs( staticSwitch310 );
				float3 temp_cast_9 = (_RadialMaskDistortionPower).xxx;
				#ifdef _RADIALMASKDISTORTIONENABLED_ON
				float3 staticSwitch325 = ( ( pow( temp_output_7_0_g762 , temp_cast_9 ) * sign( staticSwitch310 ) ) * _RadialMaskDistortion );
				#else
				float3 staticSwitch325 = float3( 0,0,0 );
				#endif
				float3 Mask_Distortion328 = staticSwitch325;
				float temp_output_7_0_g772 = ( 1.0 - length( ( ( ( UV_2D_Centeredm992 + (Mask_Distortion328).xy ) - _RadialMaskOffset ) * _RadialMaskTiling ) ) );
				float smoothstepResult4_g772 = smoothstep( temp_output_6_0_g772 , lerpResult5_g772 , temp_output_7_0_g772);
				#ifdef _RADIALMASK_ON
				float staticSwitch256 = ( 1.0 - pow( smoothstepResult4_g772 , _RadialMaskPower ) );
				#else
				float staticSwitch256 = 0.0;
				#endif
				float Radial_Mask257 = staticSwitch256;
				#ifdef _RADIALMASKSUBTRACTIVE_ON
				float staticSwitch204 = Radial_Mask257;
				#else
				float staticSwitch204 = 0.0;
				#endif
				float temp_output_7_0_g777 = _VerticalMask1RemapMax;
				float temp_output_23_0_g777 = _VerticalMask1RemapMin;
				float UV_2D_Ym723 = (staticSwitch988).y;
				float UV_3D_Y_VWP1760 = (staticSwitch735).y;
				#ifdef _VERTICALMASKSOBJECTSPACE_ON
				float staticSwitch270 = ( ( UV_3D_Y_VWP1760 - _VerticalMask1ObjectSpaceOffset ) / _VerticalMask1ObjectSpaceScale );
				#else
				float staticSwitch270 = UV_2D_Ym723;
				#endif
				float temp_output_20_0_g777 = staticSwitch270;
				float smoothstepResult25_g777 = smoothstep( temp_output_7_0_g777 , temp_output_23_0_g777 , temp_output_20_0_g777);
				float temp_output_4_0_g777 = _VerticalMask1Power;
				float temp_output_278_0 = pow( smoothstepResult25_g777 , temp_output_4_0_g777 );
				#ifdef _VERTICALMASK1SUBTRACTIVE_ON
				float staticSwitch282 = ( 1.0 - temp_output_278_0 );
				#else
				float staticSwitch282 = temp_output_278_0;
				#endif
				float Vertical_Mask_1287 = staticSwitch282;
				#ifdef _VERTICALMASK1SUBTRACTIVE_ON
				float staticSwitch206 = ( staticSwitch204 + Vertical_Mask_1287 );
				#else
				float staticSwitch206 = staticSwitch204;
				#endif
				#ifdef _VERTICALMASK1_ON
				float staticSwitch207 = staticSwitch206;
				#else
				float staticSwitch207 = staticSwitch204;
				#endif
				float temp_output_7_0_g780 = _VerticalMask2RemapMin;
				float temp_output_23_0_g780 = _VerticalMask2RemapMax;
				#ifdef _VERTICALMASKSOBJECTSPACE_ON
				float staticSwitch286 = ( ( UV_3D_Y_VWP1760 - _VerticalMask2ObjectSpaceOffset ) / _VerticalMask2ObjectSpaceScale );
				#else
				float staticSwitch286 = UV_2D_Ym723;
				#endif
				float temp_output_20_0_g780 = staticSwitch286;
				float smoothstepResult25_g780 = smoothstep( temp_output_7_0_g780 , temp_output_23_0_g780 , temp_output_20_0_g780);
				float temp_output_4_0_g780 = _VerticalMask2Power;
				float temp_output_288_0 = pow( smoothstepResult25_g780 , temp_output_4_0_g780 );
				#ifdef _VERTICALMASK2SUBTRACTIVE_ON
				float staticSwitch290 = ( 1.0 - temp_output_288_0 );
				#else
				float staticSwitch290 = temp_output_288_0;
				#endif
				float Vertical_Mask_2291 = staticSwitch290;
				#ifdef _VERTICALMASK2SUBTRACTIVE_ON
				float staticSwitch208 = ( staticSwitch207 + Vertical_Mask_2291 );
				#else
				float staticSwitch208 = staticSwitch207;
				#endif
				#ifdef _VERTICALMASK2_ON
				float staticSwitch209 = staticSwitch208;
				#else
				float staticSwitch209 = staticSwitch207;
				#endif
				float3 ase_normalWS = packedInput.ase_texcoord4.xyz;
				float fresnelNdotV427 = dot( ase_normalWS, V );
				float fresnelNode427 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV427, _FresnelMaskPower ) );
				float smoothstepResult430 = smoothstep( _FresnelMaskRemapMin , _FresnelMaskRemapMax , fresnelNode427);
				float lerpResult432 = lerp( 1.0 , smoothstepResult430 , _FresnelMask);
				float Fresnel_Mask433 = lerpResult432;
				float temp_output_7_0_g782 = 0.0;
				float temp_output_23_0_g782 = 1.0;
				float screenDepth381 = LinearEyeDepth(SampleCameraDepth( ScreenPosNorm.xy ),_ZBufferParams);
				float distanceDepth381 = saturate( abs( ( screenDepth381 - LinearEyeDepth( ScreenPosNorm.z,_ZBufferParams ) ) / ( _DepthFade ) ) );
				#ifdef _INVERTDEPTHFADE_ON
				float staticSwitch386 = ( 1.0 - distanceDepth381 );
				#else
				float staticSwitch386 = distanceDepth381;
				#endif
				float temp_output_20_0_g782 = staticSwitch386;
				float temp_output_4_0_g782 = _DepthFadePower;
				float smoothstepResult22_g782 = smoothstep( temp_output_7_0_g782 , temp_output_23_0_g782 , pow( temp_output_20_0_g782 , temp_output_4_0_g782 ));
				float temp_output_7_0_g783 = 0.0;
				float temp_output_23_0_g783 = 1.0;
				float screenDepth384 = LinearEyeDepth(SampleCameraDepth( ScreenPosNorm.xy ),_ZBufferParams);
				float distanceDepth384 = saturate( abs( ( screenDepth384 - LinearEyeDepth( ScreenPosNorm.z,_ZBufferParams ) ) / ( _SubtractiveDepthFade ) ) );
				float temp_output_20_0_g783 = ( 1.0 - distanceDepth384 );
				float temp_output_4_0_g783 = _SubtractiveDepthFadePower;
				float smoothstepResult22_g783 = smoothstep( temp_output_7_0_g783 , temp_output_23_0_g783 , pow( temp_output_20_0_g783 , temp_output_4_0_g783 ));
				float Depth_Fade401 = saturate( ( smoothstepResult22_g782 - smoothstepResult22_g783 ) );
				float temp_output_7_0_g785 = 0.0;
				float temp_output_23_0_g785 = 1.0;
				float eyeDepth = packedInput.ase_texcoord4.w;
				float cameraDepthFade392 = (( eyeDepth -_ProjectionParams.y - _CameraDepthFadeOffset ) / _CameraDepthFadeLength);
				float temp_output_20_0_g785 = saturate( cameraDepthFade392 );
				float temp_output_4_0_g785 = _CameraDepthFadePower;
				float smoothstepResult22_g785 = smoothstep( temp_output_7_0_g785 , temp_output_23_0_g785 , pow( temp_output_20_0_g785 , temp_output_4_0_g785 ));
				float Camera_Depth_Fade400 = smoothstepResult22_g785;
				float temp_output_7_0_g788 = _IntersectionHighlightRemapMin;
				float temp_output_23_0_g788 = _IntersectionHighlightRemapMax;
				float screenDepth372 = LinearEyeDepth(SampleCameraDepth( ScreenPosNorm.xy ),_ZBufferParams);
				float distanceDepth372 = saturate( abs( ( screenDepth372 - LinearEyeDepth( ScreenPosNorm.z,_ZBufferParams ) ) / ( _IntersectionHighlight ) ) );
				float temp_output_20_0_g788 = ( 1.0 - distanceDepth372 );
				float temp_output_4_0_g788 = _IntersectionHighlightPower;
				float smoothstepResult22_g788 = smoothstep( temp_output_7_0_g788 , temp_output_23_0_g788 , pow( temp_output_20_0_g788 , temp_output_4_0_g788 ));
				float Intersection_Highlight378 = smoothstepResult22_g788;
				float Intersection_Highlight_Alpha103 = ( _IntersectionHighlightColour.a * _IntersectionHighlightAlpha );
				float temp_output_227_0 = saturate( ( ( saturate( ( Noise360 - staticSwitch209 ) ) * Fresnel_Mask433 * (packedInput.ase_color).a * Depth_Fade401 * Camera_Depth_Fade400 * _Alpha ) + ( Intersection_Highlight378 * Intersection_Highlight_Alpha103 ) ) );
				#ifdef _RADIALMASKSUBTRACTIVE_ON
				float staticSwitch235 = temp_output_227_0;
				#else
				float staticSwitch235 = ( temp_output_227_0 * ( 1.0 - Radial_Mask257 ) );
				#endif
				float Alpha236 = staticSwitch235;
				

				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				surfaceDescription.Alpha = Alpha236;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
				posInput.deviceDepth = input.positionSS.z;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

				#if defined(_DEPTHOFFSET_ON) || defined(ASE_DEPTH_WRITE_ON)
				outputDepth = posInput.deviceDepth;
				#endif

				#ifdef WRITE_MSAA_DEPTH
					depthColor = packedInput.positionCS.z;
					#ifdef _ALPHATOMASK_ON
					depthColor.a = SharpenAlpha(builtinData.opacity, builtinData.alphaClipTreshold);
					#endif
				#endif

				#if defined(WRITE_NORMAL_BUFFER)
					EncodeIntoNormalBuffer(ConvertSurfaceDataToNormalData(surfaceData), outNormalBuffer);
				#endif
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "MotionVectors"
			Tags { "LightMode"="MotionVectors" }

			Cull [_CullMode]

			ZWrite On

			Stencil
			{
				Ref [_StencilRefMV]
				WriteMask [_StencilWriteMaskMV]
				Comp Always
				Pass Replace
			}


			HLSLPROGRAM

			#pragma shader_feature_local_fragment _ENABLE_FOG_ON_TRANSPARENT
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#define HAVE_MESH_MODIFICATION 1
			#define ASE_VERSION 19905
			#define ASE_SRP_VERSION 170200


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT

			#pragma multi_compile _ WRITE_MSAA_DEPTH

			#pragma multi_compile _ DOTS_INSTANCING_ON

			#pragma vertex Vert
			#pragma fragment Frag

			#if (defined(_TRANSPARENT_WRITES_MOTION_VEC) || defined(_TRANSPARENT_REFRACTIVE_SORT)) && defined(_SURFACE_TYPE_TRANSPARENT)
			#define _WRITE_TRANSPARENT_MOTION_VECTOR
			#endif

			#define SHADERPASS SHADERPASS_MOTION_VECTORS
            #define SUPPORT_GLOBAL_MIP_BIAS 1

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl"

			CBUFFER_START( UnityPerMaterial )
			float4 _VerticalColourB;
			float4 _RadialMaskDistortionOffset;
			float4 _RadialMaskDistortionParticleAnimation;
			float4 _RadialMaskDistortionAnimation;
			float4 _VerticalColourA;
			float4 _ColourA;
			float4 _ColourB;
			float4 _NoiseDistortionOffset;
			float4 _NoiseDistortionParticleAnimation;
			float4 _IntersectionHighlightColour;
			float4 _VertexNoiseAnimation;
			float4 _VertexNoiseParticleAnimation;
			float4 _VertexNoiseOffset;
			float4 _NoiseDistortionAnimation;
			float4 _NoiseOffset;
			float4 _NoiseParticleAnimation;
			float4 _NoiseAnimation;
			float3 _VertexNoiseTiling;
			float3 _NoiseTiling;
			float3 _RadialMaskDistortionTiling;
			float3 _VertexOffsetOverCircularY;
			float3 _NoiseDistortionTiling;
			float3 _VertexOffsetOverY2;
			float3 _VertexOffsetOverY1;
			float2 _RadialMaskOffset;
			float2 _NoiseXYTwistOffset;
			float2 _SpherizeNoiseOffset;
			float2 _RadialMaskTiling;
			float _IntersectionHighlightPower;
			float _VerticalColourSaturationShift;
			float _VerticalColourValueMultiplier;
			float _VerticalColourHueShift;
			float _VerticalColourMaskRemapMin;
			float _VerticalColourMaskRemapMax;
			float _IntersectionHighlightColourHueShift;
			float _IntersectionHighlight;
			float _IntersectionHighlightRemapMax;
			float _VertexColourSaturationShift;
			float _IntersectionHighlightRemapMin;
			float _VertexColorHSVEnabledOn;
			float _VertexColourHueShift;
			float _RadialMaskRadius;
			float _IntersectionHighlightColourValueMultiplier;
			float _IntersectionHighlightColourSaturationShift;
			float _VerticalColourMaskPower;
			float _RadialMaskRadiusOverParticleLifetime;
			float _RadialMaskDistortionOctaves;
			float _RadialMaskDistortionScale;
			float _CameraDepthFadePower;
			float _CameraDepthFadeOffset;
			float _CameraDepthFadeLength;
			float _SubtractiveDepthFadePower;
			float _SubtractiveDepthFade;
			float _DepthFadePower;
			float _DepthFade;
			float _FresnelMask;
			float _FresnelMaskPower;
			float _FresnelMaskRemapMax;
			float _FresnelMaskRemapMin;
			float _VerticalMask2Power;
			float _VerticalMask2ObjectSpaceScale;
			float _VerticalMask2ObjectSpaceOffset;
			float _VerticalMask2RemapMax;
			float _VerticalMask2RemapMin;
			float _VerticalMask1Power;
			float _VerticalMask1ObjectSpaceScale;
			float _VerticalMask1ObjectSpaceOffset;
			float _VerticalMask1RemapMin;
			float _VerticalMask1RemapMax;
			float _RadialMaskPower;
			float _RadialMaskDistortion;
			float _RadialMaskDistortionPower;
			float _RadialMaskDistortionDilation;
			float _RadialMaskFeather;
			float _Tessellation;
			float _NoiseOctaves;
			float _ColourSaturationShift;
			float _VertexOffsetOverY1Power;
			float _VertexTwist;
			float _VertexUVOffsetBottom;
			float _VertexUVOffsetBottomPower;
			float _VertexUVOffsetTop;
			float _VertexUVOffsetTopPower;
			float _VertexNoise;
			float _VertexNoiseTwist;
			float _VertexNoiseDilation;
			float _VertexNoiseOctaves;
			float _VertexNoiseScale;
			float _VertexOffsetOverY2Power;
			float _ParticleRandomization;
			float _VertexWaveNoiseVerticalMaskRemapMax;
			float _VertexWaveNoiseVerticalMaskRemapMin;
			float _VertexWave;
			float _VertexWaveOffset;
			float _VertexWaveAnimation;
			float _VertexWaveScale;
			float _VertexNormalOffsetBottom;
			float _VertexNormalOffsetBottomPower;
			float _VertexNormalOffsetTop;
			float _VertexNormalOffsetTopPower;
			float _VertexNormalOffset;
			float _VertexWaveNoiseVerticalMaskPower;
			float _ColourValueMultiplier;
			float _VertexOffsetOverCircularYPower;
			float _NoiseRemapMax;
			float _ColourHueShift;
			float _ColourPower;
			float _Noise;
			float _ParticleSubtractNoiseoverLifetime1;
			float _NoisePower;
			float _NoiseDilation;
			float _Alpha;
			float _NoiseScale;
			float _NoiseDistortion;
			float _NoiseDistortionPower;
			float _NoiseDistortionDilation;
			float _NoiseRemapMin;
			float _NoiseDistortionOctaves;
			float _NoiseParallaxOffset;
			float _NoiseUVYPreRemapMax;
			float _NoiseUVYPreRemapMin;
			float _NoiseUVYPrePower;
			float _NoiseUVYPreScale;
			float _NoiseUVYPreOffset;
			float _NoiseXZTwist;
			float _NoiseXYTwist;
			float _SpherizeNoiseStrength;
			float _SpherizeNoiseRadius;
			float _UVSampleNoise;
			float _NoiseDistortionScale;
			float _IntersectionHighlightAlpha;
			float4 _EmissionColor;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			#ifdef _ENABLE_SHADOW_MATTE
			float _ShadowMatteFilter;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _DstBlend2;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _AlphaCutoff;
			float _AlphaCutoffShadow;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			float _EnableBlendModePreserveSpecularLighting;
			#ifdef ASE_TESSELLATION
			float _TessPhongStrength;
			float _TessValue;
			float _TessMin;
			float _TessMax;
			float _TessEdgeLength;
			float _TessMaxDisp;
			#endif
			CBUFFER_END

			float4x4 unity_CameraProjection;
			float4x4 unity_CameraInvProjection;
			float4x4 unity_WorldToCamera;
			float4x4 unity_CameraToWorld;


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Unlit/Unlit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_TEXTURE_COORDINATES1
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES1
			#pragma shader_feature_local _SWAPUVXY1_ON
			#pragma shader_feature_local _UV2DNORMCENT1_NORMAL1 _UV2DNORMCENT1_CENTERED1
			#pragma shader_feature_local _VERTEXWAVEENABLED_ON
			#pragma shader_feature_local _VERTEXNOISEENABLED_ON
			#pragma shader_feature_local _VERTEXNOISETWISTENABLED_ON
			#pragma shader_feature_local _VERTEXNOISEDILATIONENABLED_ON
			#pragma shader_feature_local _RADIALMASKSUBTRACTIVE_ON
			#pragma shader_feature_local _NOISEDILATIONENABLED_ON
			#pragma shader_feature_local _NOISEXZTWISTENABLED_ON
			#pragma shader_feature_local _SPHERIZENOISE_ON
			#pragma shader_feature_local _WORLDSPACEUVS_ON
			#pragma shader_feature_local _OBJECTSPACEUVS_ON
			#pragma shader_feature_local _VERTEXWORLDPOS1_VERTEXPOS1 _VERTEXWORLDPOS1_WORLDPOS1
			#pragma shader_feature_local _NOISEUVPREREMAP_ON
			#pragma shader_feature_local _NOISEDISTORTIONENABLED_ON
			#pragma shader_feature_local _NOISEDISTORTIONDILATIONENABLED_ON
			#pragma shader_feature_local _VERTICALMASK2_ON
			#pragma shader_feature_local _VERTICALMASK1_ON
			#pragma shader_feature_local _RADIALMASK_ON
			#pragma shader_feature_local _UV2DCENTNORM_ON
			#pragma shader_feature_local _RADIALMASKDISTORTIONENABLED_ON
			#pragma shader_feature_local _RADIALMASKDISTORTIONDILATIONENABLED_ON
			#pragma shader_feature_local _VERTICALMASK1SUBTRACTIVE_ON
			#pragma shader_feature_local _VERTICALMASKSOBJECTSPACE_ON
			#pragma shader_feature_local _VERTICALMASK2SUBTRACTIVE_ON
			#pragma shader_feature_local _INVERTDEPTHFADE_ON


			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float3 previousPositionOS : TEXCOORD4;
				float3 precomputedVelocity : TEXCOORD5;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 vmeshPositionCS : SV_Position;
				float3 vmeshPositionRWS : TEXCOORD0;
				float3 vpassPositionCS : TEXCOORD1;
				float3 vpassPreviousPositionCS : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
				float4 ase_texcoord8 : TEXCOORD8;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			
			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};

			void BuildSurfaceData(FragInputs fragInputs, SurfaceDescription surfaceDescription, float3 V, out SurfaceData surfaceData)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);
				#ifdef WRITE_NORMAL_BUFFER
				surfaceData.normalWS = fragInputs.tangentToWorld[2];
				#endif
			}

			void GetSurfaceAndBuiltinData(SurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                #endif

				#ifdef _ALPHATEST_ON
				DoAlphaTest ( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
                ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
                #endif

				BuildSurfaceData(fragInputs, surfaceDescription, V, surfaceData);
				ZERO_INITIALIZE(BuiltinData, builtinData);
				builtinData.opacity =  surfaceDescription.Alpha;

				#if defined(DEBUG_DISPLAY)
                    builtinData.renderingLayers = GetMeshRenderingLayerMask();
                #endif


                #ifdef _ALPHATEST_ON
                    builtinData.alphaClipTreshold = surfaceDescription.AlphaClipThreshold;
                #endif


                #ifdef _DEPTHOFFSET_ON
                builtinData.depthOffset = surfaceDescription.DepthOffset;
                #endif

                ApplyDebugToBuiltinData(builtinData);
			}

			AttributesMesh ApplyMeshModification(AttributesMesh inputMesh, float3 timeParameters, inout PackedVaryingsMeshToPS o )
			{
				_TimeParameters.xyz = timeParameters;
				float localTwistXZ_float11_g793 = ( 0.0 );
				float2 texCoord721 = inputMesh.ase_texcoord * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord718 = inputMesh.ase_texcoord.xy * float2( 2,2 ) + float2( -1,-1 );
				#if defined( _UV2DNORMCENT1_NORMAL1 )
				float2 staticSwitch714 = texCoord721;
				#elif defined( _UV2DNORMCENT1_CENTERED1 )
				float2 staticSwitch714 = texCoord718;
				#else
				float2 staticSwitch714 = texCoord721;
				#endif
				#ifdef _SWAPUVXY1_ON
				float2 staticSwitch988 = (staticSwitch714).yx;
				#else
				float2 staticSwitch988 = staticSwitch714;
				#endif
				float UV_2D_Ym723 = (staticSwitch988).y;
				float3 Vertex_Normal_Offset947 = ( ( inputMesh.normalOS * _VertexNormalOffset ) + ( pow( UV_2D_Ym723 , _VertexNormalOffsetTopPower ) * inputMesh.normalOS * _VertexNormalOffsetTop ) + ( pow( ( 1.0 - UV_2D_Ym723 ) , _VertexNormalOffsetBottomPower ) * inputMesh.normalOS * _VertexNormalOffsetBottom ) );
				float2 UV_2Dm715 = staticSwitch988;
				float mulTime868 = _TimeParameters.x * _VertexWaveAnimation;
				float temp_output_7_0_g784 = _VertexWaveNoiseVerticalMaskRemapMin;
				float temp_output_23_0_g784 = _VertexWaveNoiseVerticalMaskRemapMax;
				float temp_output_20_0_g784 = UV_2D_Ym723;
				float temp_output_4_0_g784 = _VertexWaveNoiseVerticalMaskPower;
				float smoothstepResult22_g784 = smoothstep( temp_output_7_0_g784 , temp_output_23_0_g784 , pow( temp_output_20_0_g784 , temp_output_4_0_g784 ));
				float Vertex_WaveNoise_Vertical_Mask819 = smoothstepResult22_g784;
				#ifdef _VERTEXWAVEENABLED_ON
				float3 staticSwitch930 = ( ( sin( ( ( UV_2Dm715.y * TWO_PI * _VertexWaveScale ) - ( mulTime868 + ( _VertexWaveOffset * TWO_PI ) ) ) ) * _VertexWave * Vertex_WaveNoise_Vertical_Mask819 ) * inputMesh.normalOS );
				#else
				float3 staticSwitch930 = float3( 0,0,0 );
				#endif
				float3 Vertex_Sine943 = staticSwitch930;
				float localSimplexNoise_float2_g790 = ( 0.0 );
				float Particle_Stable_Random_X771 = ( ( inputMesh.ase_texcoord.w - 0.5 ) * 100.0 * _ParticleRandomization );
				float Particle_Age_Percent770 = inputMesh.ase_texcoord.z;
				#ifdef _WORLDSPACEUVS2_ON
				float staticSwitch860 = Particle_Age_Percent770;
				#else
				float staticSwitch860 = Particle_Stable_Random_X771;
				#endif
				float3 temp_cast_0 = (staticSwitch860).xxx;
				float4 Vertex_Noise_Offset852 = ( _VertexNoiseOffset + Particle_Stable_Random_X771 + ( _VertexNoiseParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g786 = ( float4( ( temp_cast_0 * _VertexNoiseScale * _VertexNoiseTiling ) , 0.0 ) - ( Vertex_Noise_Offset852 + ( _VertexNoiseAnimation * _TimeParameters.x ) ) );
				float3 temp_output_871_0 = (temp_output_10_0_g786).xyz;
				float3 position2_g790 = temp_output_871_0;
				float temp_output_871_15 = (temp_output_10_0_g786).w;
				float angle2_g790 = temp_output_871_15;
				float octaves2_g790 = _VertexNoiseOctaves;
				float noise2_g790 = 0.0;
				float3 gradient2_g790 = float3( 0,0,0 );
				SimplexNoise_float( position2_g790 , angle2_g790 , octaves2_g790 , noise2_g790 , gradient2_g790 );
				float localSimplexNoise_Caustics_float2_g789 = ( 0.0 );
				float3 position2_g789 = temp_output_871_0;
				float angle2_g789 = temp_output_871_15;
				float octaves2_g789 = _VertexNoiseOctaves;
				float gradientStrength2_g789 = _VertexNoiseDilation;
				float noise2_g789 = 0.0;
				float3 gradient2_g789 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g789 , angle2_g789 , octaves2_g789 , gradientStrength2_g789 , noise2_g789 , gradient2_g789 );
				#ifdef _VERTEXNOISEDILATIONENABLED_ON
				float3 staticSwitch886 = gradient2_g789;
				#else
				float3 staticSwitch886 = gradient2_g790;
				#endif
				float localTwistXZ_float11_g791 = ( 0.0 );
				float3 temp_output_10_0_g791 = staticSwitch886;
				float3 position11_g791 = temp_output_10_0_g791;
				float temp_output_9_0_g791 = _VertexNoiseTwist;
				float angle11_g791 = radians( temp_output_9_0_g791 );
				float3 output11_g791 = float3( 0,0,0 );
				TwistXZ_float( position11_g791 , angle11_g791 , output11_g791 );
				float3 temp_output_898_0 = output11_g791;
				#ifdef _VERTEXNOISETWISTENABLED_ON
				float3 staticSwitch973 = temp_output_898_0;
				#else
				float3 staticSwitch973 = staticSwitch886;
				#endif
				#ifdef _VERTEXNOISEENABLED_ON
				float3 staticSwitch933 = ( temp_output_898_0 * _VertexNoise * Vertex_WaveNoise_Vertical_Mask819 );
				#else
				float3 staticSwitch933 = staticSwitch973;
				#endif
				float3 Vertex_Noise946 = staticSwitch933;
				float2 break876 = ( ( UV_2Dm715 * float2( 2,1 ) ) - float2( 1,0 ) );
				float temp_output_907_0 = ( ( break876.x * pow( break876.y , _VertexUVOffsetTopPower ) ) * ( _VertexUVOffsetTop * 0.5 ) );
				float3 appendResult922 = (float3(temp_output_907_0 , 0.0 , 0.0));
				float3 appendResult921 = (float3(0.0 , temp_output_907_0 , 0.0));
				#ifdef _SWAPUVXY1_ON
				float3 staticSwitch931 = appendResult921;
				#else
				float3 staticSwitch931 = appendResult922;
				#endif
				float3 Vertex_Offset_Top944 = staticSwitch931;
				float2 break869 = ( ( UV_2Dm715 * float2( 2,1 ) ) - float2( 1,0 ) );
				float temp_output_906_0 = ( ( break869.x * pow( ( 1.0 - break869.y ) , _VertexUVOffsetBottomPower ) ) * ( _VertexUVOffsetBottom * 0.5 ) );
				float3 appendResult924 = (float3(temp_output_906_0 , 0.0 , 0.0));
				float3 appendResult923 = (float3(0.0 , temp_output_906_0 , 0.0));
				#ifdef _SWAPUVXY1_ON
				float3 staticSwitch932 = appendResult923;
				#else
				float3 staticSwitch932 = appendResult924;
				#endif
				float3 Vertex_Offset_Bottom945 = staticSwitch932;
				float3 temp_output_10_0_g793 = ( ( Vertex_Normal_Offset947 + Vertex_Sine943 + Vertex_Noise946 + Vertex_Offset_Top944 + Vertex_Offset_Bottom945 ) + inputMesh.positionOS );
				float3 position11_g793 = temp_output_10_0_g793;
				float temp_output_9_0_g793 = -_VertexTwist;
				float angle11_g793 = radians( temp_output_9_0_g793 );
				float3 output11_g793 = float3( 0,0,0 );
				TwistXZ_float( position11_g793 , angle11_g793 , output11_g793 );
				float3 worldToObjDir948 = mul( GetWorldToObjectMatrix(), float4( _VertexOffsetOverY1, 0.0 ) ).xyz;
				float3 worldToObjDir950 = mul( GetWorldToObjectMatrix(), float4( _VertexOffsetOverY2, 0.0 ) ).xyz;
				float UV_2D_Circular_Y929 = sin( ( UV_2D_Ym723 * PI ) );
				float3 Vertex_Offset_over_Y966 = ( ( worldToObjDir948 * pow( UV_2D_Ym723 , _VertexOffsetOverY1Power ) ) + ( worldToObjDir950 * pow( UV_2D_Ym723 , _VertexOffsetOverY2Power ) ) + ( _VertexOffsetOverCircularY * pow( UV_2D_Circular_Y929 , _VertexOffsetOverCircularYPower ) ) );
				float3 Vertex_Offset971 = ( output11_g793 + Vertex_Offset_over_Y966 );
				
				float3 ase_positionWS = GetAbsolutePositionWS( TransformObjectToWorld( ( inputMesh.positionOS ).xyz ) );
				o.ase_texcoord5.xyz = ase_positionWS;
				float4 ase_positionCS = TransformWorldToHClip( TransformObjectToWorld( ( inputMesh.positionOS ).xyz ) );
				float4 screenPos = ComputeScreenPos( ase_positionCS, _ProjectionParams.x );
				o.ase_texcoord6 = screenPos;
				float3 ase_normalWS = TransformObjectToWorldNormal( inputMesh.normalOS );
				o.ase_texcoord8.xyz = ase_normalWS;
				float3 objectToViewPos = TransformWorldToView( TransformObjectToWorld( inputMesh.positionOS ) );
				float eyeDepth = -objectToViewPos.z;
				o.ase_texcoord5.w = eyeDepth;
				
				o.ase_texcoord3 = inputMesh.ase_texcoord;
				o.ase_texcoord4 = float4(inputMesh.positionOS,1);
				o.ase_texcoord7 = inputMesh.ase_texcoord1;
				o.ase_color = inputMesh.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord8.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = Vertex_Offset971;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif
				inputMesh.normalOS = inputMesh.normalOS;
				return inputMesh;
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh)
			{
				PackedVaryingsMeshToPS o = (PackedVaryingsMeshToPS)0;
				AttributesMesh defaultMesh = inputMesh;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				#if defined(HAVE_MESH_MODIFICATION)
					inputMesh = ApplyMeshModification( inputMesh, _TimeParameters.xyz, o);
				#endif

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);

				float3 VMESHpositionRWS = positionRWS;
				float4 VMESHpositionCS = TransformWorldToHClip(positionRWS);

				float4 VPASSpreviousPositionCS;
				float4 VPASSpositionCS = mul(UNITY_MATRIX_UNJITTERED_VP, float4(VMESHpositionRWS, 1.0));

				bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
				if (forceNoMotion)
				{
					VPASSpreviousPositionCS = float4(0.0, 0.0, 0.0, 1.0);
				}
				else
				{
					bool hasDeformation = unity_MotionVectorsParams.x > 0.0;
					float3 effectivePositionOS = (hasDeformation ? inputMesh.previousPositionOS : defaultMesh.positionOS);

					#if defined(_ADD_PRECOMPUTED_VELOCITY)
						effectivePositionOS -= inputMesh.precomputedVelocity;
					#endif

					#if defined(HAVE_MESH_MODIFICATION)
						AttributesMesh previousMesh = defaultMesh;
						previousMesh.positionOS = effectivePositionOS;
						PackedVaryingsMeshToPS test = (PackedVaryingsMeshToPS)0;
						previousMesh = ApplyMeshModification(previousMesh, _LastTimeParameters.xyz, test);
						float3 previousPositionRWS = TransformPreviousObjectToWorld(previousMesh.positionOS);
					#else
						float3 previousPositionRWS = TransformPreviousObjectToWorld(effectivePositionOS);
					#endif

					#ifdef ATTRIBUTES_NEED_NORMAL
						float3 normalWS = TransformPreviousObjectToWorldNormal(defaultMesh.normalOS);
					#else
						float3 normalWS = float3(0.0, 0.0, 0.0);
					#endif

					#if defined(HAVE_VERTEX_MODIFICATION)
						ApplyVertexModification(inputMesh, normalWS, previousPositionRWS, _LastTimeParameters.xyz);
					#endif

					VPASSpreviousPositionCS = mul(UNITY_MATRIX_PREV_VP, float4(previousPositionRWS, 1.0));
				}

				o.vmeshPositionCS = VMESHpositionCS;
				o.vmeshPositionRWS.xyz = VMESHpositionRWS;

				o.vpassPositionCS = float3(VPASSpositionCS.xyw);
				o.vpassPreviousPositionCS = float3(VPASSpreviousPositionCS.xyw);
				return o;
			}

			#if ( 0 ) // TEMPORARY: defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float3 previousPositionOS : TEXCOORD4;
				float3 precomputedVelocity : TEXCOORD5;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.previousPositionOS = v.previousPositionOS;
				#if defined (_ADD_PRECOMPUTED_VELOCITY)
					o.precomputedVelocity = v.precomputedVelocity;
				#endif
				o.ase_texcoord = v.ase_texcoord;
				o.ase_texcoord1 = v.ase_texcoord1;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.previousPositionOS = patch[0].previousPositionOS * bary.x + patch[1].previousPositionOS * bary.y + patch[2].previousPositionOS * bary.z;
				#if defined (_ADD_PRECOMPUTED_VELOCITY)
					o.precomputedVelocity = patch[0].precomputedVelocity * bary.x + patch[1].precomputedVelocity * bary.y + patch[2].precomputedVelocity * bary.z;
				#endif
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			#if defined(WRITE_DECAL_BUFFER) && defined(WRITE_MSAA_DEPTH)
			#define SV_TARGET_NORMAL SV_Target3
			#elif defined(WRITE_DECAL_BUFFER) || defined(WRITE_MSAA_DEPTH)
			#define SV_TARGET_NORMAL SV_Target2
			#else
			#define SV_TARGET_NORMAL SV_Target1
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput
						#ifdef WRITE_MSAA_DEPTH
						, out float4 depthColor : SV_Target0
						, out float4 outMotionVector : SV_Target1
							#ifdef WRITE_DECAL_BUFFER
							, out float4 outDecalBuffer : SV_Target2
							#endif
						#else
						, out float4 outMotionVector : SV_Target0
							#ifdef WRITE_DECAL_BUFFER
							, out float4 outDecalBuffer : SV_Target1
							#endif
						#endif

						#ifdef WRITE_NORMAL_BUFFER
						, out float4 outNormalBuffer : SV_TARGET_NORMAL
						#endif

						#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : DEPTH_OFFSET_SEMANTIC
						#endif
						
					)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );
				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.vmeshPositionCS;
				input.positionRWS = packedInput.vmeshPositionRWS.xyz;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				float temp_output_7_0_g781 = _NoiseRemapMin;
				float temp_output_23_0_g781 = _NoiseRemapMax;
				float localSimplexNoise_float2_g779 = ( 0.0 );
				float2 texCoord721 = packedInput.ase_texcoord3.xy * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord718 = packedInput.ase_texcoord3.xy * float2( 2,2 ) + float2( -1,-1 );
				#if defined( _UV2DNORMCENT1_NORMAL1 )
				float2 staticSwitch714 = texCoord721;
				#elif defined( _UV2DNORMCENT1_CENTERED1 )
				float2 staticSwitch714 = texCoord718;
				#else
				float2 staticSwitch714 = texCoord721;
				#endif
				#ifdef _SWAPUVXY1_ON
				float2 staticSwitch988 = (staticSwitch714).yx;
				#else
				float2 staticSwitch988 = staticSwitch714;
				#endif
				float2 UV_2Dm715 = staticSwitch988;
				float3 ase_positionWS = packedInput.ase_texcoord5.xyz;
				#if defined( _VERTEXWORLDPOS1_VERTEXPOS1 )
				float3 staticSwitch734 = packedInput.ase_texcoord4.xyz;
				#elif defined( _VERTEXWORLDPOS1_WORLDPOS1 )
				float3 staticSwitch734 = ase_positionWS;
				#else
				float3 staticSwitch734 = packedInput.ase_texcoord4.xyz;
				#endif
				#ifdef _SWAPUVXY7_ON
				float3 staticSwitch735 = (staticSwitch734).yxz;
				#else
				float3 staticSwitch735 = staticSwitch734;
				#endif
				float3 UV_3D_VWP1739 = staticSwitch735;
				#ifdef _OBJECTSPACEUVS_ON
				float3 staticSwitch792 = UV_3D_VWP1739;
				#else
				float3 staticSwitch792 = float3( UV_2Dm715 ,  0.0 );
				#endif
				float UV_3D_World_VWP2682 = 0.0;
				float3 temp_cast_1 = (UV_3D_World_VWP2682).xxx;
				#ifdef _WORLDSPACEUVS_ON
				float3 staticSwitch793 = temp_cast_1;
				#else
				float3 staticSwitch793 = staticSwitch792;
				#endif
				float4 screenPos = packedInput.ase_texcoord6;
				float4 ase_positionSSNorm = screenPos / screenPos.w;
				ase_positionSSNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_positionSSNorm.z : ase_positionSSNorm.z * 0.5 + 0.5;
				float2 appendResult745 = (float2(ase_positionSSNorm.x , ase_positionSSNorm.y));
				float2 Screen_UV747 = appendResult745;
				float2 appendResult746 = (float2(_ScreenParams.x , _ScreenParams.y));
				float2 Screen_Resolution748 = appendResult746;
				float2 Screen_Position750 = ( Screen_UV747 * Screen_Resolution748 );
				float2 screenPosition441 = Screen_Position750;
				float mulTime440 = _TimeParameters.x * 60.0;
				float time441 = mulTime440;
				float3 localHash33441 = Hash33( screenPosition441 , time441 );
				float3 Sample_Noise445 = ( (localHash33441*2.0 + -1.0) * _UVSampleNoise );
				float3 Noise_Base_UV795 = ( staticSwitch793 + Sample_Noise445 );
				float localSpherize_float5_g755 = ( 0.0 );
				float2 uv5_g755 = (Noise_Base_UV795).xy;
				float2 center5_g755 = ( _SpherizeNoiseOffset + float2( 0.5,0.5 ) );
				float radius5_g755 = _SpherizeNoiseRadius;
				float strength5_g755 = _SpherizeNoiseStrength;
				float2 output5_g755 = float2( 0,0 );
				Spherize_float( uv5_g755 , center5_g755 , radius5_g755 , strength5_g755 , output5_g755 );
				float3 appendResult506 = (float3(output5_g755 , (Noise_Base_UV795).z));
				#ifdef _SPHERIZENOISE_ON
				float3 staticSwitch505 = appendResult506;
				#else
				float3 staticSwitch505 = Noise_Base_UV795;
				#endif
				float2 center45_g765 = ( _NoiseXYTwistOffset + float2( 0.5,0.5 ) );
				float2 delta6_g765 = ( staticSwitch505.xy - center45_g765 );
				float angle10_g765 = ( length( delta6_g765 ) * radians( _NoiseXYTwist ) );
				float x23_g765 = ( ( cos( angle10_g765 ) * delta6_g765.x ) - ( sin( angle10_g765 ) * delta6_g765.y ) );
				float2 break40_g765 = center45_g765;
				float2 break41_g765 = float2( 0,0 );
				float y35_g765 = ( ( sin( angle10_g765 ) * delta6_g765.x ) + ( cos( angle10_g765 ) * delta6_g765.y ) );
				float2 appendResult44_g765 = (float2(( x23_g765 + break40_g765.x + break41_g765.x ) , ( break40_g765.y + break41_g765.y + y35_g765 )));
				float2 temp_output_499_0 = appendResult44_g765;
				float localTwistXZ_float11_g763 = ( 0.0 );
				float3 temp_output_10_0_g763 = float3( temp_output_499_0 ,  0.0 );
				float3 position11_g763 = temp_output_10_0_g763;
				float temp_output_9_0_g763 = _NoiseXZTwist;
				float angle11_g763 = radians( temp_output_9_0_g763 );
				float3 output11_g763 = float3( 0,0,0 );
				TwistXZ_float( position11_g763 , angle11_g763 , output11_g763 );
				#ifdef _NOISEXZTWISTENABLED_ON
				float3 staticSwitch498 = output11_g763;
				#else
				float3 staticSwitch498 = float3( temp_output_499_0 ,  0.0 );
				#endif
				float3 break469 = staticSwitch498;
				float temp_output_478_0 = ( ( break469.y - _NoiseUVYPreOffset ) * _NoiseUVYPreScale );
				float temp_output_7_0_g770 = abs( temp_output_478_0 );
				float temp_output_7_0_g771 = abs( temp_output_478_0 );
				float smoothstepResult16_g771 = smoothstep( _NoiseUVYPreRemapMin , _NoiseUVYPreRemapMax , pow( temp_output_7_0_g771 , _NoiseUVYPrePower ));
				#ifdef _NOISEUVPREREMAP_ON
				float staticSwitch485 = ( smoothstepResult16_g771 * sign( temp_output_478_0 ) );
				#else
				float staticSwitch485 = ( pow( temp_output_7_0_g770 , _NoiseUVYPrePower ) * sign( temp_output_478_0 ) );
				#endif
				float3 appendResult486 = (float3(break469.x , staticSwitch485 , 0.0));
				float3 temp_output_787_0 = ( -V * _NoiseParallaxOffset );
				#ifdef _SWAPUVXY3_ON
				float3 staticSwitch789 = (temp_output_787_0).yxz;
				#else
				float3 staticSwitch789 = temp_output_787_0;
				#endif
				float3 Parallax_Offset790 = staticSwitch789;
				float localSimplexNoise_float2_g761 = ( 0.0 );
				float Particle_Stable_Random_X771 = ( ( packedInput.ase_texcoord3.w - 0.5 ) * 100.0 * _ParticleRandomization );
				float Particle_Age_Percent770 = packedInput.ase_texcoord3.z;
				float4 Distortion_Noise_Offset813 = ( _NoiseDistortionOffset + Particle_Stable_Random_X771 + ( _NoiseDistortionParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g758 = ( float4( ( ( Noise_Base_UV795 + Parallax_Offset790 ) * _NoiseDistortionScale * _NoiseDistortionTiling ) , 0.0 ) - ( Distortion_Noise_Offset813 + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 temp_output_322_0 = (temp_output_10_0_g758).xyz;
				float3 position2_g761 = temp_output_322_0;
				float temp_output_322_15 = (temp_output_10_0_g758).w;
				float angle2_g761 = temp_output_322_15;
				float octaves2_g761 = _NoiseDistortionOctaves;
				float noise2_g761 = 0.0;
				float3 gradient2_g761 = float3( 0,0,0 );
				SimplexNoise_float( position2_g761 , angle2_g761 , octaves2_g761 , noise2_g761 , gradient2_g761 );
				float localSimplexNoise_Caustics_float2_g760 = ( 0.0 );
				float3 position2_g760 = temp_output_322_0;
				float angle2_g760 = temp_output_322_15;
				float octaves2_g760 = _NoiseDistortionOctaves;
				float gradientStrength2_g760 = _NoiseDistortionDilation;
				float noise2_g760 = 0.0;
				float3 gradient2_g760 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g760 , angle2_g760 , octaves2_g760 , gradientStrength2_g760 , noise2_g760 , gradient2_g760 );
				#ifdef _NOISEDISTORTIONDILATIONENABLED_ON
				float3 staticSwitch329 = gradient2_g760;
				#else
				float3 staticSwitch329 = gradient2_g761;
				#endif
				float3 temp_output_7_0_g766 = abs( staticSwitch329 );
				float3 temp_cast_6 = (_NoiseDistortionPower).xxx;
				#ifdef _NOISEDISTORTIONENABLED_ON
				float3 staticSwitch336 = ( ( pow( temp_output_7_0_g766 , temp_cast_6 ) * sign( staticSwitch329 ) ) * _NoiseDistortion );
				#else
				float3 staticSwitch336 = float3( 0,0,0 );
				#endif
				float3 Noise_Distortion337 = staticSwitch336;
				float3 Noise_UV494 = ( appendResult486 + Parallax_Offset790 + Noise_Distortion337 );
				float4 Noise_Offset786 = ( _NoiseOffset + Particle_Stable_Random_X771 + ( _NoiseParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g775 = ( float4( ( Noise_UV494 * _NoiseScale * _NoiseTiling ) , 0.0 ) - ( Noise_Offset786 + ( _NoiseAnimation * _TimeParameters.x ) ) );
				float3 temp_output_344_0 = (temp_output_10_0_g775).xyz;
				float3 position2_g779 = temp_output_344_0;
				float temp_output_344_15 = (temp_output_10_0_g775).w;
				float angle2_g779 = temp_output_344_15;
				float octaves2_g779 = _NoiseOctaves;
				float noise2_g779 = 0.0;
				float3 gradient2_g779 = float3( 0,0,0 );
				SimplexNoise_float( position2_g779 , angle2_g779 , octaves2_g779 , noise2_g779 , gradient2_g779 );
				float localSimplexNoise_Caustics_float2_g778 = ( 0.0 );
				float3 position2_g778 = temp_output_344_0;
				float angle2_g778 = temp_output_344_15;
				float octaves2_g778 = _NoiseOctaves;
				float gradientStrength2_g778 = _NoiseDilation;
				float noise2_g778 = 0.0;
				float3 gradient2_g778 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g778 , angle2_g778 , octaves2_g778 , gradientStrength2_g778 , noise2_g778 , gradient2_g778 );
				#ifdef _NOISEDILATIONENABLED_ON
				float staticSwitch349 = noise2_g778;
				#else
				float staticSwitch349 = noise2_g779;
				#endif
				float temp_output_20_0_g781 = staticSwitch349;
				float temp_output_4_0_g781 = _NoisePower;
				float smoothstepResult22_g781 = smoothstep( temp_output_7_0_g781 , temp_output_23_0_g781 , pow( temp_output_20_0_g781 , temp_output_4_0_g781 ));
				float Particle_Subtract_Noise_over_Lifetime779 = ( packedInput.ase_texcoord7.y * _ParticleSubtractNoiseoverLifetime1 );
				float temp_output_356_0 = ( smoothstepResult22_g781 - Particle_Subtract_Noise_over_Lifetime779 );
				float lerpResult359 = lerp( 1.0 , temp_output_356_0 , _Noise);
				float Noise360 = lerpResult359;
				float Particle_Mask_Radius_over_Lifetime630 = packedInput.ase_texcoord7.x;
				float lerpResult245 = lerp( 1.0 , Particle_Mask_Radius_over_Lifetime630 , _RadialMaskRadiusOverParticleLifetime);
				float temp_output_6_0_g772 = ( 1.0 - ( _RadialMaskRadius * lerpResult245 ) );
				float lerpResult5_g772 = lerp( temp_output_6_0_g772 , 1.0 , _RadialMaskFeather);
				float2 texCoord991 = packedInput.ase_texcoord3.xy * float2( 2,2 ) + float2( -1,-1 );
				float2 texCoord997 = packedInput.ase_texcoord3.xy * float2( 1,1 ) + float2( 0,0 );
				#ifdef _UV2DCENTNORM_ON
				float2 staticSwitch996 = texCoord997;
				#else
				float2 staticSwitch996 = texCoord991;
				#endif
				#ifdef _SWAPUVXY1_ON
				float2 staticSwitch990 = (staticSwitch996).yx;
				#else
				float2 staticSwitch990 = staticSwitch996;
				#endif
				float2 UV_2D_Centeredm992 = staticSwitch990;
				float localSimplexNoise_float2_g757 = ( 0.0 );
				float4 Mask_Distortion_Noise_Offset805 = ( _RadialMaskDistortionOffset + Particle_Stable_Random_X771 + ( _RadialMaskDistortionParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g725 = ( float4( ( Noise_Base_UV795 * _RadialMaskDistortionScale * _RadialMaskDistortionTiling ) , 0.0 ) - ( Mask_Distortion_Noise_Offset805 + ( _RadialMaskDistortionAnimation * _TimeParameters.x ) ) );
				float3 temp_output_305_0 = (temp_output_10_0_g725).xyz;
				float3 position2_g757 = temp_output_305_0;
				float temp_output_305_15 = (temp_output_10_0_g725).w;
				float angle2_g757 = temp_output_305_15;
				float octaves2_g757 = _RadialMaskDistortionOctaves;
				float noise2_g757 = 0.0;
				float3 gradient2_g757 = float3( 0,0,0 );
				SimplexNoise_float( position2_g757 , angle2_g757 , octaves2_g757 , noise2_g757 , gradient2_g757 );
				float localSimplexNoise_Caustics_float2_g756 = ( 0.0 );
				float3 position2_g756 = temp_output_305_0;
				float angle2_g756 = temp_output_305_15;
				float octaves2_g756 = _RadialMaskDistortionOctaves;
				float gradientStrength2_g756 = _RadialMaskDistortionDilation;
				float noise2_g756 = 0.0;
				float3 gradient2_g756 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g756 , angle2_g756 , octaves2_g756 , gradientStrength2_g756 , noise2_g756 , gradient2_g756 );
				#ifdef _RADIALMASKDISTORTIONDILATIONENABLED_ON
				float3 staticSwitch310 = gradient2_g756;
				#else
				float3 staticSwitch310 = gradient2_g757;
				#endif
				float3 temp_output_7_0_g762 = abs( staticSwitch310 );
				float3 temp_cast_9 = (_RadialMaskDistortionPower).xxx;
				#ifdef _RADIALMASKDISTORTIONENABLED_ON
				float3 staticSwitch325 = ( ( pow( temp_output_7_0_g762 , temp_cast_9 ) * sign( staticSwitch310 ) ) * _RadialMaskDistortion );
				#else
				float3 staticSwitch325 = float3( 0,0,0 );
				#endif
				float3 Mask_Distortion328 = staticSwitch325;
				float temp_output_7_0_g772 = ( 1.0 - length( ( ( ( UV_2D_Centeredm992 + (Mask_Distortion328).xy ) - _RadialMaskOffset ) * _RadialMaskTiling ) ) );
				float smoothstepResult4_g772 = smoothstep( temp_output_6_0_g772 , lerpResult5_g772 , temp_output_7_0_g772);
				#ifdef _RADIALMASK_ON
				float staticSwitch256 = ( 1.0 - pow( smoothstepResult4_g772 , _RadialMaskPower ) );
				#else
				float staticSwitch256 = 0.0;
				#endif
				float Radial_Mask257 = staticSwitch256;
				#ifdef _RADIALMASKSUBTRACTIVE_ON
				float staticSwitch204 = Radial_Mask257;
				#else
				float staticSwitch204 = 0.0;
				#endif
				float temp_output_7_0_g777 = _VerticalMask1RemapMax;
				float temp_output_23_0_g777 = _VerticalMask1RemapMin;
				float UV_2D_Ym723 = (staticSwitch988).y;
				float UV_3D_Y_VWP1760 = (staticSwitch735).y;
				#ifdef _VERTICALMASKSOBJECTSPACE_ON
				float staticSwitch270 = ( ( UV_3D_Y_VWP1760 - _VerticalMask1ObjectSpaceOffset ) / _VerticalMask1ObjectSpaceScale );
				#else
				float staticSwitch270 = UV_2D_Ym723;
				#endif
				float temp_output_20_0_g777 = staticSwitch270;
				float smoothstepResult25_g777 = smoothstep( temp_output_7_0_g777 , temp_output_23_0_g777 , temp_output_20_0_g777);
				float temp_output_4_0_g777 = _VerticalMask1Power;
				float temp_output_278_0 = pow( smoothstepResult25_g777 , temp_output_4_0_g777 );
				#ifdef _VERTICALMASK1SUBTRACTIVE_ON
				float staticSwitch282 = ( 1.0 - temp_output_278_0 );
				#else
				float staticSwitch282 = temp_output_278_0;
				#endif
				float Vertical_Mask_1287 = staticSwitch282;
				#ifdef _VERTICALMASK1SUBTRACTIVE_ON
				float staticSwitch206 = ( staticSwitch204 + Vertical_Mask_1287 );
				#else
				float staticSwitch206 = staticSwitch204;
				#endif
				#ifdef _VERTICALMASK1_ON
				float staticSwitch207 = staticSwitch206;
				#else
				float staticSwitch207 = staticSwitch204;
				#endif
				float temp_output_7_0_g780 = _VerticalMask2RemapMin;
				float temp_output_23_0_g780 = _VerticalMask2RemapMax;
				#ifdef _VERTICALMASKSOBJECTSPACE_ON
				float staticSwitch286 = ( ( UV_3D_Y_VWP1760 - _VerticalMask2ObjectSpaceOffset ) / _VerticalMask2ObjectSpaceScale );
				#else
				float staticSwitch286 = UV_2D_Ym723;
				#endif
				float temp_output_20_0_g780 = staticSwitch286;
				float smoothstepResult25_g780 = smoothstep( temp_output_7_0_g780 , temp_output_23_0_g780 , temp_output_20_0_g780);
				float temp_output_4_0_g780 = _VerticalMask2Power;
				float temp_output_288_0 = pow( smoothstepResult25_g780 , temp_output_4_0_g780 );
				#ifdef _VERTICALMASK2SUBTRACTIVE_ON
				float staticSwitch290 = ( 1.0 - temp_output_288_0 );
				#else
				float staticSwitch290 = temp_output_288_0;
				#endif
				float Vertical_Mask_2291 = staticSwitch290;
				#ifdef _VERTICALMASK2SUBTRACTIVE_ON
				float staticSwitch208 = ( staticSwitch207 + Vertical_Mask_2291 );
				#else
				float staticSwitch208 = staticSwitch207;
				#endif
				#ifdef _VERTICALMASK2_ON
				float staticSwitch209 = staticSwitch208;
				#else
				float staticSwitch209 = staticSwitch207;
				#endif
				float3 ase_normalWS = packedInput.ase_texcoord8.xyz;
				float fresnelNdotV427 = dot( ase_normalWS, V );
				float fresnelNode427 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV427, _FresnelMaskPower ) );
				float smoothstepResult430 = smoothstep( _FresnelMaskRemapMin , _FresnelMaskRemapMax , fresnelNode427);
				float lerpResult432 = lerp( 1.0 , smoothstepResult430 , _FresnelMask);
				float Fresnel_Mask433 = lerpResult432;
				float temp_output_7_0_g782 = 0.0;
				float temp_output_23_0_g782 = 1.0;
				float screenDepth381 = LinearEyeDepth(SampleCameraDepth( ase_positionSSNorm.xy ),_ZBufferParams);
				float distanceDepth381 = saturate( abs( ( screenDepth381 - LinearEyeDepth( ase_positionSSNorm.z,_ZBufferParams ) ) / ( _DepthFade ) ) );
				#ifdef _INVERTDEPTHFADE_ON
				float staticSwitch386 = ( 1.0 - distanceDepth381 );
				#else
				float staticSwitch386 = distanceDepth381;
				#endif
				float temp_output_20_0_g782 = staticSwitch386;
				float temp_output_4_0_g782 = _DepthFadePower;
				float smoothstepResult22_g782 = smoothstep( temp_output_7_0_g782 , temp_output_23_0_g782 , pow( temp_output_20_0_g782 , temp_output_4_0_g782 ));
				float temp_output_7_0_g783 = 0.0;
				float temp_output_23_0_g783 = 1.0;
				float screenDepth384 = LinearEyeDepth(SampleCameraDepth( ase_positionSSNorm.xy ),_ZBufferParams);
				float distanceDepth384 = saturate( abs( ( screenDepth384 - LinearEyeDepth( ase_positionSSNorm.z,_ZBufferParams ) ) / ( _SubtractiveDepthFade ) ) );
				float temp_output_20_0_g783 = ( 1.0 - distanceDepth384 );
				float temp_output_4_0_g783 = _SubtractiveDepthFadePower;
				float smoothstepResult22_g783 = smoothstep( temp_output_7_0_g783 , temp_output_23_0_g783 , pow( temp_output_20_0_g783 , temp_output_4_0_g783 ));
				float Depth_Fade401 = saturate( ( smoothstepResult22_g782 - smoothstepResult22_g783 ) );
				float temp_output_7_0_g785 = 0.0;
				float temp_output_23_0_g785 = 1.0;
				float eyeDepth = packedInput.ase_texcoord5.w;
				float cameraDepthFade392 = (( eyeDepth -_ProjectionParams.y - _CameraDepthFadeOffset ) / _CameraDepthFadeLength);
				float temp_output_20_0_g785 = saturate( cameraDepthFade392 );
				float temp_output_4_0_g785 = _CameraDepthFadePower;
				float smoothstepResult22_g785 = smoothstep( temp_output_7_0_g785 , temp_output_23_0_g785 , pow( temp_output_20_0_g785 , temp_output_4_0_g785 ));
				float Camera_Depth_Fade400 = smoothstepResult22_g785;
				float temp_output_7_0_g788 = _IntersectionHighlightRemapMin;
				float temp_output_23_0_g788 = _IntersectionHighlightRemapMax;
				float screenDepth372 = LinearEyeDepth(SampleCameraDepth( ase_positionSSNorm.xy ),_ZBufferParams);
				float distanceDepth372 = saturate( abs( ( screenDepth372 - LinearEyeDepth( ase_positionSSNorm.z,_ZBufferParams ) ) / ( _IntersectionHighlight ) ) );
				float temp_output_20_0_g788 = ( 1.0 - distanceDepth372 );
				float temp_output_4_0_g788 = _IntersectionHighlightPower;
				float smoothstepResult22_g788 = smoothstep( temp_output_7_0_g788 , temp_output_23_0_g788 , pow( temp_output_20_0_g788 , temp_output_4_0_g788 ));
				float Intersection_Highlight378 = smoothstepResult22_g788;
				float Intersection_Highlight_Alpha103 = ( _IntersectionHighlightColour.a * _IntersectionHighlightAlpha );
				float temp_output_227_0 = saturate( ( ( saturate( ( Noise360 - staticSwitch209 ) ) * Fresnel_Mask433 * (packedInput.ase_color).a * Depth_Fade401 * Camera_Depth_Fade400 * _Alpha ) + ( Intersection_Highlight378 * Intersection_Highlight_Alpha103 ) ) );
				#ifdef _RADIALMASKSUBTRACTIVE_ON
				float staticSwitch235 = temp_output_227_0;
				#else
				float staticSwitch235 = ( temp_output_227_0 * ( 1.0 - Radial_Mask257 ) );
				#endif
				float Alpha236 = staticSwitch235;
				

				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				surfaceDescription.Alpha = Alpha236;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
				posInput.deviceDepth = input.positionSS.z;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

				float4 VPASSpositionCS = float4(packedInput.vpassPositionCS.xy, 0.0, packedInput.vpassPositionCS.z);
				float4 VPASSpreviousPositionCS = float4(packedInput.vpassPreviousPositionCS.xy, 0.0, packedInput.vpassPreviousPositionCS.z);

				#ifdef _DEPTHOFFSET_ON
				VPASSpositionCS.w += builtinData.depthOffset;
				VPASSpreviousPositionCS.w += builtinData.depthOffset;
				#endif

				float2 motionVector = CalculateMotionVector( VPASSpositionCS, VPASSpreviousPositionCS );
				EncodeMotionVector( motionVector * 0.5, outMotionVector );

				bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
				if( forceNoMotion )
					outMotionVector = float4( 2.0, 0.0, 0.0, 0.0 );

				#ifdef WRITE_MSAA_DEPTH
					depthColor = packedInput.vmeshPositionCS.z;
					depthColor.a = SharpenAlpha(builtinData.opacity, builtinData.alphaClipTreshold);
				#endif

				#ifdef WRITE_NORMAL_BUFFER
					EncodeIntoNormalBuffer(ConvertSurfaceDataToNormalData(surfaceData), outNormalBuffer);
				#endif

				#if defined(WRITE_DECAL_BUFFER)
					DecalPrepassData decalPrepassData;
					#ifdef _DISABLE_DECALS
					ZERO_INITIALIZE(DecalPrepassData, decalPrepassData);
					#else
					decalPrepassData.geomNormalWS = surfaceData.geomNormalWS;
					#endif
					decalPrepassData.renderingLayerMask = GetMeshRenderingLayerMask();
					EncodeIntoDecalPrepassBuffer(decalPrepassData, outDecalBuffer);
				#endif

				#if defined(_DEPTHOFFSET_ON) || defined(ASE_DEPTH_WRITE_ON)
				outputDepth = posInput.deviceDepth;
				#endif
			}

			ENDHLSL
		}

		
        Pass
		{
			
            Name "ScenePickingPass"
            Tags { "LightMode"="Picking" }

            Cull [_CullMode]

			HLSLPROGRAM

			#pragma shader_feature_local_fragment _ENABLE_FOG_ON_TRANSPARENT
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#define HAVE_MESH_MODIFICATION 1
			#define ASE_VERSION 19905
			#define ASE_SRP_VERSION 170200


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC _TRANSPARENT_REFRACTIVE_SORT

			#pragma editor_sync_compilation

			#pragma multi_compile _ DOTS_INSTANCING_ON

			#pragma vertex Vert
			#pragma fragment Frag

			#if (defined(_TRANSPARENT_WRITES_MOTION_VEC) || defined(_TRANSPARENT_REFRACTIVE_SORT)) && defined(_SURFACE_TYPE_TRANSPARENT)
			#define _WRITE_TRANSPARENT_MOTION_VECTOR
			#endif

			#define SHADERPASS SHADERPASS_DEPTH_ONLY
			#define SCENEPICKINGPASS 1
            #define SUPPORT_GLOBAL_MIP_BIAS 1

            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl"

            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define VARYINGS_NEED_TANGENT_TO_WORLD

			#define SHADER_UNLIT

			float4 _SelectionID;

            CBUFFER_START( UnityPerMaterial )
			float4 _VerticalColourB;
			float4 _RadialMaskDistortionOffset;
			float4 _RadialMaskDistortionParticleAnimation;
			float4 _RadialMaskDistortionAnimation;
			float4 _VerticalColourA;
			float4 _ColourA;
			float4 _ColourB;
			float4 _NoiseDistortionOffset;
			float4 _NoiseDistortionParticleAnimation;
			float4 _IntersectionHighlightColour;
			float4 _VertexNoiseAnimation;
			float4 _VertexNoiseParticleAnimation;
			float4 _VertexNoiseOffset;
			float4 _NoiseDistortionAnimation;
			float4 _NoiseOffset;
			float4 _NoiseParticleAnimation;
			float4 _NoiseAnimation;
			float3 _VertexNoiseTiling;
			float3 _NoiseTiling;
			float3 _RadialMaskDistortionTiling;
			float3 _VertexOffsetOverCircularY;
			float3 _NoiseDistortionTiling;
			float3 _VertexOffsetOverY2;
			float3 _VertexOffsetOverY1;
			float2 _RadialMaskOffset;
			float2 _NoiseXYTwistOffset;
			float2 _SpherizeNoiseOffset;
			float2 _RadialMaskTiling;
			float _IntersectionHighlightPower;
			float _VerticalColourSaturationShift;
			float _VerticalColourValueMultiplier;
			float _VerticalColourHueShift;
			float _VerticalColourMaskRemapMin;
			float _VerticalColourMaskRemapMax;
			float _IntersectionHighlightColourHueShift;
			float _IntersectionHighlight;
			float _IntersectionHighlightRemapMax;
			float _VertexColourSaturationShift;
			float _IntersectionHighlightRemapMin;
			float _VertexColorHSVEnabledOn;
			float _VertexColourHueShift;
			float _RadialMaskRadius;
			float _IntersectionHighlightColourValueMultiplier;
			float _IntersectionHighlightColourSaturationShift;
			float _VerticalColourMaskPower;
			float _RadialMaskRadiusOverParticleLifetime;
			float _RadialMaskDistortionOctaves;
			float _RadialMaskDistortionScale;
			float _CameraDepthFadePower;
			float _CameraDepthFadeOffset;
			float _CameraDepthFadeLength;
			float _SubtractiveDepthFadePower;
			float _SubtractiveDepthFade;
			float _DepthFadePower;
			float _DepthFade;
			float _FresnelMask;
			float _FresnelMaskPower;
			float _FresnelMaskRemapMax;
			float _FresnelMaskRemapMin;
			float _VerticalMask2Power;
			float _VerticalMask2ObjectSpaceScale;
			float _VerticalMask2ObjectSpaceOffset;
			float _VerticalMask2RemapMax;
			float _VerticalMask2RemapMin;
			float _VerticalMask1Power;
			float _VerticalMask1ObjectSpaceScale;
			float _VerticalMask1ObjectSpaceOffset;
			float _VerticalMask1RemapMin;
			float _VerticalMask1RemapMax;
			float _RadialMaskPower;
			float _RadialMaskDistortion;
			float _RadialMaskDistortionPower;
			float _RadialMaskDistortionDilation;
			float _RadialMaskFeather;
			float _Tessellation;
			float _NoiseOctaves;
			float _ColourSaturationShift;
			float _VertexOffsetOverY1Power;
			float _VertexTwist;
			float _VertexUVOffsetBottom;
			float _VertexUVOffsetBottomPower;
			float _VertexUVOffsetTop;
			float _VertexUVOffsetTopPower;
			float _VertexNoise;
			float _VertexNoiseTwist;
			float _VertexNoiseDilation;
			float _VertexNoiseOctaves;
			float _VertexNoiseScale;
			float _VertexOffsetOverY2Power;
			float _ParticleRandomization;
			float _VertexWaveNoiseVerticalMaskRemapMax;
			float _VertexWaveNoiseVerticalMaskRemapMin;
			float _VertexWave;
			float _VertexWaveOffset;
			float _VertexWaveAnimation;
			float _VertexWaveScale;
			float _VertexNormalOffsetBottom;
			float _VertexNormalOffsetBottomPower;
			float _VertexNormalOffsetTop;
			float _VertexNormalOffsetTopPower;
			float _VertexNormalOffset;
			float _VertexWaveNoiseVerticalMaskPower;
			float _ColourValueMultiplier;
			float _VertexOffsetOverCircularYPower;
			float _NoiseRemapMax;
			float _ColourHueShift;
			float _ColourPower;
			float _Noise;
			float _ParticleSubtractNoiseoverLifetime1;
			float _NoisePower;
			float _NoiseDilation;
			float _Alpha;
			float _NoiseScale;
			float _NoiseDistortion;
			float _NoiseDistortionPower;
			float _NoiseDistortionDilation;
			float _NoiseRemapMin;
			float _NoiseDistortionOctaves;
			float _NoiseParallaxOffset;
			float _NoiseUVYPreRemapMax;
			float _NoiseUVYPreRemapMin;
			float _NoiseUVYPrePower;
			float _NoiseUVYPreScale;
			float _NoiseUVYPreOffset;
			float _NoiseXZTwist;
			float _NoiseXYTwist;
			float _SpherizeNoiseStrength;
			float _SpherizeNoiseRadius;
			float _UVSampleNoise;
			float _NoiseDistortionScale;
			float _IntersectionHighlightAlpha;
			float4 _EmissionColor;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			#ifdef _ENABLE_SHADOW_MATTE
			float _ShadowMatteFilter;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _DstBlend2;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _AlphaCutoff;
			float _AlphaCutoffShadow;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			float _EnableBlendModePreserveSpecularLighting;
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			float4x4 unity_CameraProjection;
			float4x4 unity_CameraInvProjection;
			float4x4 unity_WorldToCamera;
			float4x4 unity_CameraToWorld;


            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/PickingSpaceTransforms.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Unlit/Unlit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#define ASE_NEEDS_TEXTURE_COORDINATES1
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES1
			#define ASE_NEEDS_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#pragma shader_feature_local _SWAPUVXY1_ON
			#pragma shader_feature_local _UV2DNORMCENT1_NORMAL1 _UV2DNORMCENT1_CENTERED1
			#pragma shader_feature_local _VERTEXWAVEENABLED_ON
			#pragma shader_feature_local _VERTEXNOISEENABLED_ON
			#pragma shader_feature_local _VERTEXNOISETWISTENABLED_ON
			#pragma shader_feature_local _VERTEXNOISEDILATIONENABLED_ON
			#pragma shader_feature_local _RADIALMASKSUBTRACTIVE_ON
			#pragma shader_feature_local _NOISEDILATIONENABLED_ON
			#pragma shader_feature_local _NOISEXZTWISTENABLED_ON
			#pragma shader_feature_local _SPHERIZENOISE_ON
			#pragma shader_feature_local _WORLDSPACEUVS_ON
			#pragma shader_feature_local _OBJECTSPACEUVS_ON
			#pragma shader_feature_local _VERTEXWORLDPOS1_VERTEXPOS1 _VERTEXWORLDPOS1_WORLDPOS1
			#pragma shader_feature_local _NOISEUVPREREMAP_ON
			#pragma shader_feature_local _NOISEDISTORTIONENABLED_ON
			#pragma shader_feature_local _NOISEDISTORTIONDILATIONENABLED_ON
			#pragma shader_feature_local _VERTICALMASK2_ON
			#pragma shader_feature_local _VERTICALMASK1_ON
			#pragma shader_feature_local _RADIALMASK_ON
			#pragma shader_feature_local _UV2DCENTNORM_ON
			#pragma shader_feature_local _RADIALMASKDISTORTIONENABLED_ON
			#pragma shader_feature_local _RADIALMASKDISTORTIONDILATIONENABLED_ON
			#pragma shader_feature_local _VERTICALMASK1SUBTRACTIVE_ON
			#pragma shader_feature_local _VERTICALMASKSOBJECTSPACE_ON
			#pragma shader_feature_local _VERTICALMASK2SUBTRACTIVE_ON
			#pragma shader_feature_local _INVERTDEPTHFADE_ON


			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_POSITION;
				float3 normalWS : TEXCOORD0;
				float4 tangentWS : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			
            struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};


            void GetSurfaceAndBuiltinData(SurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData RAY_TRACING_OPTIONAL_PARAMETERS)
            {
                #ifdef LOD_FADE_CROSSFADE
			        LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                #endif

                #ifdef _ALPHATEST_ON
                    float alphaCutoff = surfaceDescription.AlphaClipThreshold;
                    GENERIC_ALPHA_TEST(surfaceDescription.Alpha, alphaCutoff);
                #endif

                #if !defined(SHADER_STAGE_RAY_TRACING) && defined(_DEPTHOFFSET_ON)
                ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
                #endif


				ZERO_INITIALIZE(SurfaceData, surfaceData);

				ZERO_BUILTIN_INITIALIZE(builtinData);
				builtinData.opacity = surfaceDescription.Alpha;

				#if defined(DEBUG_DISPLAY)
					builtinData.renderingLayers = GetMeshRenderingLayerMask();
				#endif

                #ifdef _ALPHATEST_ON
                    builtinData.alphaClipTreshold = alphaCutoff;
                #endif

                #ifdef _DEPTHOFFSET_ON
                builtinData.depthOffset = surfaceDescription.DepthOffset;
                #endif


                ApplyDebugToBuiltinData(builtinData);

            }


			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh  )
			{

				PackedVaryingsMeshToPS o;
				ZERO_INITIALIZE(PackedVaryingsMeshToPS, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, o );

				float localTwistXZ_float11_g793 = ( 0.0 );
				float2 texCoord721 = inputMesh.ase_texcoord * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord718 = inputMesh.ase_texcoord.xy * float2( 2,2 ) + float2( -1,-1 );
				#if defined( _UV2DNORMCENT1_NORMAL1 )
				float2 staticSwitch714 = texCoord721;
				#elif defined( _UV2DNORMCENT1_CENTERED1 )
				float2 staticSwitch714 = texCoord718;
				#else
				float2 staticSwitch714 = texCoord721;
				#endif
				#ifdef _SWAPUVXY1_ON
				float2 staticSwitch988 = (staticSwitch714).yx;
				#else
				float2 staticSwitch988 = staticSwitch714;
				#endif
				float UV_2D_Ym723 = (staticSwitch988).y;
				float3 Vertex_Normal_Offset947 = ( ( inputMesh.normalOS * _VertexNormalOffset ) + ( pow( UV_2D_Ym723 , _VertexNormalOffsetTopPower ) * inputMesh.normalOS * _VertexNormalOffsetTop ) + ( pow( ( 1.0 - UV_2D_Ym723 ) , _VertexNormalOffsetBottomPower ) * inputMesh.normalOS * _VertexNormalOffsetBottom ) );
				float2 UV_2Dm715 = staticSwitch988;
				float mulTime868 = _TimeParameters.x * _VertexWaveAnimation;
				float temp_output_7_0_g784 = _VertexWaveNoiseVerticalMaskRemapMin;
				float temp_output_23_0_g784 = _VertexWaveNoiseVerticalMaskRemapMax;
				float temp_output_20_0_g784 = UV_2D_Ym723;
				float temp_output_4_0_g784 = _VertexWaveNoiseVerticalMaskPower;
				float smoothstepResult22_g784 = smoothstep( temp_output_7_0_g784 , temp_output_23_0_g784 , pow( temp_output_20_0_g784 , temp_output_4_0_g784 ));
				float Vertex_WaveNoise_Vertical_Mask819 = smoothstepResult22_g784;
				#ifdef _VERTEXWAVEENABLED_ON
				float3 staticSwitch930 = ( ( sin( ( ( UV_2Dm715.y * TWO_PI * _VertexWaveScale ) - ( mulTime868 + ( _VertexWaveOffset * TWO_PI ) ) ) ) * _VertexWave * Vertex_WaveNoise_Vertical_Mask819 ) * inputMesh.normalOS );
				#else
				float3 staticSwitch930 = float3( 0,0,0 );
				#endif
				float3 Vertex_Sine943 = staticSwitch930;
				float localSimplexNoise_float2_g790 = ( 0.0 );
				float Particle_Stable_Random_X771 = ( ( inputMesh.ase_texcoord.w - 0.5 ) * 100.0 * _ParticleRandomization );
				float Particle_Age_Percent770 = inputMesh.ase_texcoord.z;
				#ifdef _WORLDSPACEUVS2_ON
				float staticSwitch860 = Particle_Age_Percent770;
				#else
				float staticSwitch860 = Particle_Stable_Random_X771;
				#endif
				float3 temp_cast_0 = (staticSwitch860).xxx;
				float4 Vertex_Noise_Offset852 = ( _VertexNoiseOffset + Particle_Stable_Random_X771 + ( _VertexNoiseParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g786 = ( float4( ( temp_cast_0 * _VertexNoiseScale * _VertexNoiseTiling ) , 0.0 ) - ( Vertex_Noise_Offset852 + ( _VertexNoiseAnimation * _TimeParameters.x ) ) );
				float3 temp_output_871_0 = (temp_output_10_0_g786).xyz;
				float3 position2_g790 = temp_output_871_0;
				float temp_output_871_15 = (temp_output_10_0_g786).w;
				float angle2_g790 = temp_output_871_15;
				float octaves2_g790 = _VertexNoiseOctaves;
				float noise2_g790 = 0.0;
				float3 gradient2_g790 = float3( 0,0,0 );
				SimplexNoise_float( position2_g790 , angle2_g790 , octaves2_g790 , noise2_g790 , gradient2_g790 );
				float localSimplexNoise_Caustics_float2_g789 = ( 0.0 );
				float3 position2_g789 = temp_output_871_0;
				float angle2_g789 = temp_output_871_15;
				float octaves2_g789 = _VertexNoiseOctaves;
				float gradientStrength2_g789 = _VertexNoiseDilation;
				float noise2_g789 = 0.0;
				float3 gradient2_g789 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g789 , angle2_g789 , octaves2_g789 , gradientStrength2_g789 , noise2_g789 , gradient2_g789 );
				#ifdef _VERTEXNOISEDILATIONENABLED_ON
				float3 staticSwitch886 = gradient2_g789;
				#else
				float3 staticSwitch886 = gradient2_g790;
				#endif
				float localTwistXZ_float11_g791 = ( 0.0 );
				float3 temp_output_10_0_g791 = staticSwitch886;
				float3 position11_g791 = temp_output_10_0_g791;
				float temp_output_9_0_g791 = _VertexNoiseTwist;
				float angle11_g791 = radians( temp_output_9_0_g791 );
				float3 output11_g791 = float3( 0,0,0 );
				TwistXZ_float( position11_g791 , angle11_g791 , output11_g791 );
				float3 temp_output_898_0 = output11_g791;
				#ifdef _VERTEXNOISETWISTENABLED_ON
				float3 staticSwitch973 = temp_output_898_0;
				#else
				float3 staticSwitch973 = staticSwitch886;
				#endif
				#ifdef _VERTEXNOISEENABLED_ON
				float3 staticSwitch933 = ( temp_output_898_0 * _VertexNoise * Vertex_WaveNoise_Vertical_Mask819 );
				#else
				float3 staticSwitch933 = staticSwitch973;
				#endif
				float3 Vertex_Noise946 = staticSwitch933;
				float2 break876 = ( ( UV_2Dm715 * float2( 2,1 ) ) - float2( 1,0 ) );
				float temp_output_907_0 = ( ( break876.x * pow( break876.y , _VertexUVOffsetTopPower ) ) * ( _VertexUVOffsetTop * 0.5 ) );
				float3 appendResult922 = (float3(temp_output_907_0 , 0.0 , 0.0));
				float3 appendResult921 = (float3(0.0 , temp_output_907_0 , 0.0));
				#ifdef _SWAPUVXY1_ON
				float3 staticSwitch931 = appendResult921;
				#else
				float3 staticSwitch931 = appendResult922;
				#endif
				float3 Vertex_Offset_Top944 = staticSwitch931;
				float2 break869 = ( ( UV_2Dm715 * float2( 2,1 ) ) - float2( 1,0 ) );
				float temp_output_906_0 = ( ( break869.x * pow( ( 1.0 - break869.y ) , _VertexUVOffsetBottomPower ) ) * ( _VertexUVOffsetBottom * 0.5 ) );
				float3 appendResult924 = (float3(temp_output_906_0 , 0.0 , 0.0));
				float3 appendResult923 = (float3(0.0 , temp_output_906_0 , 0.0));
				#ifdef _SWAPUVXY1_ON
				float3 staticSwitch932 = appendResult923;
				#else
				float3 staticSwitch932 = appendResult924;
				#endif
				float3 Vertex_Offset_Bottom945 = staticSwitch932;
				float3 temp_output_10_0_g793 = ( ( Vertex_Normal_Offset947 + Vertex_Sine943 + Vertex_Noise946 + Vertex_Offset_Top944 + Vertex_Offset_Bottom945 ) + inputMesh.positionOS );
				float3 position11_g793 = temp_output_10_0_g793;
				float temp_output_9_0_g793 = -_VertexTwist;
				float angle11_g793 = radians( temp_output_9_0_g793 );
				float3 output11_g793 = float3( 0,0,0 );
				TwistXZ_float( position11_g793 , angle11_g793 , output11_g793 );
				float3 worldToObjDir948 = mul( GetWorldToObjectMatrix(), float4( _VertexOffsetOverY1, 0.0 ) ).xyz;
				float3 worldToObjDir950 = mul( GetWorldToObjectMatrix(), float4( _VertexOffsetOverY2, 0.0 ) ).xyz;
				float UV_2D_Circular_Y929 = sin( ( UV_2D_Ym723 * PI ) );
				float3 Vertex_Offset_over_Y966 = ( ( worldToObjDir948 * pow( UV_2D_Ym723 , _VertexOffsetOverY1Power ) ) + ( worldToObjDir950 * pow( UV_2D_Ym723 , _VertexOffsetOverY2Power ) ) + ( _VertexOffsetOverCircularY * pow( UV_2D_Circular_Y929 , _VertexOffsetOverCircularYPower ) ) );
				float3 Vertex_Offset971 = ( output11_g793 + Vertex_Offset_over_Y966 );
				
				float3 ase_positionWS = GetAbsolutePositionWS( TransformObjectToWorld( ( inputMesh.positionOS ).xyz ) );
				o.ase_texcoord4.xyz = ase_positionWS;
				float4 ase_positionCS = TransformWorldToHClip( TransformObjectToWorld( ( inputMesh.positionOS ).xyz ) );
				float4 screenPos = ComputeScreenPos( ase_positionCS, _ProjectionParams.x );
				o.ase_texcoord5 = screenPos;
				float3 objectToViewPos = TransformWorldToView( TransformObjectToWorld( inputMesh.positionOS ) );
				float eyeDepth = -objectToViewPos.z;
				o.ase_texcoord4.w = eyeDepth;
				
				o.ase_texcoord2 = inputMesh.ase_texcoord;
				o.ase_texcoord3 = float4(inputMesh.positionOS,1);
				o.ase_texcoord6 = inputMesh.ase_texcoord1;
				o.ase_color = inputMesh.ase_color;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =  Vertex_Offset971;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS = inputMesh.normalOS;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangentOS.xyz), inputMesh.tangentOS.w);

				o.positionCS = TransformWorldToHClip(positionRWS);
				o.normalWS.xyz =  normalWS;
				o.tangentWS.xyzw =  tangentWS;

				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_texcoord1 = v.ase_texcoord1;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag(	PackedVaryingsMeshToPS packedInput
						, out float4 outColor : SV_Target0
						
					)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(packedInput);
				UNITY_SETUP_INSTANCE_ID(packedInput);

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				input.tangentToWorld = BuildTangentToWorld(packedInput.tangentWS.xyzw, packedInput.normalWS.xyz);

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = float3(1.0, 1.0, 1.0);

				float temp_output_7_0_g781 = _NoiseRemapMin;
				float temp_output_23_0_g781 = _NoiseRemapMax;
				float localSimplexNoise_float2_g779 = ( 0.0 );
				float2 texCoord721 = packedInput.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord718 = packedInput.ase_texcoord2.xy * float2( 2,2 ) + float2( -1,-1 );
				#if defined( _UV2DNORMCENT1_NORMAL1 )
				float2 staticSwitch714 = texCoord721;
				#elif defined( _UV2DNORMCENT1_CENTERED1 )
				float2 staticSwitch714 = texCoord718;
				#else
				float2 staticSwitch714 = texCoord721;
				#endif
				#ifdef _SWAPUVXY1_ON
				float2 staticSwitch988 = (staticSwitch714).yx;
				#else
				float2 staticSwitch988 = staticSwitch714;
				#endif
				float2 UV_2Dm715 = staticSwitch988;
				float3 ase_positionWS = packedInput.ase_texcoord4.xyz;
				#if defined( _VERTEXWORLDPOS1_VERTEXPOS1 )
				float3 staticSwitch734 = packedInput.ase_texcoord3.xyz;
				#elif defined( _VERTEXWORLDPOS1_WORLDPOS1 )
				float3 staticSwitch734 = ase_positionWS;
				#else
				float3 staticSwitch734 = packedInput.ase_texcoord3.xyz;
				#endif
				#ifdef _SWAPUVXY7_ON
				float3 staticSwitch735 = (staticSwitch734).yxz;
				#else
				float3 staticSwitch735 = staticSwitch734;
				#endif
				float3 UV_3D_VWP1739 = staticSwitch735;
				#ifdef _OBJECTSPACEUVS_ON
				float3 staticSwitch792 = UV_3D_VWP1739;
				#else
				float3 staticSwitch792 = float3( UV_2Dm715 ,  0.0 );
				#endif
				float UV_3D_World_VWP2682 = 0.0;
				float3 temp_cast_1 = (UV_3D_World_VWP2682).xxx;
				#ifdef _WORLDSPACEUVS_ON
				float3 staticSwitch793 = temp_cast_1;
				#else
				float3 staticSwitch793 = staticSwitch792;
				#endif
				float4 screenPos = packedInput.ase_texcoord5;
				float4 ase_positionSSNorm = screenPos / screenPos.w;
				ase_positionSSNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_positionSSNorm.z : ase_positionSSNorm.z * 0.5 + 0.5;
				float2 appendResult745 = (float2(ase_positionSSNorm.x , ase_positionSSNorm.y));
				float2 Screen_UV747 = appendResult745;
				float2 appendResult746 = (float2(_ScreenParams.x , _ScreenParams.y));
				float2 Screen_Resolution748 = appendResult746;
				float2 Screen_Position750 = ( Screen_UV747 * Screen_Resolution748 );
				float2 screenPosition441 = Screen_Position750;
				float mulTime440 = _TimeParameters.x * 60.0;
				float time441 = mulTime440;
				float3 localHash33441 = Hash33( screenPosition441 , time441 );
				float3 Sample_Noise445 = ( (localHash33441*2.0 + -1.0) * _UVSampleNoise );
				float3 Noise_Base_UV795 = ( staticSwitch793 + Sample_Noise445 );
				float localSpherize_float5_g755 = ( 0.0 );
				float2 uv5_g755 = (Noise_Base_UV795).xy;
				float2 center5_g755 = ( _SpherizeNoiseOffset + float2( 0.5,0.5 ) );
				float radius5_g755 = _SpherizeNoiseRadius;
				float strength5_g755 = _SpherizeNoiseStrength;
				float2 output5_g755 = float2( 0,0 );
				Spherize_float( uv5_g755 , center5_g755 , radius5_g755 , strength5_g755 , output5_g755 );
				float3 appendResult506 = (float3(output5_g755 , (Noise_Base_UV795).z));
				#ifdef _SPHERIZENOISE_ON
				float3 staticSwitch505 = appendResult506;
				#else
				float3 staticSwitch505 = Noise_Base_UV795;
				#endif
				float2 center45_g765 = ( _NoiseXYTwistOffset + float2( 0.5,0.5 ) );
				float2 delta6_g765 = ( staticSwitch505.xy - center45_g765 );
				float angle10_g765 = ( length( delta6_g765 ) * radians( _NoiseXYTwist ) );
				float x23_g765 = ( ( cos( angle10_g765 ) * delta6_g765.x ) - ( sin( angle10_g765 ) * delta6_g765.y ) );
				float2 break40_g765 = center45_g765;
				float2 break41_g765 = float2( 0,0 );
				float y35_g765 = ( ( sin( angle10_g765 ) * delta6_g765.x ) + ( cos( angle10_g765 ) * delta6_g765.y ) );
				float2 appendResult44_g765 = (float2(( x23_g765 + break40_g765.x + break41_g765.x ) , ( break40_g765.y + break41_g765.y + y35_g765 )));
				float2 temp_output_499_0 = appendResult44_g765;
				float localTwistXZ_float11_g763 = ( 0.0 );
				float3 temp_output_10_0_g763 = float3( temp_output_499_0 ,  0.0 );
				float3 position11_g763 = temp_output_10_0_g763;
				float temp_output_9_0_g763 = _NoiseXZTwist;
				float angle11_g763 = radians( temp_output_9_0_g763 );
				float3 output11_g763 = float3( 0,0,0 );
				TwistXZ_float( position11_g763 , angle11_g763 , output11_g763 );
				#ifdef _NOISEXZTWISTENABLED_ON
				float3 staticSwitch498 = output11_g763;
				#else
				float3 staticSwitch498 = float3( temp_output_499_0 ,  0.0 );
				#endif
				float3 break469 = staticSwitch498;
				float temp_output_478_0 = ( ( break469.y - _NoiseUVYPreOffset ) * _NoiseUVYPreScale );
				float temp_output_7_0_g770 = abs( temp_output_478_0 );
				float temp_output_7_0_g771 = abs( temp_output_478_0 );
				float smoothstepResult16_g771 = smoothstep( _NoiseUVYPreRemapMin , _NoiseUVYPreRemapMax , pow( temp_output_7_0_g771 , _NoiseUVYPrePower ));
				#ifdef _NOISEUVPREREMAP_ON
				float staticSwitch485 = ( smoothstepResult16_g771 * sign( temp_output_478_0 ) );
				#else
				float staticSwitch485 = ( pow( temp_output_7_0_g770 , _NoiseUVYPrePower ) * sign( temp_output_478_0 ) );
				#endif
				float3 appendResult486 = (float3(break469.x , staticSwitch485 , 0.0));
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_positionWS );
				float3 ase_viewDirWS = normalize( ase_viewVectorWS );
				float3 temp_output_787_0 = ( -ase_viewDirWS * _NoiseParallaxOffset );
				#ifdef _SWAPUVXY3_ON
				float3 staticSwitch789 = (temp_output_787_0).yxz;
				#else
				float3 staticSwitch789 = temp_output_787_0;
				#endif
				float3 Parallax_Offset790 = staticSwitch789;
				float localSimplexNoise_float2_g761 = ( 0.0 );
				float Particle_Stable_Random_X771 = ( ( packedInput.ase_texcoord2.w - 0.5 ) * 100.0 * _ParticleRandomization );
				float Particle_Age_Percent770 = packedInput.ase_texcoord2.z;
				float4 Distortion_Noise_Offset813 = ( _NoiseDistortionOffset + Particle_Stable_Random_X771 + ( _NoiseDistortionParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g758 = ( float4( ( ( Noise_Base_UV795 + Parallax_Offset790 ) * _NoiseDistortionScale * _NoiseDistortionTiling ) , 0.0 ) - ( Distortion_Noise_Offset813 + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 temp_output_322_0 = (temp_output_10_0_g758).xyz;
				float3 position2_g761 = temp_output_322_0;
				float temp_output_322_15 = (temp_output_10_0_g758).w;
				float angle2_g761 = temp_output_322_15;
				float octaves2_g761 = _NoiseDistortionOctaves;
				float noise2_g761 = 0.0;
				float3 gradient2_g761 = float3( 0,0,0 );
				SimplexNoise_float( position2_g761 , angle2_g761 , octaves2_g761 , noise2_g761 , gradient2_g761 );
				float localSimplexNoise_Caustics_float2_g760 = ( 0.0 );
				float3 position2_g760 = temp_output_322_0;
				float angle2_g760 = temp_output_322_15;
				float octaves2_g760 = _NoiseDistortionOctaves;
				float gradientStrength2_g760 = _NoiseDistortionDilation;
				float noise2_g760 = 0.0;
				float3 gradient2_g760 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g760 , angle2_g760 , octaves2_g760 , gradientStrength2_g760 , noise2_g760 , gradient2_g760 );
				#ifdef _NOISEDISTORTIONDILATIONENABLED_ON
				float3 staticSwitch329 = gradient2_g760;
				#else
				float3 staticSwitch329 = gradient2_g761;
				#endif
				float3 temp_output_7_0_g766 = abs( staticSwitch329 );
				float3 temp_cast_6 = (_NoiseDistortionPower).xxx;
				#ifdef _NOISEDISTORTIONENABLED_ON
				float3 staticSwitch336 = ( ( pow( temp_output_7_0_g766 , temp_cast_6 ) * sign( staticSwitch329 ) ) * _NoiseDistortion );
				#else
				float3 staticSwitch336 = float3( 0,0,0 );
				#endif
				float3 Noise_Distortion337 = staticSwitch336;
				float3 Noise_UV494 = ( appendResult486 + Parallax_Offset790 + Noise_Distortion337 );
				float4 Noise_Offset786 = ( _NoiseOffset + Particle_Stable_Random_X771 + ( _NoiseParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g775 = ( float4( ( Noise_UV494 * _NoiseScale * _NoiseTiling ) , 0.0 ) - ( Noise_Offset786 + ( _NoiseAnimation * _TimeParameters.x ) ) );
				float3 temp_output_344_0 = (temp_output_10_0_g775).xyz;
				float3 position2_g779 = temp_output_344_0;
				float temp_output_344_15 = (temp_output_10_0_g775).w;
				float angle2_g779 = temp_output_344_15;
				float octaves2_g779 = _NoiseOctaves;
				float noise2_g779 = 0.0;
				float3 gradient2_g779 = float3( 0,0,0 );
				SimplexNoise_float( position2_g779 , angle2_g779 , octaves2_g779 , noise2_g779 , gradient2_g779 );
				float localSimplexNoise_Caustics_float2_g778 = ( 0.0 );
				float3 position2_g778 = temp_output_344_0;
				float angle2_g778 = temp_output_344_15;
				float octaves2_g778 = _NoiseOctaves;
				float gradientStrength2_g778 = _NoiseDilation;
				float noise2_g778 = 0.0;
				float3 gradient2_g778 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g778 , angle2_g778 , octaves2_g778 , gradientStrength2_g778 , noise2_g778 , gradient2_g778 );
				#ifdef _NOISEDILATIONENABLED_ON
				float staticSwitch349 = noise2_g778;
				#else
				float staticSwitch349 = noise2_g779;
				#endif
				float temp_output_20_0_g781 = staticSwitch349;
				float temp_output_4_0_g781 = _NoisePower;
				float smoothstepResult22_g781 = smoothstep( temp_output_7_0_g781 , temp_output_23_0_g781 , pow( temp_output_20_0_g781 , temp_output_4_0_g781 ));
				float Particle_Subtract_Noise_over_Lifetime779 = ( packedInput.ase_texcoord6.y * _ParticleSubtractNoiseoverLifetime1 );
				float temp_output_356_0 = ( smoothstepResult22_g781 - Particle_Subtract_Noise_over_Lifetime779 );
				float lerpResult359 = lerp( 1.0 , temp_output_356_0 , _Noise);
				float Noise360 = lerpResult359;
				float Particle_Mask_Radius_over_Lifetime630 = packedInput.ase_texcoord6.x;
				float lerpResult245 = lerp( 1.0 , Particle_Mask_Radius_over_Lifetime630 , _RadialMaskRadiusOverParticleLifetime);
				float temp_output_6_0_g772 = ( 1.0 - ( _RadialMaskRadius * lerpResult245 ) );
				float lerpResult5_g772 = lerp( temp_output_6_0_g772 , 1.0 , _RadialMaskFeather);
				float2 texCoord991 = packedInput.ase_texcoord2.xy * float2( 2,2 ) + float2( -1,-1 );
				float2 texCoord997 = packedInput.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				#ifdef _UV2DCENTNORM_ON
				float2 staticSwitch996 = texCoord997;
				#else
				float2 staticSwitch996 = texCoord991;
				#endif
				#ifdef _SWAPUVXY1_ON
				float2 staticSwitch990 = (staticSwitch996).yx;
				#else
				float2 staticSwitch990 = staticSwitch996;
				#endif
				float2 UV_2D_Centeredm992 = staticSwitch990;
				float localSimplexNoise_float2_g757 = ( 0.0 );
				float4 Mask_Distortion_Noise_Offset805 = ( _RadialMaskDistortionOffset + Particle_Stable_Random_X771 + ( _RadialMaskDistortionParticleAnimation * Particle_Age_Percent770 ) );
				float4 temp_output_10_0_g725 = ( float4( ( Noise_Base_UV795 * _RadialMaskDistortionScale * _RadialMaskDistortionTiling ) , 0.0 ) - ( Mask_Distortion_Noise_Offset805 + ( _RadialMaskDistortionAnimation * _TimeParameters.x ) ) );
				float3 temp_output_305_0 = (temp_output_10_0_g725).xyz;
				float3 position2_g757 = temp_output_305_0;
				float temp_output_305_15 = (temp_output_10_0_g725).w;
				float angle2_g757 = temp_output_305_15;
				float octaves2_g757 = _RadialMaskDistortionOctaves;
				float noise2_g757 = 0.0;
				float3 gradient2_g757 = float3( 0,0,0 );
				SimplexNoise_float( position2_g757 , angle2_g757 , octaves2_g757 , noise2_g757 , gradient2_g757 );
				float localSimplexNoise_Caustics_float2_g756 = ( 0.0 );
				float3 position2_g756 = temp_output_305_0;
				float angle2_g756 = temp_output_305_15;
				float octaves2_g756 = _RadialMaskDistortionOctaves;
				float gradientStrength2_g756 = _RadialMaskDistortionDilation;
				float noise2_g756 = 0.0;
				float3 gradient2_g756 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g756 , angle2_g756 , octaves2_g756 , gradientStrength2_g756 , noise2_g756 , gradient2_g756 );
				#ifdef _RADIALMASKDISTORTIONDILATIONENABLED_ON
				float3 staticSwitch310 = gradient2_g756;
				#else
				float3 staticSwitch310 = gradient2_g757;
				#endif
				float3 temp_output_7_0_g762 = abs( staticSwitch310 );
				float3 temp_cast_9 = (_RadialMaskDistortionPower).xxx;
				#ifdef _RADIALMASKDISTORTIONENABLED_ON
				float3 staticSwitch325 = ( ( pow( temp_output_7_0_g762 , temp_cast_9 ) * sign( staticSwitch310 ) ) * _RadialMaskDistortion );
				#else
				float3 staticSwitch325 = float3( 0,0,0 );
				#endif
				float3 Mask_Distortion328 = staticSwitch325;
				float temp_output_7_0_g772 = ( 1.0 - length( ( ( ( UV_2D_Centeredm992 + (Mask_Distortion328).xy ) - _RadialMaskOffset ) * _RadialMaskTiling ) ) );
				float smoothstepResult4_g772 = smoothstep( temp_output_6_0_g772 , lerpResult5_g772 , temp_output_7_0_g772);
				#ifdef _RADIALMASK_ON
				float staticSwitch256 = ( 1.0 - pow( smoothstepResult4_g772 , _RadialMaskPower ) );
				#else
				float staticSwitch256 = 0.0;
				#endif
				float Radial_Mask257 = staticSwitch256;
				#ifdef _RADIALMASKSUBTRACTIVE_ON
				float staticSwitch204 = Radial_Mask257;
				#else
				float staticSwitch204 = 0.0;
				#endif
				float temp_output_7_0_g777 = _VerticalMask1RemapMax;
				float temp_output_23_0_g777 = _VerticalMask1RemapMin;
				float UV_2D_Ym723 = (staticSwitch988).y;
				float UV_3D_Y_VWP1760 = (staticSwitch735).y;
				#ifdef _VERTICALMASKSOBJECTSPACE_ON
				float staticSwitch270 = ( ( UV_3D_Y_VWP1760 - _VerticalMask1ObjectSpaceOffset ) / _VerticalMask1ObjectSpaceScale );
				#else
				float staticSwitch270 = UV_2D_Ym723;
				#endif
				float temp_output_20_0_g777 = staticSwitch270;
				float smoothstepResult25_g777 = smoothstep( temp_output_7_0_g777 , temp_output_23_0_g777 , temp_output_20_0_g777);
				float temp_output_4_0_g777 = _VerticalMask1Power;
				float temp_output_278_0 = pow( smoothstepResult25_g777 , temp_output_4_0_g777 );
				#ifdef _VERTICALMASK1SUBTRACTIVE_ON
				float staticSwitch282 = ( 1.0 - temp_output_278_0 );
				#else
				float staticSwitch282 = temp_output_278_0;
				#endif
				float Vertical_Mask_1287 = staticSwitch282;
				#ifdef _VERTICALMASK1SUBTRACTIVE_ON
				float staticSwitch206 = ( staticSwitch204 + Vertical_Mask_1287 );
				#else
				float staticSwitch206 = staticSwitch204;
				#endif
				#ifdef _VERTICALMASK1_ON
				float staticSwitch207 = staticSwitch206;
				#else
				float staticSwitch207 = staticSwitch204;
				#endif
				float temp_output_7_0_g780 = _VerticalMask2RemapMin;
				float temp_output_23_0_g780 = _VerticalMask2RemapMax;
				#ifdef _VERTICALMASKSOBJECTSPACE_ON
				float staticSwitch286 = ( ( UV_3D_Y_VWP1760 - _VerticalMask2ObjectSpaceOffset ) / _VerticalMask2ObjectSpaceScale );
				#else
				float staticSwitch286 = UV_2D_Ym723;
				#endif
				float temp_output_20_0_g780 = staticSwitch286;
				float smoothstepResult25_g780 = smoothstep( temp_output_7_0_g780 , temp_output_23_0_g780 , temp_output_20_0_g780);
				float temp_output_4_0_g780 = _VerticalMask2Power;
				float temp_output_288_0 = pow( smoothstepResult25_g780 , temp_output_4_0_g780 );
				#ifdef _VERTICALMASK2SUBTRACTIVE_ON
				float staticSwitch290 = ( 1.0 - temp_output_288_0 );
				#else
				float staticSwitch290 = temp_output_288_0;
				#endif
				float Vertical_Mask_2291 = staticSwitch290;
				#ifdef _VERTICALMASK2SUBTRACTIVE_ON
				float staticSwitch208 = ( staticSwitch207 + Vertical_Mask_2291 );
				#else
				float staticSwitch208 = staticSwitch207;
				#endif
				#ifdef _VERTICALMASK2_ON
				float staticSwitch209 = staticSwitch208;
				#else
				float staticSwitch209 = staticSwitch207;
				#endif
				float fresnelNdotV427 = dot( packedInput.normalWS, ase_viewDirWS );
				float fresnelNode427 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV427, _FresnelMaskPower ) );
				float smoothstepResult430 = smoothstep( _FresnelMaskRemapMin , _FresnelMaskRemapMax , fresnelNode427);
				float lerpResult432 = lerp( 1.0 , smoothstepResult430 , _FresnelMask);
				float Fresnel_Mask433 = lerpResult432;
				float temp_output_7_0_g782 = 0.0;
				float temp_output_23_0_g782 = 1.0;
				float screenDepth381 = LinearEyeDepth(SampleCameraDepth( ase_positionSSNorm.xy ),_ZBufferParams);
				float distanceDepth381 = saturate( abs( ( screenDepth381 - LinearEyeDepth( ase_positionSSNorm.z,_ZBufferParams ) ) / ( _DepthFade ) ) );
				#ifdef _INVERTDEPTHFADE_ON
				float staticSwitch386 = ( 1.0 - distanceDepth381 );
				#else
				float staticSwitch386 = distanceDepth381;
				#endif
				float temp_output_20_0_g782 = staticSwitch386;
				float temp_output_4_0_g782 = _DepthFadePower;
				float smoothstepResult22_g782 = smoothstep( temp_output_7_0_g782 , temp_output_23_0_g782 , pow( temp_output_20_0_g782 , temp_output_4_0_g782 ));
				float temp_output_7_0_g783 = 0.0;
				float temp_output_23_0_g783 = 1.0;
				float screenDepth384 = LinearEyeDepth(SampleCameraDepth( ase_positionSSNorm.xy ),_ZBufferParams);
				float distanceDepth384 = saturate( abs( ( screenDepth384 - LinearEyeDepth( ase_positionSSNorm.z,_ZBufferParams ) ) / ( _SubtractiveDepthFade ) ) );
				float temp_output_20_0_g783 = ( 1.0 - distanceDepth384 );
				float temp_output_4_0_g783 = _SubtractiveDepthFadePower;
				float smoothstepResult22_g783 = smoothstep( temp_output_7_0_g783 , temp_output_23_0_g783 , pow( temp_output_20_0_g783 , temp_output_4_0_g783 ));
				float Depth_Fade401 = saturate( ( smoothstepResult22_g782 - smoothstepResult22_g783 ) );
				float temp_output_7_0_g785 = 0.0;
				float temp_output_23_0_g785 = 1.0;
				float eyeDepth = packedInput.ase_texcoord4.w;
				float cameraDepthFade392 = (( eyeDepth -_ProjectionParams.y - _CameraDepthFadeOffset ) / _CameraDepthFadeLength);
				float temp_output_20_0_g785 = saturate( cameraDepthFade392 );
				float temp_output_4_0_g785 = _CameraDepthFadePower;
				float smoothstepResult22_g785 = smoothstep( temp_output_7_0_g785 , temp_output_23_0_g785 , pow( temp_output_20_0_g785 , temp_output_4_0_g785 ));
				float Camera_Depth_Fade400 = smoothstepResult22_g785;
				float temp_output_7_0_g788 = _IntersectionHighlightRemapMin;
				float temp_output_23_0_g788 = _IntersectionHighlightRemapMax;
				float screenDepth372 = LinearEyeDepth(SampleCameraDepth( ase_positionSSNorm.xy ),_ZBufferParams);
				float distanceDepth372 = saturate( abs( ( screenDepth372 - LinearEyeDepth( ase_positionSSNorm.z,_ZBufferParams ) ) / ( _IntersectionHighlight ) ) );
				float temp_output_20_0_g788 = ( 1.0 - distanceDepth372 );
				float temp_output_4_0_g788 = _IntersectionHighlightPower;
				float smoothstepResult22_g788 = smoothstep( temp_output_7_0_g788 , temp_output_23_0_g788 , pow( temp_output_20_0_g788 , temp_output_4_0_g788 ));
				float Intersection_Highlight378 = smoothstepResult22_g788;
				float Intersection_Highlight_Alpha103 = ( _IntersectionHighlightColour.a * _IntersectionHighlightAlpha );
				float temp_output_227_0 = saturate( ( ( saturate( ( Noise360 - staticSwitch209 ) ) * Fresnel_Mask433 * (packedInput.ase_color).a * Depth_Fade401 * Camera_Depth_Fade400 * _Alpha ) + ( Intersection_Highlight378 * Intersection_Highlight_Alpha103 ) ) );
				#ifdef _RADIALMASKSUBTRACTIVE_ON
				float staticSwitch235 = temp_output_227_0;
				#else
				float staticSwitch235 = ( temp_output_227_0 * ( 1.0 - Radial_Mask257 ) );
				#endif
				float Alpha236 = staticSwitch235;
				

				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				surfaceDescription.Alpha = Alpha236;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);
				outColor = unity_SelectionID;
			}

            ENDHLSL
        }

		Pass
		{
			Name "FullScreenDebug"
			Tags
			{
				"LightMode" = "FullScreenDebug"
			}

			Cull [_CullMode]
			ZTest LEqual
			ZWrite Off

			HLSLPROGRAM

			/*ase_pragma_before*/

			#pragma vertex Vert
			#pragma fragment Frag

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"

			#define SHADERPASS SHADERPASS_FULL_SCREEN_DEBUG
            #define SUPPORT_GLOBAL_MIP_BIAS 1

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				#if UNITY_ANY_INSTANCING_ENABLED
					uint instanceID : INSTANCEID_SEMANTIC;
				#endif
			};

			struct VaryingsMeshToPS
			{
				SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				#if UNITY_ANY_INSTANCING_ENABLED
					uint instanceID : CUSTOM_INSTANCE_ID;
				#endif
			};

			struct PackedVaryingsMeshToPS
			{
				SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				#if UNITY_ANY_INSTANCING_ENABLED
					uint instanceID : CUSTOM_INSTANCE_ID;
				#endif
			};

			VaryingsMeshToPS UnpackVaryingsMeshToPS (PackedVaryingsMeshToPS input)
			{
				VaryingsMeshToPS output;
				output.positionCS = input.positionCS;
				#if UNITY_ANY_INSTANCING_ENABLED
				output.instanceID = input.instanceID;
				#endif
				return output;
			}

			PackedVaryingsMeshToPS PackVaryingsMeshToPS (VaryingsMeshToPS input)
			{
				PackedVaryingsMeshToPS output;
				ZERO_INITIALIZE(PackedVaryingsMeshToPS, output);
				output.positionCS = input.positionCS;
				#if UNITY_ANY_INSTANCING_ENABLED
				output.instanceID = input.instanceID;
				#endif
				return output;
			}

			FragInputs BuildFragInputs(VaryingsMeshToPS input)
			{
				FragInputs output;
				ZERO_INITIALIZE(FragInputs, output);

				output.tangentToWorld = k_identity3x3;
				output.positionSS = input.positionCS;

				return output;
			}

			FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
			{
				UNITY_SETUP_INSTANCE_ID(input);
				VaryingsMeshToPS unpacked = UnpackVaryingsMeshToPS(input);
				return BuildFragInputs(unpacked);
			}

			#define DEBUG_DISPLAY
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/FullScreenDebug.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/VertMesh.hlsl"

			PackedVaryingsType Vert(AttributesMesh inputMesh)
			{
				VaryingsType varyingsType;
				varyingsType.vmesh = VertMesh(inputMesh);
				return PackVaryingsType(varyingsType);
			}

			#if !defined(_DEPTHOFFSET_ON)
			[earlydepthstencil] // quad overshading debug mode writes to UAV
			#endif
			void Frag(PackedVaryingsToPS packedInput)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(packedInput);
				FragInputs input = UnpackVaryingsToFragInputs(packedInput);

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS.xyz);

			#ifdef PLATFORM_SUPPORTS_PRIMITIVE_ID_IN_PIXEL_SHADER
				if (_DebugFullScreenMode == FULLSCREENDEBUGMODE_QUAD_OVERDRAW)
				{
					IncrementQuadOverdrawCounter(posInput.positionSS.xy, input.primitiveID);
				}
			#endif
			}

			ENDHLSL
		}
		
	}
	
	CustomEditor "Rendering.HighDefinition.HDUnlitGUI"
	Fallback "Hidden/InternalErrorShader"
	
}
/*ASEBEGIN
Version=19905
Node;AmplifyShaderEditor.ScreenPosInputsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;743;-8368,2000;Float;False;0;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ScreenParams, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;744;-8336,2240;Inherit;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;745;-8144,2032;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;746;-8144,2288;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;748;-7984,2288;Inherit;False;Screen Resolution;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;747;-7984,2032;Inherit;False;Screen UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;749;-7760,2128;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;750;-7584,2128;Inherit;False;Screen Position;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.WorldPosInputsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;725;-8528,4096;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.PosVertexDataNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;726;-8528,3936;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureCoordinatesNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;718;-10064,3952;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;2,2;False;1;FLOAT2;-1,-1;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureCoordinatesNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;721;-10064,3824;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SwizzleNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;719;-9552,4000;Inherit;False;FLOAT2;1;0;2;3;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleTimeNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;440;-7216,1936;Inherit;False;1;0;FLOAT;60;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;439;-7216,1856;Inherit;False;750;Screen Position;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SwizzleNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;736;-8032,4080;Inherit;False;FLOAT3;1;0;2;3;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;734;-8304,4016;Inherit;False;Property;_VertexWorldPos1;VertexWorldPos1;96;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;2;VertexPos1;WorldPos1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;714;-9840,3904;Inherit;False;Property;_UV2DNormCent1;UV2DNormCent1;97;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;2;Normal1;Centered1;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;735;-7856,4000;Inherit;False;Property;_SwapUVXY7;Swap UV XY;150;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;-1;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;988;-9392,3904;Inherit;False;Property;_SwapUVXY1;Swap UV XY1;149;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CustomExpressionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;441;-7008,1856;Inherit;False; ;3;File;2;True;screenPosition;FLOAT2;0,0;In;;Inherit;False;True;time;FLOAT;0;In;;Inherit;False;Hash33;False;False;0;fe94ac0e902c32548b74680340f0855b;False;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;442;-6752,1856;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT;2;False;2;FLOAT;-1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;443;-6816,1984;Inherit;False;Property;_UVSampleNoise;UV Sample Noise;82;0;Create;True;0;0;0;False;1;Space(5);False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;739;-7296,4000;Inherit;False;UV 3D VWP1;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TexCoordVertexDataNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;766;-13616,3584;Inherit;False;0;4;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;715;-8800,3904;Inherit;False;UV 2Dm;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;444;-6496,1856;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;682;-7328,4512;Inherit;True;UV 3D World VWP2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;767;-13232,3712;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;768;-13232,3840;Inherit;False;Property;_ParticleRandomization;Particle Randomization;1;0;Create;True;0;0;0;False;2;Header(Particle Settings);Space(5);False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;800;-14320,608;Inherit;False;770;Particle Age Percent;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;801;-14320,432;Inherit;False;Property;_RadialMaskDistortionParticleAnimation;Radial Mask Distortion Particle Animation;108;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;798;-14320,1280;Inherit;False;739;UV 3D VWP1;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;799;-14320,1152;Inherit;False;715;UV 2Dm;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;769;-12848,3712;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;100;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;770;-13232,3584;Inherit;False;Particle Age Percent;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;802;-14320,352;Inherit;False;771;Particle Stable Random X;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;803;-14320,176;Inherit;False;Property;_RadialMaskDistortionOffset;Radial Mask Distortion Offset;109;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;804;-13936,432;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;792;-14064,1152;Inherit;False;Property;_ObjectSpaceUVs;Object Space UVs;0;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;797;-14064,1280;Inherit;False;682;UV 3D World VWP2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;445;-6336,1856;Inherit;False;Sample Noise;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;807;-14336,-32;Inherit;False;770;Particle Age Percent;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;808;-14336,-208;Inherit;False;Property;_NoiseDistortionParticleAnimation;Noise Distortion Particle Animation;91;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;771;-12592,3712;Inherit;False;Particle Stable Random X;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;806;-13632,176;Inherit;False;3;3;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;793;-13680,1152;Inherit;False;Property;_WorldSpaceUVs;World Space UVs;146;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;796;-13680,1280;Inherit;False;445;Sample Noise;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;809;-14336,-288;Inherit;False;771;Particle Stable Random X;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;810;-13952,-208;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;811;-14336,-464;Inherit;False;Property;_NoiseDistortionOffset;Noise Distortion Offset;102;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;833;-14256,2144;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;805;-13424,176;Inherit;False;Mask Distortion Noise Offset;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;794;-13296,1152;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;812;-13696,-464;Inherit;False;3;3;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.Vector2Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;510;-14224,2144;Inherit;False;Property;_SpherizeNoiseOffset;Spherize Noise Offset;139;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;832;-14256,2240;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;795;-13040,1152;Inherit;False;Noise Base UV;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;304;-12528,992;Inherit;False;Property;_RadialMaskDistortionAnimation;Radial Mask Distortion Animation;52;0;Create;True;0;0;0;False;0;False;0,2,0,0;0,2,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;302;-12496,736;Inherit;False;Property;_RadialMaskDistortionScale;Radial Mask Distortion Scale;50;0;Create;True;0;0;0;False;0;False;2;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;303;-12496,816;Inherit;False;Property;_RadialMaskDistortionTiling;Radial Mask Distortion Tiling;51;0;Create;True;0;0;0;False;0;False;1.5,1,1;1.5,1,1;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;300;-12496,1184;Inherit;False;805;Mask Distortion Noise Offset;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;301;-12432,640;Inherit;False;795;Noise Base UV;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;813;-13440,-464;Inherit;False;Distortion Noise Offset;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;312;-12480,-272;Inherit;False;790;Parallax Offset;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;313;-12480,-352;Inherit;False;795;Noise Base UV;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;514;-13984,2240;Inherit;False;Property;_SpherizeNoiseRadius;Spherize Noise Radius;137;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;515;-13984,2320;Inherit;False;Property;_SpherizeNoiseStrength;Spherize Noise Strength;138;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;509;-13856,2144;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ComponentMaskNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;511;-13952,2064;Inherit;False;True;True;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ComponentMaskNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;516;-13952,2416;Inherit;False;False;False;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;519;-14448,2032;Inherit;False;795;Noise Base UV;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;305;-11968,608;Inherit;False;Scale Tiling Offset Animation;-1;;725;650501f4d90f3194eb72a847e06cc2e3;1,21,0;6;4;FLOAT3;0,0,0;False;7;FLOAT;1;False;8;FLOAT3;1,1,1;False;9;FLOAT4;0,0,0,0;False;19;INT;0;False;12;FLOAT4;0,0,0,0;False;2;FLOAT3;0;FLOAT;15
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;306;-11968,784;Inherit;False;Property;_RadialMaskDistortionOctaves;Radial Mask Distortion Octaves;53;1;[IntRange];Create;True;0;0;0;False;0;False;1;1;1;8;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;307;-11968,864;Inherit;False;Property;_RadialMaskDistortionDilation;Radial Mask Distortion Dilation;55;0;Create;True;0;0;0;False;0;False;0.004;0.004;0;0.1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;316;-12176,-368;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;320;-12528,64;Inherit;False;Property;_NoiseDistortionAnimation;Noise Distortion Animation;38;0;Create;True;0;0;0;False;0;False;0,1,0,0;0,1,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;318;-12496,-192;Inherit;False;Property;_NoiseDistortionScale;Noise Distortion Scale;36;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;319;-12496,-112;Inherit;False;Property;_NoiseDistortionTiling;Noise Distortion Tiling;37;0;Create;True;0;0;0;False;0;False;1.5,1,1;1.5,1,1;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;471;-11808,2224;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;317;-12496,240;Inherit;False;813;Distortion Noise Offset;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;501;-13232,2336;Inherit;False;Property;_NoiseXYTwist;Noise XY Twist;27;0;Create;True;0;0;0;False;1;Space(5);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;507;-13632,2144;Inherit;False;Spherize;-1;;755;dce7577f44cbfeb4c822afd6b5c80507;0;4;7;FLOAT2;0,0;False;6;FLOAT2;0,0;False;8;FLOAT;1;False;9;FLOAT;0.5;False;1;FLOAT2;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;518;-13440,2272;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;834;-13984,2032;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;308;-11600,752;Inherit;False;Simplex Noise Caustics;-1;;756;477e7c249263854458b4f42934448d42;0;4;4;FLOAT3;0,0,0;False;6;FLOAT;0;False;7;FLOAT;1;False;9;FLOAT;0.01;False;2;FLOAT;0;FLOAT3;3
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;309;-11536,608;Inherit;False;Simplex Noise;-1;;757;c68ae2e20c00ec54aaecd9d04797372e;0;3;4;FLOAT3;0,0,0;False;6;FLOAT;0;False;7;FLOAT;1;False;2;FLOAT;0;FLOAT3;3
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;322;-12000,-368;Inherit;False;Scale Tiling Offset Animation;-1;;758;650501f4d90f3194eb72a847e06cc2e3;1,21,0;6;4;FLOAT3;0,0,0;False;7;FLOAT;1;False;8;FLOAT3;1,1,1;False;9;FLOAT4;0,0,0,0;False;19;INT;0;False;12;FLOAT4;0,0,0,0;False;2;FLOAT3;0;FLOAT;15
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;323;-12000,-192;Inherit;False;Property;_NoiseDistortionOctaves;Noise Distortion Octaves;39;1;[IntRange];Create;True;0;0;0;False;0;False;1;1;1;8;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;324;-12000,-112;Inherit;False;Property;_NoiseDistortionDilation;Noise Distortion Dilation;41;0;Create;True;0;0;0;False;0;False;0.004;0.004;0;0.1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;470;-11808,2256;Inherit;False;Property;_NoiseUVYPreOffset;Noise UV Y Pre-Offset;31;0;Create;True;0;0;0;False;1;Space(5);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;472;-11584,2224;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RadiansOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;500;-13056,2336;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;502;-13280,2208;Inherit;False;Property;_NoiseXYTwistOffset;Noise XY Twist Offset;28;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;506;-13376,2096;Inherit;False;FLOAT3;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;831;-13264,2064;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;310;-11168,624;Inherit;False;Property;_RadialMaskDistortionDilationEnabled;Radial Mask Distortion Dilation Enabled;54;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;311;-11040,752;Inherit;False;Property;_RadialMaskDistortionPower;Radial Mask Distortion Power;56;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;326;-11632,-240;Inherit;False;Simplex Noise Caustics;-1;;760;477e7c249263854458b4f42934448d42;0;4;4;FLOAT3;0,0,0;False;6;FLOAT;0;False;7;FLOAT;1;False;9;FLOAT;0.01;False;2;FLOAT;0;FLOAT3;3
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;327;-11568,-368;Inherit;False;Simplex Noise;-1;;761;c68ae2e20c00ec54aaecd9d04797372e;0;3;4;FLOAT3;0,0,0;False;6;FLOAT;0;False;7;FLOAT;1;False;2;FLOAT;0;FLOAT3;3
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;474;-11520,2256;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;489;-12848,2288;Inherit;False;Property;_NoiseXZTwist;Noise XZ Twist;30;0;Create;True;0;0;0;False;1;Space(5);False;0;0;-360;360;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;503;-13024,2208;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;1;FLOAT2;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;830;-12896,2304;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;505;-13168,2096;Inherit;False;Property;_SpherizeNoise;Spherize Noise;136;0;Create;True;0;0;0;False;2;Header(Spherize Noise);Space(5);False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;314;-10704,624;Inherit;False;Signed Power Smoothstep;-1;;762;3654d4d5f7b612d4085eb90cd7a60668;3,3,2,20,1,15,0;7;2;FLOAT;0;False;4;FLOAT2;0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT4;0,0,0,0;False;12;FLOAT;1;False;17;FLOAT;0;False;18;FLOAT;1;False;1;FLOAT3;14
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;315;-10704,752;Inherit;False;Property;_RadialMaskDistortion;Radial Mask Distortion;49;0;Create;True;0;0;0;False;2;Header(Radial Mask Distortion);Space(5);False;0.05;0.05;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;329;-11200,-352;Inherit;False;Property;_NoiseDistortionDilationEnabled;Noise Distortion Dilation Enabled;40;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;330;-11072,-224;Inherit;False;Property;_NoiseDistortionPower;Noise Distortion Power;42;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;476;-11376,2224;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;488;-12544,2272;Inherit;False;TwistXZ;-1;;763;9581222175ed3d74faf64569d7d97396;1,12,0;2;10;FLOAT3;0,0,0;False;9;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;499;-12752,2128;Inherit;False;Twirl;-1;;765;90936742ac32db8449cd21ab6dd337c8;0;4;1;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;321;-10368,624;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;332;-10752,-224;Inherit;False;Property;_NoiseDistortion;Noise Distortion;35;1;[Header];Create;True;0;0;0;False;2;Header(Noise Distortion);Space(5);False;0.05;0.05;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;333;-10752,-352;Inherit;False;Signed Power Smoothstep;-1;;766;3654d4d5f7b612d4085eb90cd7a60668;3,3,2,20,1,15,0;7;2;FLOAT;0;False;4;FLOAT2;0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT4;0,0,0,0;False;12;FLOAT;1;False;17;FLOAT;0;False;18;FLOAT;1;False;1;FLOAT3;14
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;473;-11344,2256;Inherit;False;Property;_NoiseUVYPreScale;Noise UV Y Pre-Scale;32;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;475;-11120,2224;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;498;-12304,2224;Inherit;False;Property;_NoiseXZTwistEnabled;Noise XZ Twist Enabled;29;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;758;-7488,4112;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;791;-14320,816;Inherit;False;Property;_NoiseParallaxOffset;Noise Parallax Offset;88;0;Create;True;0;0;0;False;1;Space(5);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;325;-10176,592;Inherit;False;Property;_RadialMaskDistortionEnabled;Radial Mask Distortion Enabled;48;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TextureCoordinatesNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;991;-10048,4352;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;2,2;False;1;FLOAT2;-1,-1;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureCoordinatesNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;997;-10048,4496;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;335;-10400,-352;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BreakToComponentsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;469;-11984,2240;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;478;-11072,2224;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;481;-11168,2352;Inherit;False;Property;_NoiseUVYPrePower;Noise UV Y Pre-Power;33;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;479;-11200,2432;Inherit;False;Property;_NoiseUVYPreRemapMin;Noise UV Y Pre-Remap Min;85;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;480;-11200,2512;Inherit;False;Property;_NoiseUVYPreRemapMax;Noise UV Y Pre-Remap Max;86;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;762;-7488,4192;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;787;-14064,816;Inherit;False;Parallax Offset;-1;;769;66d259709a71255489a93d3df825942b;3,20,0,16,1,9,1;1;13;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SwizzleNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;788;-13808,944;Inherit;False;FLOAT3;1;0;2;3;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;328;-9776,592;Inherit;False;Mask Distortion;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;996;-9824,4352;Inherit;False;Property;_UV2DCentNorm;UV 2D Cent Norm;148;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SwizzleNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;993;-9552,4480;Inherit;False;FLOAT2;1;0;2;3;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;336;-10144,-384;Inherit;False;Property;_NoiseDistortionEnabled;Noise Distortion Enabled;34;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;237;-4640,3936;Inherit;False;328;Mask Distortion;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;477;-11808,2192;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;482;-10848,2224;Inherit;False;Signed Power Smoothstep;-1;;770;3654d4d5f7b612d4085eb90cd7a60668;3,3,0,20,1,15,0;7;2;FLOAT;0;False;4;FLOAT2;0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT4;0,0,0,0;False;12;FLOAT;1;False;17;FLOAT;0;False;18;FLOAT;1;False;1;FLOAT;14
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;483;-10848,2352;Inherit;False;Signed Power Smoothstep;-1;;771;3654d4d5f7b612d4085eb90cd7a60668;3,3,0,20,1,15,1;7;2;FLOAT;0;False;4;FLOAT2;0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT4;0,0,0,0;False;12;FLOAT;1;False;17;FLOAT;0;False;18;FLOAT;1;False;1;FLOAT;14
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;761;-7552,4256;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;789;-13424,816;Inherit;False;Property;_SwapUVXY3;Swap UV XY;148;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;-1;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;990;-9408,4352;Inherit;False;Property;_Keyword1;Keyword 1;149;0;Create;True;0;0;0;False;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;988;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ComponentMaskNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;239;-4416,3936;Inherit;False;True;True;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexCoordVertexDataNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;629;-2960,4608;Inherit;False;1;4;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;337;-9808,-384;Inherit;False;Noise Distortion;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;484;-10624,2192;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;485;-10480,2336;Inherit;False;Property;_NoiseUVPreRemap;Noise UV Pre-Remap;92;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;757;-7520,4272;Inherit;False;False;True;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;780;-13056,3456;Inherit;False;770;Particle Age Percent;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;781;-13056,3280;Inherit;False;Property;_NoiseParticleAnimation;Noise Particle Animation;100;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;790;-13168,816;Inherit;False;Parallax Offset;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;992;-8816,4352;Inherit;False;UV 2D Centeredm;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;242;-4144,3936;Inherit;False;Property;_RadialMaskOffset;Radial Mask Offset;107;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;262;-4176,3920;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;630;-2528,4640;Inherit;False;Particle Mask Radius over Lifetime;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;486;-10128,2256;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;492;-10192,2480;Inherit;False;337;Noise Distortion;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;760;-7296,4272;Inherit;False;UV 3D Y VWP1;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;782;-13056,3024;Inherit;False;Property;_NoiseOffset;Noise Offset;101;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;783;-13056,3200;Inherit;False;771;Particle Stable Random X;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;784;-12672,3280;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;491;-10192,2400;Inherit;False;790;Parallax Offset;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;238;-4608,3808;Inherit;False;992;UV 2D Centeredm;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;240;-4048,3824;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;263;-3920,3952;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;243;-4624,4224;Inherit;False;Property;_RadialMaskRadiusOverParticleLifetime;Radial Mask Radius over Particle Lifetime;104;0;Create;False;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;241;-4624,4144;Inherit;False;630;Particle Mask Radius over Lifetime;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;265;-6992,4016;Inherit;False;Property;_VerticalMask1ObjectSpaceOffset;Vertical Mask 1 Object Space Offset;64;0;Create;True;0;0;0;False;0;False;-1;-1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;264;-6928,3936;Inherit;False;760;UV 3D Y VWP1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;722;-9072,3984;Inherit;False;False;True;False;False;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;493;-9920,2336;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;785;-12416,3024;Inherit;False;3;3;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;244;-3824,3824;Inherit;False;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;247;-3888,3936;Inherit;False;Property;_RadialMaskTiling;Radial Mask Tiling;47;0;Create;True;0;0;0;False;0;False;1.5,1;1.5,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;248;-4208,4064;Inherit;False;Property;_RadialMaskRadius;Radial Mask Radius;44;0;Create;True;0;0;0;False;1;Space(10);False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;275;-7024,4576;Inherit;False;Property;_VerticalMask2ObjectSpaceOffset;Vertical Mask 2 Object Space Offset;71;0;Create;True;0;0;0;False;0;False;-1;-1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;245;-4080,4144;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;266;-6656,3936;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;274;-6896,4496;Inherit;False;760;UV 3D Y VWP1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;267;-6768,4096;Inherit;False;Property;_VerticalMask1ObjectSpaceScale;Vertical Mask 1 Object Space Scale;63;0;Create;True;0;0;0;False;0;False;2;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;494;-9776,2336;Inherit;False;Noise UV;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;786;-12160,3024;Inherit;False;Noise Offset;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;723;-8800,4064;Inherit;False;UV 2D Ym;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;249;-3616,3888;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;246;-4208,4320;Inherit;False;Property;_RadialMaskFeather;Radial Mask Feather;45;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;250;-3616,4064;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;269;-6464,3936;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;276;-6688,4496;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;268;-6496,3808;Inherit;False;723;UV 2D Ym;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;277;-6800,4656;Inherit;False;Property;_VerticalMask2ObjectSpaceScale;Vertical Mask 2 Object Space Scale;70;0;Create;True;0;0;0;False;0;False;2;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;338;-12512,-1040;Inherit;False;Property;_NoiseAnimation;Noise Animation;20;0;Create;True;0;0;0;False;0;False;0,4,1,0;0,4,1,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector3Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;339;-12480,-1200;Inherit;False;Property;_NoiseTiling;Noise Tiling;19;0;Create;True;0;0;0;False;0;False;1.5,1,1;1.5,1,1;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;341;-12480,-1280;Inherit;False;Property;_NoiseScale;Noise Scale;18;0;Create;True;0;0;0;False;0;False;2;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;340;-12480,-1408;Inherit;False;494;Noise UV;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;370;-12480,-848;Inherit;False;786;Noise Offset;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;252;-3344,4048;Inherit;True;Radial Gradient 2;-1;;772;969db7e12a1ad8c4c8b8d89670372700;1,12,1;3;10;FLOAT2;0,0;False;8;FLOAT;1;False;9;FLOAT;0.2;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;253;-3312,4272;Inherit;False;Property;_RadialMaskPower;Radial Mask Power;46;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;273;-6176,3936;Inherit;False;Property;_VerticalMask1Power;Vertical Mask 1 Power;60;0;Create;True;0;0;0;False;2;;Space(5);False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;272;-6208,4016;Inherit;False;Property;_VerticalMask1RemapMax;Vertical Mask 1 Remap Max;62;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;271;-6208,4096;Inherit;False;Property;_VerticalMask1RemapMin;Vertical Mask 1 Remap Min;61;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;281;-6496,4496;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;270;-6272,3808;Inherit;True;Property;_VerticalMasksObjectSpace;Vertical Masks Object Space;57;0;Create;True;0;0;0;False;2;Header(Vertical Masks);Space(5);False;0;1;1;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;280;-6528,4368;Inherit;False;723;UV 2D Ym;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;342;-12048,-1248;Inherit;False;Property;_NoiseOctaves;Noise Octaves;21;1;[IntRange];Create;True;0;0;0;False;0;False;1;1;1;8;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;343;-12048,-1168;Inherit;False;Property;_NoiseDilation;Noise Dilation;23;0;Create;True;0;0;0;False;0;False;0.004;0.004;0;0.1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;344;-12048,-1424;Inherit;False;Scale Tiling Offset Animation;-1;;775;650501f4d90f3194eb72a847e06cc2e3;1,21,0;6;4;FLOAT3;0,0,0;False;7;FLOAT;1;False;8;FLOAT3;1,1,1;False;9;FLOAT4;0,0,0,0;False;19;INT;0;False;12;FLOAT4;0,0,0,0;False;2;FLOAT3;0;FLOAT;15
Node;AmplifyShaderEditor.TexCoordVertexDataNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;775;-13664,4272;Inherit;False;1;4;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;777;-13664,4448;Inherit;False;Property;_ParticleSubtractNoiseoverLifetime1;Particle Subtract Noise over Lifetime;87;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;254;-3056,4048;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;279;-5504,3936;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;286;-6304,4368;Inherit;False;Property;_VerticalMaskObjectSpace1;Vertical Mask Object Space;57;0;Create;True;0;0;0;False;1;Space(5);False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;270;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;284;-6240,4576;Inherit;False;Property;_VerticalMask2RemapMin;Vertical Mask 2 Remap Min;68;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;285;-6240,4656;Inherit;False;Property;_VerticalMask2RemapMax;Vertical Mask 2 Remap Max;69;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;283;-6208,4496;Inherit;False;Property;_VerticalMask2Power;Vertical Mask 2 Power;67;0;Create;True;0;0;0;False;2;;Space(5);False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;278;-5840,3808;Inherit;True;Power Smoothstep;-1;;777;eaa8bfb6a4986cb418a1675cea297eed;1,24,1;4;20;FLOAT;1;False;4;FLOAT;1;False;7;FLOAT;0;False;23;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;346;-11680,-1280;Inherit;False;Simplex Noise Caustics;-1;;778;477e7c249263854458b4f42934448d42;0;4;4;FLOAT3;0,0,0;False;6;FLOAT;0;False;7;FLOAT;1;False;9;FLOAT;0.01;False;2;FLOAT;0;FLOAT3;3
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;347;-11616,-1424;Inherit;False;Simplex Noise;-1;;779;c68ae2e20c00ec54aaecd9d04797372e;0;3;4;FLOAT3;0,0,0;False;6;FLOAT;0;False;7;FLOAT;1;False;2;FLOAT;0;FLOAT3;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;778;-13280,4400;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;255;-2896,4048;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;282;-5360,3808;Inherit;False;Property;_VerticalMask1Subtractive;Vertical Mask 1 Subtractive;59;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;288;-5872,4368;Inherit;True;Power Smoothstep;-1;;780;eaa8bfb6a4986cb418a1675cea297eed;1,24,1;4;20;FLOAT;1;False;4;FLOAT;1;False;7;FLOAT;0;False;23;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;289;-5536,4496;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;380;-8384,2736;Inherit;False;Property;_DepthFade;Depth Fade;72;0;Create;True;0;0;0;False;2;Header(Depth Fade);Space(5);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;382;-8128,2928;Inherit;False;Property;_SubtractiveDepthFade;Subtractive Depth Fade;145;0;Create;True;0;0;0;False;1;Space(5);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;349;-11280,-1280;Inherit;False;Property;_NoiseDilationEnabled;Noise Dilation Enabled;22;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;351;-11248,-960;Inherit;False;Property;_NoiseRemapMax;Noise Remap Max;26;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;352;-11248,-1040;Inherit;False;Property;_NoiseRemapMin;Noise Remap Min;25;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;350;-11152,-1152;Inherit;False;Property;_NoisePower;Noise Power;24;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;843;-8928,-3056;Inherit;False;Property;_VertexNoiseParticleAnimation;Vertex Noise Particle Animation;157;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;842;-8848,-2864;Inherit;False;770;Particle Age Percent;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;779;-13024,4352;Inherit;False;Particle Subtract Noise over Lifetime;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;256;-2688,4048;Inherit;False;Property;_RadialMask;Radial Mask;103;0;Create;True;0;0;0;False;2;Header(Radial Mask);Space(5);False;0;1;1;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;287;-4976,3808;Inherit;False;Vertical Mask 1;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;290;-5392,4368;Inherit;False;Property;_VerticalMask2Subtractive;Vertical Mask 2 Subtractive;66;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DepthFade, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;381;-8176,2704;Inherit;False;True;True;True;2;1;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;385;-7904,2768;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DepthFade, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;384;-7872,2896;Inherit;False;True;True;True;2;1;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;355;-10848,-1280;Inherit;False;Power Smoothstep;-1;;781;eaa8bfb6a4986cb418a1675cea297eed;1,24,0;4;20;FLOAT;1;False;4;FLOAT;1;False;7;FLOAT;0;False;23;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;844;-8832,-3312;Inherit;False;Property;_VertexNoiseOffset;Vertex Noise Offset;158;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;846;-8560,-2976;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;845;-8880,-3136;Inherit;False;771;Particle Stable Random X;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;354;-10768,-864;Inherit;False;779;Particle Subtract Noise over Lifetime;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;200;-6048,2816;Inherit;False;287;Vertical Mask 1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;257;-2432,4048;Inherit;False;Radial Mask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;291;-5008,4368;Inherit;False;Vertical Mask 2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;390;-8016,3456;Inherit;False;Property;_CameraDepthFadeOffset;Camera Depth Fade Offset;90;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;391;-8016,3376;Inherit;False;Property;_CameraDepthFadeLength;Camera Depth Fade Length;89;0;Create;True;0;0;0;False;2;Header(Camera Depth Fade);Space(5);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;386;-7632,2704;Inherit;False;Property;_InvertDepthFade;Invert Depth Fade;144;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;387;-7568,2816;Inherit;False;Property;_DepthFadePower;Depth Fade Power;73;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;388;-7504,2896;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;389;-7632,2992;Inherit;False;Property;_SubtractiveDepthFadePower;Subtractive Depth Fade Power;74;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;356;-10480,-1264;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;856;-8208,-3824;Inherit;False;Property;_VertexWaveAnimation;Vertex Wave Animation;120;0;Create;True;0;0;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;855;-8240,-3712;Inherit;False;Property;_VertexWaveOffset;Vertex Wave Offset;155;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TauNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;854;-8080,-3632;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;848;-8352,-3024;Inherit;False;3;3;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;850;-6272,-2416;Inherit;False;715;UV 2Dm;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;847;-8720,-2416;Inherit;False;715;UV 2Dm;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;857;-8144,-4096;Inherit;False;715;UV 2Dm;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;201;-5808,2800;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;203;-6336,2688;Inherit;False;257;Radial Mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;202;-5376,2896;Inherit;False;291;Vertical Mask 2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;371;-5952,1872;Inherit;False;Property;_IntersectionHighlight;Intersection Highlight;106;0;Create;True;0;0;0;False;2;Header(Intersection Highlight);Space(5);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CameraDepthFade, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;392;-7712,3376;Inherit;False;3;2;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;394;-7328,2704;Inherit;False;Power Smoothstep;-1;;782;eaa8bfb6a4986cb418a1675cea297eed;1,24,0;4;20;FLOAT;1;False;4;FLOAT;1;False;7;FLOAT;0;False;23;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;393;-7328,2880;Inherit;False;Power Smoothstep;-1;;783;eaa8bfb6a4986cb418a1675cea297eed;1,24,0;4;20;FLOAT;1;False;4;FLOAT;1;False;7;FLOAT;0;False;23;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;426;-6544,1344;Inherit;False;Property;_FresnelMaskPower;Fresnel Mask Power;141;0;Create;True;0;0;0;False;0;False;2;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;428;-6288,1504;Inherit;False;Property;_FresnelMaskRemapMin;Fresnel Mask Remap Min;142;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;429;-6288,1584;Inherit;False;Property;_FresnelMaskRemapMax;Fresnel Mask Remap Max;143;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;814;-14596.37,3264.511;Inherit;False;Property;_VertexWaveNoiseVerticalMaskRemapMin;Vertex Wave-Noise Vertical Mask Remap Min;130;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;815;-14596.37,3344.511;Inherit;False;Property;_VertexWaveNoiseVerticalMaskRemapMax;Vertex Wave-Noise Vertical Mask Remap Max;131;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;816;-14596.37,3184.511;Inherit;False;Property;_VertexWaveNoiseVerticalMaskPower;Vertex Wave-Noise Vertical Mask Power;129;0;Create;True;0;0;0;False;2;Header(Vertex Wave Noise Vertical Mask);Space(5);False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;817;-14596.37,3056.511;Inherit;False;723;UV 2D Ym;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;358;-10304,-1008;Inherit;False;Property;_Noise;Noise;17;0;Create;True;0;0;0;False;2;Header(Noise);Space(5);False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;357;-10048,-1232;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;866;-7856,-4096;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.TauNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;864;-7856,-3984;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;865;-7952,-3904;Inherit;False;Property;_VertexWaveScale;Vertex Wave Scale;119;0;Create;True;0;0;0;False;0;False;2;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;868;-7920,-3824;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;867;-7888,-3728;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;852;-8208,-3024;Inherit;False;Vertex Noise Offset;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;859;-6080,-2416;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;2,1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;849;-8528,-2416;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;2,1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;851;-7472,-3264;Inherit;False;770;Particle Age Percent;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;853;-7504,-3344;Inherit;False;771;Particle Stable Random X;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;204;-6144,2672;Inherit;False;Property;_RadialMaskSubtractive;Radial Mask Subtractive;43;0;Create;True;0;0;0;False;0;False;0;1;1;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;205;-5152,2864;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DepthFade, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;372;-5664,1856;Inherit;False;True;True;True;2;1;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;396;-7488,3472;Inherit;False;Property;_CameraDepthFadePower;Camera Depth Fade Power;75;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;397;-7360,3392;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;395;-7040,2704;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FresnelNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;427;-6304,1248;Inherit;True;Standard;WorldNormal;ViewDir;False;False;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;435;-6000,1424;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;436;-5984,1456;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;818;-14084.37,3056.511;Inherit;True;Power Smoothstep;-1;;784;eaa8bfb6a4986cb418a1675cea297eed;1,24,0;4;20;FLOAT;1;False;4;FLOAT;1;False;7;FLOAT;0;False;23;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;359;-9952,-1136;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;874;-7600,-4096;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;16.13;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;875;-7568,-3824;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;860;-7216,-3328;Inherit;False;Property;_WorldSpaceUVs2;World Space UVs;37;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;-1;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;863;-7152,-3200;Inherit;False;Property;_VertexNoiseScale;Vertex Noise Scale;123;0;Create;True;0;0;0;False;1;Space(5);False;2;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;861;-7152,-3104;Inherit;False;Property;_VertexNoiseTiling;Vertex Noise Tiling;124;0;Create;True;0;0;0;False;0;False;1,1,1;1,1,1;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;862;-7168,-2944;Inherit;False;Property;_VertexNoiseAnimation;Vertex Noise Animation;125;0;Create;True;0;0;0;False;0;False;0,2,0,0;0,2,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;974;-7168,-2752;Inherit;False;852;Vertex Noise Offset;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;870;-5920,-2416;Inherit;False;2;0;FLOAT2;0,0;False;1;FLOAT2;1,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;878;-5872,-2272;Inherit;False;Property;_VertexUVOffsetTopPower;Vertex UV Offset Top Power;112;0;Create;True;0;0;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;858;-8368,-2416;Inherit;False;2;0;FLOAT2;0,0;False;1;FLOAT2;1,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;879;-8000,-2320;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;877;-8160,-2240;Inherit;False;Property;_VertexUVOffsetBottomPower;Vertex UV Offset Bottom Power;113;0;Create;True;0;0;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;206;-5680,2752;Inherit;False;Property;_Keyword2;Keyword 2;59;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;282;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;207;-5408,2672;Inherit;False;Property;_VerticalMask1;Vertical Mask 1;58;0;Create;True;0;0;0;False;2;Header(Vertical Mask 1);Space(5);False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;373;-5408,1856;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;399;-7072,3376;Inherit;False;Power Smoothstep;-1;;785;eaa8bfb6a4986cb418a1675cea297eed;1,24,0;4;20;FLOAT;1;False;4;FLOAT;1;False;7;FLOAT;0;False;23;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;398;-6896,2704;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;104;-3376,2384;Inherit;False;Property;_IntersectionHighlightAlpha;Intersection Highlight Alpha;80;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;102;-3376,2176;Inherit;False;Property;_IntersectionHighlightColour;Intersection Highlight Colour;78;0;Create;True;0;0;0;False;2;Header(Intersection Highlight Colour);Space(5);False;1,1,1,1;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;431;-5968,1488;Inherit;False;Property;_FresnelMask;Fresnel Mask;140;0;Create;True;0;0;0;False;2;Header(Fresnel Mask);Space(5);False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;430;-5872,1328;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;374;-5536,1984;Inherit;False;Property;_IntersectionHighlightPower;Intersection Highlight Power;76;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;375;-5568,2064;Inherit;False;Property;_IntersectionHighlightRemapMin;Intersection Highlight Remap Min;105;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;376;-5568,2144;Inherit;False;Property;_IntersectionHighlightRemapMax;Intersection Highlight Remap Max;77;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;819;-13700.37,3056.511;Inherit;False;Vertex WaveNoise Vertical Mask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;360;-9792,-1136;Inherit;False;Noise;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;882;-7424,-3984;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;871;-6832,-3120;Inherit;False;Scale Tiling Offset Animation;-1;;786;650501f4d90f3194eb72a847e06cc2e3;1,21,0;6;4;FLOAT3;0,0,0;False;7;FLOAT;1;False;8;FLOAT3;1,1,1;False;9;FLOAT4;0,0,0,0;False;19;INT;0;False;12;FLOAT4;0,0,0,0;False;2;FLOAT3;0;FLOAT;15
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;872;-6832,-2944;Inherit;False;Property;_VertexNoiseOctaves;Vertex Noise Octaves;126;1;[IntRange];Create;True;0;0;0;False;0;False;1;1;1;4;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;873;-6832,-2864;Inherit;False;Property;_VertexNoiseDilation;Vertex Noise Dilation;127;0;Create;True;0;0;0;False;1;Space(5);False;0;0;-0.2;0.2;0;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;876;-5728,-2416;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.PowerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;884;-5536,-2288;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;885;-5664,-2176;Inherit;False;Property;_VertexUVOffsetTop;Vertex UV Offset Top;151;0;Create;True;0;0;0;True;2;Header(Vertex UV Offset);Space(5);False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;869;-8192,-2416;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.PowerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;883;-7808,-2320;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;890;-7936,-2160;Inherit;False;Property;_VertexUVOffsetBottom;Vertex UV Offset Bottom;152;0;Create;True;0;0;0;True;2;;Space(5);False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;888;-7024,-1008;Inherit;False;723;UV 2D Ym;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;889;-6000,-3664;Inherit;False;723;UV 2D Ym;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;208;-5008,2832;Inherit;False;Property;_Keyword5;Keyword 2;66;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;290;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;212;-4464,2880;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;209;-4720,2784;Inherit;False;Property;_VerticalMask2;Vertical Mask 2;65;0;Create;True;0;0;0;False;2;Header(Vertical Mask 2);Space(5);False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;210;-4656,2704;Inherit;False;360;Noise;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;377;-5200,1856;Inherit;False;Power Smoothstep;-1;;788;eaa8bfb6a4986cb418a1675cea297eed;1,24,0;4;20;FLOAT;1;False;4;FLOAT;1;False;7;FLOAT;0;False;23;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;400;-6784,3376;Inherit;False;Camera Depth Fade;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;401;-6752,2704;Inherit;False;Depth Fade;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;451;-2944,2304;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;432;-5648,1408;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;891;-7200,-3984;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;893;-7264,-3872;Inherit;False;Property;_VertexWave;Vertex Wave;117;0;Create;True;0;0;0;False;2;Header(Vertex Wave);Space(5);False;0.1;0.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;892;-7392,-3792;Inherit;False;819;Vertex WaveNoise Vertical Mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;880;-6448,-2992;Inherit;False;Simplex Noise Caustics;-1;;789;477e7c249263854458b4f42934448d42;0;4;4;FLOAT3;0,0,0;False;6;FLOAT;0;False;7;FLOAT;1;False;9;FLOAT;0.01;False;2;FLOAT;0;FLOAT3;3
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;881;-6448,-3120;Inherit;False;Simplex Noise;-1;;790;c68ae2e20c00ec54aaecd9d04797372e;0;3;4;FLOAT3;0,0,0;False;6;FLOAT;0;False;7;FLOAT;1;False;2;FLOAT;0;FLOAT3;3
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;887;-6112,-2976;Inherit;False;Property;_VertexNoiseTwist;Vertex Noise Twist;128;0;Create;True;0;0;0;False;1;Space(5);False;0;0;-180;180;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;896;-5328,-2416;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;897;-5280,-2176;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;894;-7552,-2400;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;895;-7504,-2176;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;903;-5776,-3648;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;902;-7168,-1392;Inherit;False;Property;_VertexNormalOffsetTopPower;Vertex Normal Offset Top Power;114;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;900;-6816,-1008;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;901;-7040,-1472;Inherit;False;723;UV 2D Ym;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;899;-7152,-928;Inherit;False;Property;_VertexNormalOffsetBottomPower;Vertex Normal Offset Bottom Power;116;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;215;-4320,3152;Inherit;True;Property;_Alpha;Alpha;9;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;223;-4256,2880;Inherit;False;False;False;False;True;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;211;-4432,2704;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;378;-4880,1856;Inherit;False;Intersection Highlight;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;213;-4224,2976;Inherit;False;401;Depth Fade;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;214;-4288,3056;Inherit;False;400;Camera Depth Fade;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;103;-2800,2304;Inherit;False;Intersection Highlight Alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;433;-5488,1408;Inherit;False;Fresnel Mask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;904;-7024,-3984;Inherit;False;3;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;905;-7056,-3840;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;886;-6112,-3104;Inherit;False;Property;_VertexNoiseDilationEnabled;Vertex Noise Dilation Enabled;159;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;898;-5696,-3072;Inherit;False;TwistXZ;-1;;791;9581222175ed3d74faf64569d7d97396;1,12,0;2;10;FLOAT3;0,0,0;False;9;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;910;-5152,-3040;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;908;-5280,-2960;Inherit;False;Property;_VertexNoise;Vertex Noise;122;0;Create;True;0;0;0;False;2;Header(Vertex Noise);Space(5);False;0.02;0.02;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;909;-5408,-2880;Inherit;False;819;Vertex WaveNoise Vertical Mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;907;-5088,-2320;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;906;-7312,-2288;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;919;-5568,-3664;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;912;-7024,-1264;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;918;-7088,-1104;Inherit;False;Property;_VertexNormalOffsetTop;Vertex Normal Offset Top;156;0;Create;True;0;0;0;False;1;Space(5);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;916;-6656,-1008;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;915;-6656,-1392;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;917;-7072,-1568;Inherit;False;Property;_VertexNormalOffset;Vertex Normal Offset;153;0;Create;True;0;0;0;False;2;Header(Vertex Normal Offset);Space(5);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;911;-7040,-1712;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.NormalVertexDataNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;913;-7024,-848;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;914;-7104,-688;Inherit;False;Property;_VertexNormalOffsetBottom;Vertex Normal Offset Bottom;115;0;Create;True;0;0;0;False;1;Space(5);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;216;-4192,2704;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;217;-4000,2864;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;218;-4000,2896;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;219;-4000,2944;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;258;-4000,2832;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;222;-4320,3456;Inherit;False;103;Intersection Highlight Alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;221;-4288,3376;Inherit;False;378;Intersection Highlight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;220;-4224,2784;Inherit;False;433;Fresnel Mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;920;-6848,-3984;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;973;-5424,-3168;Inherit;False;Property;_VertexNoiseTwistEnabled;Vertex Noise Twist Enabled;160;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;925;-4992,-3008;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;921;-4912,-2272;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;922;-4912,-2400;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;929;-5440,-3664;Inherit;True;UV 2D Circular Y;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;927;-6464,-1008;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;928;-6448,-1280;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;926;-6656,-1712;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;923;-7120,-2240;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;924;-7120,-2368;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;224;-3872,2752;Inherit;False;6;6;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;225;-3872,2960;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;930;-6656,-4000;Inherit;False;Property;_VertexWaveEnabled;Vertex Wave Enabled;118;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;933;-4816,-3040;Inherit;False;Property;_VertexNoiseEnabled;Vertex Noise Enabled;121;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;940;-5440,-1328;Inherit;False;Property;_VertexOffsetOverY2;Vertex Offset over Y 2;133;0;Create;False;0;0;0;False;1;Space(5);False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;937;-5376,-1584;Inherit;False;723;UV 2D Ym;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;936;-5472,-1456;Inherit;False;Property;_VertexOffsetOverY1Power;Vertex Offset over Y 1 Power;132;0;Create;False;0;0;0;False;0;False;2;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;939;-5472,-1056;Inherit;False;Property;_VertexOffsetOverY2Power;Vertex Offset over Y 2 Power;134;0;Create;False;0;0;0;False;0;False;2;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;935;-5424,-1744;Inherit;False;Property;_VertexOffsetOverY1;Vertex Offset over Y 1;161;0;Create;False;0;0;0;False;2;Header(Vertex Offset over Y);Space(5);False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.Vector3Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;942;-5472,-928;Inherit;False;Property;_VertexOffsetOverCircularY;Vertex Offset over Circular Y;162;0;Create;False;0;0;0;False;2;Header(Vertex Offset over Circular Y);Space(5);False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;975;-5408,-720;Inherit;False;929;UV 2D Circular Y;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;941;-5504,-624;Inherit;False;Property;_VertexOffsetOverCircularYPower;Vertex Offset over Circular Y Power;135;0;Create;False;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;934;-6240,-1296;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;938;-5376,-1152;Inherit;False;723;UV 2D Ym;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;931;-4720,-2336;Inherit;False;Property;_Keyword6;Keyword 0;149;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;988;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;932;-6928,-2304;Inherit;False;Property;_Keyword7;Keyword 0;149;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;988;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;226;-3680,2832;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;943;-6368,-4000;Inherit;False;Vertex Sine;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;946;-4480,-3040;Inherit;False;Vertex Noise;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;944;-4448,-2336;Inherit;False;Vertex Offset Top;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;945;-6704,-2304;Inherit;False;Vertex Offset Bottom;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TransformDirectionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;950;-5120,-1328;Inherit;False;World;Object;False;Fast;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.PowerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;949;-5056,-1584;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;951;-5056,-1152;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.TransformDirectionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;948;-5104,-1744;Inherit;False;World;Object;False;Fast;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;982;-5152,-784;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PowerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;952;-5120,-720;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;947;-6080,-1296;Inherit;False;Vertex Normal Offset;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;227;-3536,2832;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;957;-4848,-1680;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;959;-4848,-1248;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;958;-4864,-800;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;953;-8576,-1712;Inherit;False;947;Vertex Normal Offset;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;954;-8528,-1632;Inherit;False;943;Vertex Sine;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;955;-8528,-1552;Inherit;False;946;Vertex Noise;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;956;-8560,-1472;Inherit;False;944;Vertex Offset Top;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;960;-8592,-1392;Inherit;False;945;Vertex Offset Bottom;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;963;-8320,-1136;Inherit;False;Property;_VertexTwist;Vertex Twist;154;0;Create;True;0;0;0;False;2;Header(Vertex Twist);Space(5);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;230;-3376,2800;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;231;-3344,2832;Inherit;False;257;Radial Mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;962;-4608,-1264;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;961;-8272,-1632;Inherit;False;5;5;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PosVertexDataNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;964;-8320,-1296;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;985;-8096,-1440;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;260;-3376,2896;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;232;-3152,2832;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;233;-3040,2800;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;966;-4464,-1264;Inherit;False;Vertex Offset over Y;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NegateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;967;-8080,-1504;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;965;-8048,-1632;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;259;-2864,2928;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;234;-2976,2832;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;969;-7904,-1584;Inherit;False;TwistXZ;-1;;793;9581222175ed3d74faf64569d7d97396;1,12,0;2;10;FLOAT3;0,0,0;False;9;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;968;-7936,-1440;Inherit;False;966;Vertex Offset over Y;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;235;-2768,2832;Inherit;False;Property;_Keyword8;Keyword 2;43;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;204;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;970;-7664,-1536;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;236;-2448,2832;Inherit;False;Alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;971;-7536,-1536;Inherit;False;Vertex Offset;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;190;-4416,1808;Inherit;False;2215.556;652.1902;New Note;Colour;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;191;-4144,1136;Inherit;False;1812.014;554.3632;New Note;Vertex Colour;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;192;-4848,-176;Inherit;False;2610.822;1083.624;New Note;Colour Input;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;193;-4800,1136;Inherit;False;593.998;291.0647;New Note;Colour Power;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;198;-6352,2640;Inherit;False;4126.193;933.5279;Alpha Assembly;Alpha Assembly;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;199;-3760,3328;Inherit;False;1378.711;102.6001;New Note;;1,1,1,1;Creates final "Alpha" local var by combining noise/vertical masks with fresnel mask, vertex color alpha, depth fades, alpha property, intersection highlight (with its alpha), and optional radial mask subtractive mode.;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;261;-4656,3760;Inherit;False;2434.363;655.9067;New Note;Radial Mask;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;292;-7040,3760;Inherit;False;2295.018;430.6533;New Note;Verticle Mask 1;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;293;-7056,4336;Inherit;False;2288.378;402.0112;New Note;Verticle Mask 2;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;379;-5984,1808;Inherit;False;1347;464;New Note;Intersection Highlight;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;402;-8048,3328;Inherit;False;1531.362;237.4844;New Note;Camera Depth Fade;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;403;-8384,2640;Inherit;False;1875.667;446.0815;New Note;Depth Fade;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;446;-7232,1808;Inherit;False;1120.135;251.7758;New Note;Sample Noise;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;448;-5664,1136;Inherit;False;653;234;New Note;NOTICE;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;449;-5264,1264;Inherit;False;229;100;New Note;;1,1,1,1;This was originally a dead end but trying this effect.$;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;450;-6592,976;Inherit;False;1679.815;717.8921;New Note;Fresnel Mask;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;628;-5856,512;Inherit;False;939.7549;389.0342;New Note;Verticle Color Mask;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;634;-3072,4560;Inherit;False;848;302;New Note;Particle Mask Radius/Subtract Noise Over Lifetime;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;751;-8384,1952;Inherit;False;1012.36;459.219;New Note;Screen Position;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;752;-8528,3760;Inherit;False;1437.678;599.1946;New Note;Vertex & World Position UV 3D 1;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;753;-8528,4400;Inherit;False;1434.431;473.3696;New Note;World & Vertex Position UV 3D 2;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;754;-10096,3776;Inherit;False;1515.777;394.4214;New Note;UV 2D Normal and Centered 1;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;755;-10096,4256;Inherit;False;1494.354;410.957;New Note;UV 2D Centered and Normal 2;0,0,0,1;;0;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;142;-4528,784;Inherit;False;101;Colour Power;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;140;-3776,736;Inherit;False;Property;_VerticalColourValueMultiplier;Vertical Colour Value Multiplier;13;0;Create;True;0;0;0;False;0;False;5;5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RGBToHSVNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;143;-4064,448;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RGBToHSVNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;147;-4064,-64;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;123;-4256,-64;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;132;-4256,448;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;125;-4528,240;Inherit;False;101;Colour Power;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;126;-4784,112;Inherit;False;Property;_ColourA;Colour A;3;2;[HDR];[Header];Create;True;0;0;0;False;2;Header(Colour);Space(5);False;1,0.1254902,0,1;1,0.1254902,0,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;122;-4528,112;Inherit;False;Colour RGB x A;-1;;795;034d6205f93eb7e4f9100dabf18de7c4;0;1;22;COLOR;1,1,1,0.5019608;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;121;-4528,-112;Inherit;False;Colour RGB x A;-1;;796;034d6205f93eb7e4f9100dabf18de7c4;0;1;22;COLOR;1,1,1,0.5019608;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;124;-4784,-112;Inherit;False;Property;_ColourB;Colour B;4;1;[HDR];Create;True;0;0;0;False;0;False;1,0.02745098,0,1;1,0.02745098,0,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;130;-4528,448;Inherit;False;Colour RGB x A;-1;;797;034d6205f93eb7e4f9100dabf18de7c4;0;1;22;COLOR;1,1,1,0.5019608;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;133;-4784,448;Inherit;False;Property;_VerticalColourB;Vertical Colour B;12;1;[HDR];Create;True;0;0;0;False;0;False;0,0,1,1;0,0,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;131;-4528,688;Inherit;False;Colour RGB x A;-1;;798;034d6205f93eb7e4f9100dabf18de7c4;0;1;22;COLOR;1,1,1,0.5019608;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;141;-4784,688;Inherit;False;Property;_VerticalColourA;Vertical Colour A;11;2;[HDR];[Header];Create;True;0;0;0;False;0;False;0,0.5019608,1,1;0,0.5019608,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;162;-3792,448;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;139;-3776,592;Inherit;False;Property;_VerticalColourSaturationShift;Vertical Colour Saturation Shift;98;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;138;-3776,480;Inherit;False;Property;_VerticalColourHueShift;Vertical Colour Hue Shift;99;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;163;-3808,656;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;164;-3536,448;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;134;-3440,448;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;135;-3440,560;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;165;-3536,560;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;166;-3808,544;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;136;-3472,704;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;167;-3536,672;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.HSVToRGBNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;144;-3248,528;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;148;-3472,240;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;151;-3472,112;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;152;-3472,-16;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;150;-3792,0;Inherit;False;Property;_ColourHueShift;Colour Hue Shift;6;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;170;-3792,64;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;171;-3552,64;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;149;-3776,112;Inherit;False;Property;_ColourSaturationShift;Colour Saturation Shift;7;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;172;-3808,176;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;173;-3536,192;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;146;-3760,240;Inherit;False;Property;_ColourValueMultiplier;Colour Value Multiplier;8;0;Create;True;0;0;0;False;0;False;5;5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;169;-3552,-32;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;168;-3808,-32;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.HSVToRGBNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;127;-3232,112;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;129;-2944,320;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;128;-2768,112;Inherit;False;Property;_VerticalColour;Vertical Colour;10;0;Create;True;0;0;0;False;2;Header(Vertical Colour);Space(5);False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;145;-2448,112;Inherit;False;Colour Input;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PowerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;98;-4608,1264;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;99;-4784,1344;Inherit;False;Property;_ColourPower;Colour Power;5;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;101;-4416,1264;Inherit;False;Colour Power;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;109;-3888,1936;Inherit;False;Property;_IntersectionHighlightColourHueShift;Intersection Highlight Colour Hue Shift;110;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;108;-3536,1920;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;107;-3536,2032;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;112;-3568,2160;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;183;-3600,2016;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;110;-3888,2048;Inherit;False;Property;_IntersectionHighlightColourSaturationShift;Intersection Highlight Colour Saturation Shift;111;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;182;-3920,2016;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;111;-3888,2176;Inherit;False;Property;_IntersectionHighlightColourValueMultiplier;Intersection Highlight Colour Value Multiplier;79;0;Create;True;0;0;0;False;0;False;5;5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;184;-3904,2144;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;185;-3616,2144;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RGBToHSVNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;106;-4192,1936;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;105;-2944,1952;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;189;-3136,1904;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;181;-3600,1920;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;180;-3920,1920;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;195;-1920,1456;Inherit;False;Property;_Tessellation;Tessellation;93;0;Create;True;0;0;0;True;2;Header(Tessellation);Space(5);False;1;1;1;64;0;1;FLOAT;0
Node;AmplifyShaderEditor.HSVToRGBNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;113;-3312,2016;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;116;-2944,2096;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;119;-2592,2064;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;452;-3104,2128;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PowerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;115;-2800,2208;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;0.0001;False;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;453;-4098,1184;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;456;-3458,1392;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RGBToHSVNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;457;-4114,1392;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;458;-3810,1424;Inherit;False;Property;_VertexColourHueShift;Vertex Colour Hue Shift;83;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;459;-3826,1392;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;460;-3570,1392;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;461;-3458,1504;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;462;-3810,1520;Inherit;False;Property;_VertexColourSaturationShift;Vertex Colour Saturation Shift;84;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;463;-3570,1488;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;464;-3842,1488;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;465;-3842,1584;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;466;-3378,1600;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.HSVToRGBNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;454;-3282,1392;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;118;-2432,2064;Inherit;False;Colour;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;114;-3040,2208;Inherit;False;378;Intersection Highlight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;187;-3312,1936;Inherit;False;467;Vertex Colour;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;137;-3280,688;Inherit;False;627;Vertical Colour Mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;627;-5152,560;Inherit;False;Vertical Colour Mask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;623;-5792,656;Inherit;False;Property;_VerticalColourMaskPower;Vertical Colour Mask Power;14;0;Create;True;0;0;0;False;2;Header(Vertical Colour Mask);Space(5);False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;624;-5824,736;Inherit;False;Property;_VerticalColourMaskRemapMin;Vertical Colour Mask Remap Min;15;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;626;-5456,560;Inherit;True;Power Smoothstep;-1;;799;eaa8bfb6a4986cb418a1675cea297eed;1,24,0;4;20;FLOAT;1;False;4;FLOAT;1;False;7;FLOAT;0;False;23;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;625;-5824,816;Inherit;False;Property;_VerticalColourMaskRemapMax;Vertical Colour Mask Remap Max;16;0;Create;True;0;0;0;False;0;False;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;434;-5408,1184;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;438;-5680,1264;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;631;-3056,4784;Inherit;False;Property;_ParticleSubtractNoiseoverLifetime;Particle Subtract Noise over Lifetime;2;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;632;-2736,4720;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;633;-2528,4720;Inherit;False;Particle Subtract Noise over Lifetime;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;100;-4784,1184;Inherit;False;360;Noise;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;447;-5248,1184;Inherit;False;Sparkle Mask;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;186;-4400,1856;Inherit;False;145;Colour Input;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;738;-7840,4224;Inherit;False;445;Sample Noise;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;737;-7584,4128;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SwizzleNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;680;-8016,4592;Inherit;False;FLOAT3;1;0;2;3;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;763;-7328,4800;Inherit;False;UV 3D Y VWP2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;756;-7568,4800;Inherit;False;False;True;False;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldPosInputsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;679;-8496,4448;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.PosVertexDataNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;685;-8496,4608;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;684;-7600,4640;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;820;-14624,3008;Inherit;False;1228;415;New Note;Vertex WaveNoise Vertical Mask;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;821;-13072,2976;Inherit;False;1121.1;542;New Note;Noise Offset;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;822;-13632,3536;Inherit;False;1313.5;384.7;New Note;Particle Stable Random X;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;823;-13680,4224;Inherit;False;975.5;308.0002;New Note;Particle (Mask Radius)(Subtract Noise) Over Lifetime;0,0,0,1;;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;776;-13024,4272;Inherit;False;Particle Mask Radius over Lifetime;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;772;-12032,3776;Inherit;True;Property;_Texture;Texture;147;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;773;-11520,3856;Inherit;False;Texture A;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;774;-11520,3776;Inherit;False;Texture R;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;824;-12048,3728;Inherit;False;729;247;New Note;Texture R and A;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;825;-14464,1984;Inherit;False;4900.048;635.9673;New Note;Noise UV;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;835;-14336,768;Inherit;False;1374;246;New Note;Parallax Offset;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;836;-14336,1104;Inherit;False;1507.426;244.2264;New Note;Noise Base UV;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;837;-14336,128;Inherit;False;1189.151;546.7126;New Note;Mask Distortion Noise Offset;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;838;-14352,-512;Inherit;False;1168.723;552.1603;New Note;Distortion Noise Offset;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;839;-12512,-432;Inherit;False;2968.604;774.6007;New Note;Noise Distortion;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;840;-12544,544;Inherit;False;3008.803;740.1171;New Note;Mask Distortion;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;365;-11248,-1424;Inherit;False;Property;_NoiseDilationEnabled1;Noise Dilation Enabled;18;0;Create;True;0;0;0;False;0;False;0;1;1;True;;Toggle;2;Key0;Key1;Reference;349;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;366;-10848,-1424;Inherit;False;Signed Power Smoothstep;-1;;800;3654d4d5f7b612d4085eb90cd7a60668;3,3,2,20,1,15,1;7;2;FLOAT;0;False;4;FLOAT2;0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT4;0,0,0,0;False;12;FLOAT;1;False;17;FLOAT;0;False;18;FLOAT;1;False;1;FLOAT3;14
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;363;-10480,-1008;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;364;-10304,-1152;Inherit;False;Property;_TextureEnabled;Texture Enabled;81;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;367;-9792,-1424;Inherit;False;Noise Gradient;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;841;-12528,-1472;Inherit;False;2965.753;785.3523;New Note;Noise / Noise Gradient;0,0,0,1;;0;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;622;-5696,560;Inherit;False;723;UV 2D Ym;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;976;-8240,-4144;Inherit;False;2096.151;594.4219;New Note;Vertex Sine;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;977;-8944,-3360;Inherit;False;972.8999;596.6001;New Note;Vertex Noise Offset;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;978;-7488,-3392;Inherit;False;3251.587;746.1099;New Note;Vertex Noise;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;979;-8752,-2464;Inherit;False;2311.567;397.561;New Note;Vertex Offset Bottom;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;980;-6288,-2464;Inherit;False;2073.519;401.812;New Note;Vertex Offset Top;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;981;-5984,-3712;Inherit;False;767.5;127.2998;New Note;UV 2D Circular Y;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;983;-5536,-1776;Inherit;False;1336.267;1244.51;New Note;Vertex Offset Over Y;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;984;-7168,-1760;Inherit;False;1336.295;1151.147;New Note;Vertex Normal Offset;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;986;-8640,-1760;Inherit;False;1308.3;703.2;New Note;Vertex Offset;0,0,0,1;;0;0
Node;AmplifyShaderEditor.TransformDirectionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;972;-5120,-928;Inherit;False;World;Object;False;Fast;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.ComponentMaskNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;455;-3040,1392;Inherit;False;True;True;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;468;-2832,1184;Inherit;False;Property;_VertexColorHSVEnabledOn;Vertex Color HSV Enabled On;94;0;Create;True;0;0;0;False;0;False;0;True;Create;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;467;-2544,1184;Inherit;False;Vertex Colour;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;724;-8288,4528;Inherit;False;Property;_VertexWorldPos2;VertexWorldPos2;95;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;2;WorldPos2;VertexPos2;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;681;-8128,4736;Inherit;False;Property;_SwapUVXY6;Swap UV XY;151;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;-1;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;987;-7728,4512;Inherit;False;Property;_Keyword0;Keyword 0;150;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;717;-9104,4064;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;994;-9152,4432;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;196;-1920,1280;Inherit;False;236;Alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;194;-1920,1360;Inherit;False;971;Vertex Offset;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;197;-1920,1200;Inherit;False;118;Colour;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;437;-5648,1296;Inherit;False;445;Sample Noise;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;683;-7824,4736;Inherit;False;445;Sample Noise;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;995;-9392,4480;Inherit;False;445;Sample Noise;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;716;-9360,4080;Inherit;False;445;Sample Noise;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;369;-10768,-768;Inherit;False;773;Texture A;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1;0,0;Float;False;False;-1;3;Rendering.HighDefinition.HDUnlitGUI;0;13;New Amplify Shader;7f5cb9c3ea6481f469fdd856555439ef;True;ShadowCaster;0;1;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_CullMode;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;False;False;True;1;LightMode=ShadowCaster;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;2;0,0;Float;False;False;-1;3;Rendering.HighDefinition.HDUnlitGUI;0;13;New Amplify Shader;7f5cb9c3ea6481f469fdd856555439ef;True;META;0;2;META;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;3;0,0;Float;False;False;-1;3;Rendering.HighDefinition.HDUnlitGUI;0;13;New Amplify Shader;7f5cb9c3ea6481f469fdd856555439ef;True;SceneSelectionPass;0;3;SceneSelectionPass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=SceneSelectionPass;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;4;0,0;Float;False;False;-1;3;Rendering.HighDefinition.HDUnlitGUI;0;13;New Amplify Shader;7f5cb9c3ea6481f469fdd856555439ef;True;DepthForwardOnly;0;4;DepthForwardOnly;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_CullMode;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;True;True;0;True;_StencilRefDepth;255;False;;255;True;_StencilWriteMaskDepth;7;False;;3;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;False;False;True;1;LightMode=DepthForwardOnly;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;5;0,0;Float;False;False;-1;3;Rendering.HighDefinition.HDUnlitGUI;0;13;New Amplify Shader;7f5cb9c3ea6481f469fdd856555439ef;True;MotionVectors;0;5;MotionVectors;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_CullMode;False;False;False;False;False;False;False;False;False;True;True;0;True;_StencilRefMV;255;False;;255;True;_StencilWriteMaskMV;7;False;;3;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;False;False;True;1;LightMode=MotionVectors;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;6;0,0;Float;False;False;-1;3;Rendering.HighDefinition.HDUnlitGUI;0;13;New Amplify Shader;7f5cb9c3ea6481f469fdd856555439ef;True;DistortionVectors;0;6;DistortionVectors;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;True;4;1;False;;1;False;;4;1;False;;1;False;;True;1;False;;1;False;;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_CullMode;False;False;False;False;False;False;False;False;False;True;True;0;True;_StencilRefDistortionVec;255;False;;255;True;_StencilWriteMaskDistortionVec;7;False;;3;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;2;False;;True;3;False;;False;True;1;LightMode=DistortionVectors;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;7;0,0;Float;False;False;-1;3;Rendering.HighDefinition.HDUnlitGUI;0;13;New Amplify Shader;7f5cb9c3ea6481f469fdd856555439ef;True;ScenePickingPass;0;7;ScenePickingPass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_CullMode;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;True;3;False;;False;True;1;LightMode=Picking;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;0;-1520,1232;Float;False;True;-1;3;Rendering.HighDefinition.HDUnlitGUI;0;13;New Amplify Shader;7f5cb9c3ea6481f469fdd856555439ef;True;Forward Unlit;0;0;Forward Unlit;12;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;True;5;True;1;d3d11;0;False;False;False;True;True;0;1;False;;10;False;;0;1;False;;0;False;;False;True;True;0;1;False;;0;True;_DstBlend2;0;1;False;;0;False;;False;True;True;0;1;False;;0;True;_DstBlend2;0;1;False;;0;False;;False;False;False;True;0;True;_CullModeForward;False;False;False;True;True;True;True;True;0;True;_ColorMaskTransparentVel;False;False;False;False;False;True;True;0;True;_StencilRef;255;False;;255;True;_StencilWriteMask;7;False;;3;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;True;True;2;False;_ZWrite;True;3;False;_ZTestDepthEqualForOpaque;False;True;1;LightMode=ForwardOnly;False;False;0;Hidden/InternalErrorShader;0;0;Standard;34;Surface Type;1;639009744278308625;  Rendering Pass ;0;0;  Rendering Pass;1;0;  Blending Mode;0;0;  Receive Fog;1;0;  Distortion;0;0;    Distortion Mode;0;0;    Distortion Only;1;0;  Depth Write;1;0;  Cull Mode;0;0;  Depth Test;4;0;Double-Sided;0;0;Alpha Clipping;0;0;  Use Shadow Threshold;0;0;Receive Decals;1;0;Motion Vectors;1;0;  Add Precomputed Velocity;0;0;Shadow Matte;0;0;Cast Shadows;1;0;Write Depth;0;0;  Depth Offset;0;0;  Conservative;0;0;GPU Instancing;1;0;Tessellation;0;0;  Phong;0;0;  Strength;0.5,False,;0;  Type;0;0;  Tess;16,False,;0;  Min;10,False,;0;  Max;25,False,;0;  Edge Length;16,False,;0;  Max Displacement;25,False,;0;Vertex Position;1;0;LOD CrossFade;0;0;0;8;True;True;True;True;True;True;False;True;False;;False;0
WireConnection;745;0;743;1
WireConnection;745;1;743;2
WireConnection;746;0;744;1
WireConnection;746;1;744;2
WireConnection;748;0;746;0
WireConnection;747;0;745;0
WireConnection;749;0;747;0
WireConnection;749;1;748;0
WireConnection;750;0;749;0
WireConnection;719;0;714;0
WireConnection;736;0;734;0
WireConnection;734;1;726;0
WireConnection;734;0;725;0
WireConnection;714;1;721;0
WireConnection;714;0;718;0
WireConnection;735;1;734;0
WireConnection;735;0;736;0
WireConnection;988;1;714;0
WireConnection;988;0;719;0
WireConnection;441;0;439;0
WireConnection;441;1;440;0
WireConnection;442;0;441;0
WireConnection;739;0;735;0
WireConnection;715;0;988;0
WireConnection;444;0;442;0
WireConnection;444;1;443;0
WireConnection;767;0;766;4
WireConnection;769;0;767;0
WireConnection;769;2;768;0
WireConnection;770;0;766;3
WireConnection;804;0;801;0
WireConnection;804;1;800;0
WireConnection;792;1;799;0
WireConnection;792;0;798;0
WireConnection;445;0;444;0
WireConnection;771;0;769;0
WireConnection;806;0;803;0
WireConnection;806;1;802;0
WireConnection;806;2;804;0
WireConnection;793;1;792;0
WireConnection;793;0;797;0
WireConnection;810;0;808;0
WireConnection;810;1;807;0
WireConnection;833;0;519;0
WireConnection;805;0;806;0
WireConnection;794;0;793;0
WireConnection;794;1;796;0
WireConnection;812;0;811;0
WireConnection;812;1;809;0
WireConnection;812;2;810;0
WireConnection;832;0;833;0
WireConnection;795;0;794;0
WireConnection;813;0;812;0
WireConnection;509;0;510;0
WireConnection;511;0;519;0
WireConnection;516;0;832;0
WireConnection;305;4;301;0
WireConnection;305;7;302;0
WireConnection;305;8;303;0
WireConnection;305;9;304;0
WireConnection;305;12;300;0
WireConnection;316;0;313;0
WireConnection;316;1;312;0
WireConnection;471;0;469;1
WireConnection;507;7;511;0
WireConnection;507;6;509;0
WireConnection;507;8;514;0
WireConnection;507;9;515;0
WireConnection;518;0;516;0
WireConnection;834;0;519;0
WireConnection;308;4;305;0
WireConnection;308;6;305;15
WireConnection;308;7;306;0
WireConnection;308;9;307;0
WireConnection;309;4;305;0
WireConnection;309;6;305;15
WireConnection;309;7;306;0
WireConnection;322;4;316;0
WireConnection;322;7;318;0
WireConnection;322;8;319;0
WireConnection;322;9;320;0
WireConnection;322;12;317;0
WireConnection;472;0;471;0
WireConnection;500;0;501;0
WireConnection;506;0;507;0
WireConnection;506;2;518;0
WireConnection;831;0;834;0
WireConnection;310;1;309;3
WireConnection;310;0;308;3
WireConnection;326;4;322;0
WireConnection;326;6;322;15
WireConnection;326;7;323;0
WireConnection;326;9;324;0
WireConnection;327;4;322;0
WireConnection;327;6;322;15
WireConnection;327;7;323;0
WireConnection;474;0;472;0
WireConnection;474;1;470;0
WireConnection;503;0;502;0
WireConnection;830;0;500;0
WireConnection;505;1;831;0
WireConnection;505;0;506;0
WireConnection;314;5;310;0
WireConnection;314;12;311;0
WireConnection;329;1;327;3
WireConnection;329;0;326;3
WireConnection;476;0;474;0
WireConnection;488;10;499;0
WireConnection;488;9;489;0
WireConnection;499;1;505;0
WireConnection;499;2;503;0
WireConnection;499;3;830;0
WireConnection;321;0;314;14
WireConnection;321;1;315;0
WireConnection;333;5;329;0
WireConnection;333;12;330;0
WireConnection;475;0;476;0
WireConnection;498;1;499;0
WireConnection;498;0;488;0
WireConnection;758;0;735;0
WireConnection;325;0;321;0
WireConnection;335;0;333;14
WireConnection;335;1;332;0
WireConnection;469;0;498;0
WireConnection;478;0;475;0
WireConnection;478;1;473;0
WireConnection;762;0;758;0
WireConnection;787;13;791;0
WireConnection;788;0;787;0
WireConnection;328;0;325;0
WireConnection;996;1;991;0
WireConnection;996;0;997;0
WireConnection;993;0;996;0
WireConnection;336;0;335;0
WireConnection;477;0;469;0
WireConnection;482;2;478;0
WireConnection;482;12;481;0
WireConnection;483;2;478;0
WireConnection;483;12;481;0
WireConnection;483;17;479;0
WireConnection;483;18;480;0
WireConnection;761;0;762;0
WireConnection;789;1;787;0
WireConnection;789;0;788;0
WireConnection;990;1;996;0
WireConnection;990;0;993;0
WireConnection;239;0;237;0
WireConnection;337;0;336;0
WireConnection;484;0;477;0
WireConnection;485;1;482;14
WireConnection;485;0;483;14
WireConnection;757;0;761;0
WireConnection;790;0;789;0
WireConnection;992;0;990;0
WireConnection;262;0;239;0
WireConnection;630;0;629;1
WireConnection;486;0;484;0
WireConnection;486;1;485;0
WireConnection;760;0;757;0
WireConnection;784;0;781;0
WireConnection;784;1;780;0
WireConnection;240;0;238;0
WireConnection;240;1;262;0
WireConnection;263;0;242;0
WireConnection;722;0;988;0
WireConnection;493;0;486;0
WireConnection;493;1;491;0
WireConnection;493;2;492;0
WireConnection;785;0;782;0
WireConnection;785;1;783;0
WireConnection;785;2;784;0
WireConnection;244;0;240;0
WireConnection;244;1;263;0
WireConnection;245;1;241;0
WireConnection;245;2;243;0
WireConnection;266;0;264;0
WireConnection;266;1;265;0
WireConnection;494;0;493;0
WireConnection;786;0;785;0
WireConnection;723;0;722;0
WireConnection;249;0;244;0
WireConnection;249;1;247;0
WireConnection;250;0;248;0
WireConnection;250;1;245;0
WireConnection;269;0;266;0
WireConnection;269;1;267;0
WireConnection;276;0;274;0
WireConnection;276;1;275;0
WireConnection;252;10;249;0
WireConnection;252;8;250;0
WireConnection;252;9;246;0
WireConnection;281;0;276;0
WireConnection;281;1;277;0
WireConnection;270;1;268;0
WireConnection;270;0;269;0
WireConnection;344;4;340;0
WireConnection;344;7;341;0
WireConnection;344;8;339;0
WireConnection;344;9;338;0
WireConnection;344;12;370;0
WireConnection;254;0;252;0
WireConnection;254;1;253;0
WireConnection;279;0;278;0
WireConnection;286;1;280;0
WireConnection;286;0;281;0
WireConnection;278;20;270;0
WireConnection;278;4;273;0
WireConnection;278;7;272;0
WireConnection;278;23;271;0
WireConnection;346;4;344;0
WireConnection;346;6;344;15
WireConnection;346;7;342;0
WireConnection;346;9;343;0
WireConnection;347;4;344;0
WireConnection;347;6;344;15
WireConnection;347;7;342;0
WireConnection;778;0;775;2
WireConnection;778;1;777;0
WireConnection;255;0;254;0
WireConnection;282;1;278;0
WireConnection;282;0;279;0
WireConnection;288;20;286;0
WireConnection;288;4;283;0
WireConnection;288;7;284;0
WireConnection;288;23;285;0
WireConnection;289;0;288;0
WireConnection;349;1;347;0
WireConnection;349;0;346;0
WireConnection;779;0;778;0
WireConnection;256;0;255;0
WireConnection;287;0;282;0
WireConnection;290;1;288;0
WireConnection;290;0;289;0
WireConnection;381;0;380;0
WireConnection;385;0;381;0
WireConnection;384;0;382;0
WireConnection;355;20;349;0
WireConnection;355;4;350;0
WireConnection;355;7;352;0
WireConnection;355;23;351;0
WireConnection;846;0;843;0
WireConnection;846;1;842;0
WireConnection;257;0;256;0
WireConnection;291;0;290;0
WireConnection;386;1;381;0
WireConnection;386;0;385;0
WireConnection;388;0;384;0
WireConnection;356;0;355;0
WireConnection;356;1;354;0
WireConnection;848;0;844;0
WireConnection;848;1;845;0
WireConnection;848;2;846;0
WireConnection;201;0;204;0
WireConnection;201;1;200;0
WireConnection;392;0;391;0
WireConnection;392;1;390;0
WireConnection;394;20;386;0
WireConnection;394;4;387;0
WireConnection;393;20;388;0
WireConnection;393;4;389;0
WireConnection;357;0;356;0
WireConnection;866;0;857;0
WireConnection;868;0;856;0
WireConnection;867;0;855;0
WireConnection;867;1;854;0
WireConnection;852;0;848;0
WireConnection;859;0;850;0
WireConnection;849;0;847;0
WireConnection;204;0;203;0
WireConnection;205;0;207;0
WireConnection;205;1;202;0
WireConnection;372;0;371;0
WireConnection;397;0;392;0
WireConnection;395;0;394;0
WireConnection;395;1;393;0
WireConnection;427;3;426;0
WireConnection;435;0;428;0
WireConnection;436;0;429;0
WireConnection;818;20;817;0
WireConnection;818;4;816;0
WireConnection;818;7;814;0
WireConnection;818;23;815;0
WireConnection;359;1;357;0
WireConnection;359;2;358;0
WireConnection;874;0;866;1
WireConnection;874;1;864;0
WireConnection;874;2;865;0
WireConnection;875;0;868;0
WireConnection;875;1;867;0
WireConnection;860;1;853;0
WireConnection;860;0;851;0
WireConnection;870;0;859;0
WireConnection;858;0;849;0
WireConnection;879;0;869;1
WireConnection;206;1;204;0
WireConnection;206;0;201;0
WireConnection;207;1;204;0
WireConnection;207;0;206;0
WireConnection;373;0;372;0
WireConnection;399;20;397;0
WireConnection;399;4;396;0
WireConnection;398;0;395;0
WireConnection;430;0;427;0
WireConnection;430;1;435;0
WireConnection;430;2;436;0
WireConnection;819;0;818;0
WireConnection;360;0;359;0
WireConnection;882;0;874;0
WireConnection;882;1;875;0
WireConnection;871;4;860;0
WireConnection;871;7;863;0
WireConnection;871;8;861;0
WireConnection;871;9;862;0
WireConnection;871;12;974;0
WireConnection;876;0;870;0
WireConnection;884;0;876;1
WireConnection;884;1;878;0
WireConnection;869;0;858;0
WireConnection;883;0;879;0
WireConnection;883;1;877;0
WireConnection;208;1;207;0
WireConnection;208;0;205;0
WireConnection;209;1;207;0
WireConnection;209;0;208;0
WireConnection;377;20;373;0
WireConnection;377;4;374;0
WireConnection;377;7;375;0
WireConnection;377;23;376;0
WireConnection;400;0;399;0
WireConnection;401;0;398;0
WireConnection;451;0;102;4
WireConnection;451;1;104;0
WireConnection;432;1;430;0
WireConnection;432;2;431;0
WireConnection;891;0;882;0
WireConnection;880;4;871;0
WireConnection;880;6;871;15
WireConnection;880;7;872;0
WireConnection;880;9;873;0
WireConnection;881;4;871;0
WireConnection;881;6;871;15
WireConnection;881;7;872;0
WireConnection;896;0;876;0
WireConnection;896;1;884;0
WireConnection;897;0;885;0
WireConnection;894;0;869;0
WireConnection;894;1;883;0
WireConnection;895;0;890;0
WireConnection;903;0;889;0
WireConnection;900;0;888;0
WireConnection;223;0;212;0
WireConnection;211;0;210;0
WireConnection;211;1;209;0
WireConnection;378;0;377;0
WireConnection;103;0;451;0
WireConnection;433;0;432;0
WireConnection;904;0;891;0
WireConnection;904;1;893;0
WireConnection;904;2;892;0
WireConnection;886;1;881;3
WireConnection;886;0;880;3
WireConnection;898;10;886;0
WireConnection;898;9;887;0
WireConnection;910;0;898;0
WireConnection;907;0;896;0
WireConnection;907;1;897;0
WireConnection;906;0;894;0
WireConnection;906;1;895;0
WireConnection;919;0;903;0
WireConnection;916;0;900;0
WireConnection;916;1;899;0
WireConnection;915;0;901;0
WireConnection;915;1;902;0
WireConnection;216;0;211;0
WireConnection;217;0;213;0
WireConnection;218;0;214;0
WireConnection;219;0;215;0
WireConnection;258;0;223;0
WireConnection;920;0;904;0
WireConnection;920;1;905;0
WireConnection;973;1;886;0
WireConnection;973;0;898;0
WireConnection;925;0;910;0
WireConnection;925;1;908;0
WireConnection;925;2;909;0
WireConnection;921;1;907;0
WireConnection;922;0;907;0
WireConnection;929;0;919;0
WireConnection;927;0;916;0
WireConnection;927;1;913;0
WireConnection;927;2;914;0
WireConnection;928;0;915;0
WireConnection;928;1;912;0
WireConnection;928;2;918;0
WireConnection;926;0;911;0
WireConnection;926;1;917;0
WireConnection;923;1;906;0
WireConnection;924;0;906;0
WireConnection;224;0;216;0
WireConnection;224;1;220;0
WireConnection;224;2;258;0
WireConnection;224;3;217;0
WireConnection;224;4;218;0
WireConnection;224;5;219;0
WireConnection;225;0;221;0
WireConnection;225;1;222;0
WireConnection;930;0;920;0
WireConnection;933;1;973;0
WireConnection;933;0;925;0
WireConnection;934;0;926;0
WireConnection;934;1;928;0
WireConnection;934;2;927;0
WireConnection;931;1;922;0
WireConnection;931;0;921;0
WireConnection;932;1;924;0
WireConnection;932;0;923;0
WireConnection;226;0;224;0
WireConnection;226;1;225;0
WireConnection;943;0;930;0
WireConnection;946;0;933;0
WireConnection;944;0;931;0
WireConnection;945;0;932;0
WireConnection;950;0;940;0
WireConnection;949;0;937;0
WireConnection;949;1;936;0
WireConnection;951;0;938;0
WireConnection;951;1;939;0
WireConnection;948;0;935;0
WireConnection;982;0;942;0
WireConnection;952;0;975;0
WireConnection;952;1;941;0
WireConnection;947;0;934;0
WireConnection;227;0;226;0
WireConnection;957;0;948;0
WireConnection;957;1;949;0
WireConnection;959;0;950;0
WireConnection;959;1;951;0
WireConnection;958;0;982;0
WireConnection;958;1;952;0
WireConnection;230;0;227;0
WireConnection;962;0;957;0
WireConnection;962;1;959;0
WireConnection;962;2;958;0
WireConnection;961;0;953;0
WireConnection;961;1;954;0
WireConnection;961;2;955;0
WireConnection;961;3;956;0
WireConnection;961;4;960;0
WireConnection;985;0;963;0
WireConnection;260;0;227;0
WireConnection;232;0;231;0
WireConnection;233;0;230;0
WireConnection;966;0;962;0
WireConnection;967;0;985;0
WireConnection;965;0;961;0
WireConnection;965;1;964;0
WireConnection;259;0;260;0
WireConnection;234;0;233;0
WireConnection;234;1;232;0
WireConnection;969;10;965;0
WireConnection;969;9;967;0
WireConnection;235;1;234;0
WireConnection;235;0;259;0
WireConnection;970;0;969;0
WireConnection;970;1;968;0
WireConnection;236;0;235;0
WireConnection;971;0;970;0
WireConnection;143;0;132;0
WireConnection;147;0;123;0
WireConnection;123;0;121;0
WireConnection;123;1;122;0
WireConnection;123;2;125;0
WireConnection;132;0;130;0
WireConnection;132;1;131;0
WireConnection;132;2;142;0
WireConnection;122;22;126;0
WireConnection;121;22;124;0
WireConnection;130;22;133;0
WireConnection;131;22;141;0
WireConnection;162;0;143;1
WireConnection;163;0;143;3
WireConnection;164;0;162;0
WireConnection;134;0;164;0
WireConnection;134;1;138;0
WireConnection;135;0;165;0
WireConnection;135;1;139;0
WireConnection;165;0;166;0
WireConnection;166;0;143;2
WireConnection;136;0;167;0
WireConnection;136;1;140;0
WireConnection;167;0;163;0
WireConnection;144;0;134;0
WireConnection;144;1;135;0
WireConnection;144;2;136;0
WireConnection;148;0;173;0
WireConnection;148;1;146;0
WireConnection;151;0;171;0
WireConnection;151;1;149;0
WireConnection;152;0;169;0
WireConnection;152;1;150;0
WireConnection;170;0;147;2
WireConnection;171;0;170;0
WireConnection;172;0;147;3
WireConnection;173;0;172;0
WireConnection;169;0;168;0
WireConnection;168;0;147;1
WireConnection;127;0;152;0
WireConnection;127;1;151;0
WireConnection;127;2;148;0
WireConnection;129;0;127;0
WireConnection;129;1;144;0
WireConnection;129;2;137;0
WireConnection;128;1;127;0
WireConnection;128;0;129;0
WireConnection;145;0;128;0
WireConnection;98;0;100;0
WireConnection;98;1;99;0
WireConnection;101;0;98;0
WireConnection;108;0;181;0
WireConnection;108;1;109;0
WireConnection;107;0;183;0
WireConnection;107;1;110;0
WireConnection;112;0;185;0
WireConnection;112;1;111;0
WireConnection;183;0;182;0
WireConnection;182;0;106;2
WireConnection;184;0;106;3
WireConnection;185;0;184;0
WireConnection;106;0;186;0
WireConnection;105;0;189;0
WireConnection;105;1;187;0
WireConnection;189;0;186;0
WireConnection;181;0;180;0
WireConnection;180;0;106;1
WireConnection;113;0;108;0
WireConnection;113;1;107;0
WireConnection;113;2;112;0
WireConnection;116;0;113;0
WireConnection;116;1;452;0
WireConnection;119;0;105;0
WireConnection;119;1;116;0
WireConnection;119;2;115;0
WireConnection;452;0;102;5
WireConnection;115;0;114;0
WireConnection;456;0;460;0
WireConnection;456;1;458;0
WireConnection;459;0;457;1
WireConnection;460;0;459;0
WireConnection;461;0;463;0
WireConnection;461;1;462;0
WireConnection;463;0;464;0
WireConnection;464;0;457;2
WireConnection;465;0;457;3
WireConnection;466;0;465;0
WireConnection;454;0;456;0
WireConnection;454;1;461;0
WireConnection;454;2;466;0
WireConnection;118;0;119;0
WireConnection;627;0;626;0
WireConnection;626;20;622;0
WireConnection;626;4;623;0
WireConnection;626;7;624;0
WireConnection;626;23;625;0
WireConnection;434;0;438;0
WireConnection;434;1;437;0
WireConnection;438;0;430;0
WireConnection;632;0;629;2
WireConnection;632;1;631;0
WireConnection;633;0;632;0
WireConnection;447;0;434;0
WireConnection;737;0;735;0
WireConnection;737;1;738;0
WireConnection;680;0;724;0
WireConnection;763;0;756;0
WireConnection;684;1;683;0
WireConnection;776;0;775;1
WireConnection;773;0;772;4
WireConnection;774;0;772;1
WireConnection;365;1;347;3
WireConnection;365;0;346;3
WireConnection;366;5;365;0
WireConnection;366;12;350;0
WireConnection;366;17;352;0
WireConnection;366;18;351;0
WireConnection;363;0;369;0
WireConnection;363;1;354;0
WireConnection;364;1;356;0
WireConnection;364;0;363;0
WireConnection;367;0;366;14
WireConnection;972;0;942;0
WireConnection;455;0;454;0
WireConnection;468;0;453;0
WireConnection;468;1;455;0
WireConnection;467;0;468;0
WireConnection;724;1;679;0
WireConnection;724;0;685;0
WireConnection;717;0;988;0
WireConnection;717;1;716;0
WireConnection;994;0;990;0
WireConnection;994;1;995;0
WireConnection;0;0;197;0
WireConnection;0;1;197;0
WireConnection;0;2;196;0
WireConnection;0;6;194;0
ASEEND*/
//CHKSM=DE67D7472193D2A2738035DDCDA30751E4CE2848