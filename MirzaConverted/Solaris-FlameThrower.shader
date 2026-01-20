// Made with Amplify Shader Editor v1.9.9.5
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Solaris-FlameThrower"
{
	Properties
	{
		[HideInInspector][Tooltip(Allow lighting to affect the surface, from a single directional light and any number of additional lights.)] _StartFoldoutLighting( "Start Foldout Lighting", Float ) = 0
		[HideInInspector] _EndFoldoutLighting( "End Foldout Lighting", Float ) = 0
		[HideInInspector] _StartFoldoutBaseUVs( "Start Foldout Base UVs", Float ) = 0
		[Header(Base UVs)][Space(5)][Toggle( _SWAPUVXY_ON )] _SwapUVXY( "Swap UV XY", Float ) = 0
		[Toggle( _WORLDSPACEUVS_ON )] _WorldSpaceUVs( "World Space UVs", Float ) = 0
		[Toggle( _OBJECTSPACEUVS_ON )] _ObjectSpaceUVs( "Object Space UVs", Float ) = 0
		[HideInInspector] _EndFoldoutBaseUVs( "End Foldout Base UVs", Float ) = 0
		[HideInInspector] _StartFoldoutParticleSettings( "Start Foldout Particle Settings", Float ) = 0
		[Header(Particle Settings)][Space(5)] _ParticleRandomization( "Particle Randomization", Range( 0, 1 ) ) = 1
		_ParticleSubtractNoiseoverLifetime( "Particle Subtract Noise over Lifetime", Range( 0, 1 ) ) = 0
		[HideInInspector] _EndFoldoutParticleSettings( "End Foldout Particle Settings", Float ) = 0
		[HideInInspector] _StartFoldoutColour( "Start Foldout Colour", Float ) = 0
		[HDR][Header(Colour)][Space(5)] _ColourA( "Colour A", Color ) = ( 1, 0.1254902, 0, 1 )
		[HDR] _ColourB( "Colour B", Color ) = ( 1, 0.02745098, 0, 1 )
		_ColourPower( "Colour Power", Float ) = 1
		_ColourHueShift( "Colour Hue Shift", Range( -1, 1 ) ) = 0
		_ColourSaturationShift( "Colour Saturation Shift", Range( -1, 1 ) ) = 0
		_ColourValueMultiplier( "Colour Value Multiplier", Float ) = 5
		_Alpha( "Alpha", Range( 0, 1 ) ) = 1
		_PulseSpeed( "Pulse Speed", Range( 0, 2 ) ) = 0
		[Toggle( _SWAPUVXY3_ON )] _SwapUVXY3( "Swap UV XY", Float ) = 0
		[HideInInspector] _EndFoldoutColour( "End Foldout Colour", Float ) = 0
		[HideInInspector] _StartFoldoutVerticalColour( "Start Foldout Vertical Colour", Float ) = 0
		[Header(Vertical Colour)][Space(5)][Toggle( _VERTICALCOLOUR_ON )] _VerticalColour( "Vertical Colour", Float ) = 0
		[HDR] _VerticalColourA( "Vertical Colour A", Color ) = ( 0, 0.5019608, 1, 1 )
		[HDR] _VerticalColourB( "Vertical Colour B", Color ) = ( 0, 0, 1, 1 )
		_VerticalColourHueShift( "Vertical Colour Hue Shift", Range( -1, 1 ) ) = 0
		_VerticalColourSaturationShift( "Vertical Colour Saturation Shift", Range( -1, 1 ) ) = 0
		_VerticalColourValueMultiplier( "Vertical Colour Value Multiplier", Float ) = 5
		[Header(Vertical Colour Mask)][Space(5)] _VerticalColourMaskPower( "Vertical Colour Mask Power", Float ) = 1
		_VerticalColourMaskRemapMin( "Vertical Colour Mask Remap Min", Range( 0, 1 ) ) = 0.5
		_VerticalColourMaskRemapMax( "Vertical Colour Mask Remap Max", Range( 0, 1 ) ) = 0.1
		[HideInInspector] _EndFoldoutVerticalColour( "End Foldout Vertical Colour", Float ) = 0
		[HideInInspector] _StartFoldoutNoise( "Start Foldout Noise", Float ) = 0
		[Header(Noise)][Space(5)] _Noise1( "Noise", Range( 0, 1 ) ) = 1
		_NoiseScale1( "Noise Scale", Float ) = 2
		_NoiseTiling1( "Noise Tiling", Vector ) = ( 1.5, 1, 1, 0 )
		_NoiseAnimation( "Noise Animation", Vector ) = ( 0, 4, 1, 0 )
		_NoiseParticleAnimation( "Noise Particle Animation", Vector ) = ( 0, 0, 0, 0 )
		_NoiseOffset( "Noise Offset", Vector ) = ( 0, 0, 0, 0 )
		[IntRange] _NoiseOctaves( "Noise Octaves", Range( 1, 8 ) ) = 1
		_NoiseDilation1( "Noise Dilation", Range( 0, 0.1 ) ) = 0.004
		[Toggle( _NOISEDILATIONENABLED_ON )] _NoiseDilationEnabled( "Noise Dilation Enabled", Float ) = 0
		_NoisePower1( "Noise Power", Float ) = 0.5
		[Toggle( _WORLDSPACEUVS2_ON )] _WorldSpaceUVs2( "World Space UVs", Float ) = 0
		_NoiseRemapMin( "Noise Remap Min", Range( 0, 1 ) ) = 0
		[Toggle( _SWAPUVXY4_ON )] _SwapUVXY4( "Swap UV XY", Float ) = 0
		_NoiseRemapMax( "Noise Remap Max", Range( 0, 1 ) ) = 1
		[Space(5)] _NoiseParallaxOffset( "Noise Parallax Offset", Float ) = 0
		[Space(5)] _NoiseXZTwist( "Noise XZ Twist", Range( -360, 360 ) ) = 0
		[Toggle( _NOISEXZTWISTENABLED_ON )] _NoiseXZTwistEnabled( "Noise XZ Twist Enabled", Float ) = 0
		[Space(5)] _NoiseUVYPreOffset( "Noise UV Y Pre-Offset", Float ) = 0
		_NoiseUVYPreScale( "Noise UV Y Pre-Scale", Float ) = 1
		_NoiseUVYPrePower( "Noise UV Y Pre-Power", Float ) = 1
		[HideInInspector] _EndFoldoutNoise( "End Foldout Noise", Float ) = 0
		[HideInInspector] _StartFoldoutNoiseDistortion( "Start Foldout Noise Distortion", Float ) = 0
		[Header(Noise Distortion)][Space(5)] _NoiseDistortion( "Noise Distortion", Range( 0, 1 ) ) = 0.05
		[Toggle( _NOISEDISTORTIONENABLED_ON )] _NoiseDistortionEnabled( "Noise Distortion Enabled", Float ) = 0
		_NoiseDistortionScale( "Noise Distortion Scale", Float ) = 1
		_NoiseDistortionTiling( "Noise Distortion Tiling", Vector ) = ( 1.5, 1, 1, 0 )
		_NoiseDistortionAnimation( "Noise Distortion Animation", Vector ) = ( 0, 1, 0, 0 )
		_NoiseDistortionParticleAnimation( "Noise Distortion Particle Animation", Vector ) = ( 0, 0, 0, 0 )
		_NoiseDistortionOffset( "Noise Distortion Offset", Vector ) = ( 0, 0, 0, 0 )
		[IntRange] _NoiseDistortionOctaves( "Noise Distortion Octaves", Range( 1, 8 ) ) = 1
		_NoiseDistortionDilation( "Noise Distortion Dilation", Range( 0, 0.1 ) ) = 0.004
		[Toggle( _NOISEDISTORTIONDILATIONENABLED_ON )] _NoiseDistortionDilationEnabled( "Noise Distortion Dilation Enabled", Float ) = 0
		_NoiseDistortionPower( "Noise Distortion Power", Float ) = 1
		[HideInInspector] _EndFoldoutNoiseDistortion( "End Foldout Noise Distortion", Float ) = 0
		[HideInInspector] _StartFoldoutRadialMask( "Start Foldout Radial Mask", Float ) = 0
		[Header(Radial Mask)][Space(5)][Toggle( _RADIALMASK_ON )] _RadialMask( "Radial Mask", Float ) = 1
		[Toggle( _RADIALMASKSUBTRACTIVE_ON )] _RadialMaskSubtractive( "Radial Mask Subtractive", Float ) = 1
		[Space(10)] _RadialMaskRadius( "Radial Mask Radius", Range( 0, 1 ) ) = 1
		_RadialMaskRadiusOverParticleLifetime( "Radial Mask Radius over Particle Lifetime", Range( 0, 1 ) ) = 0
		_RadialMaskFeather( "Radial Mask Feather", Range( 0, 2 ) ) = 1
		_RadialMaskPower( "Radial Mask Power", Float ) = 1
		_RadialMaskTiling( "Radial Mask Tiling", Vector ) = ( 1.5, 1, 0, 0 )
		_RadialMaskOffset( "Radial Mask Offset", Vector ) = ( 0, 0, 0, 0 )
		[HideInInspector] _EndFoldoutRadialMask( "End Foldout Radial Mask", Float ) = 0
		[HideInInspector] _StartFoldoutRadialMaskDistortion( "Start Foldout Radial Mask Distortion", Float ) = 0
		[Header(Radial Mask Distortion)][Space(5)] _RadialMaskDistortion( "Radial Mask Distortion", Range( 0, 1 ) ) = 0.05
		[Toggle( _RADIALMASKDISTORTIONENABLED_ON )] _RadialMaskDistortionEnabled( "Radial Mask Distortion Enabled", Float ) = 0
		_RadialMaskDistortionScale( "Radial Mask Distortion Scale", Float ) = 2
		_RadialMaskDistortionTiling( "Radial Mask Distortion Tiling", Vector ) = ( 1.5, 1, 1, 0 )
		_RadialMaskDistortionAnimation( "Radial Mask Distortion Animation", Vector ) = ( 0, 2, 0, 0 )
		_RadialMaskDistortionParticleAnimation( "Radial Mask Distortion Particle Animation", Vector ) = ( 0, 0, 0, 0 )
		_RadialMaskDistortionOffset( "Radial Mask Distortion Offset", Vector ) = ( 0, 0, 0, 0 )
		[IntRange] _RadialMaskDistortionOctaves( "Radial Mask Distortion Octaves", Range( 1, 8 ) ) = 1
		_RadialMaskDistortionDilation( "Radial Mask Distortion Dilation", Range( 0, 0.1 ) ) = 0.004
		[Toggle( _RADIALMASKDISTORTIONDILATIONENABLED_ON )] _RadialMaskDistortionDilationEnabled( "Radial Mask Distortion Dilation Enabled", Float ) = 0
		_RadialMaskDistortionPower( "Radial Mask Distortion Power", Float ) = 1
		[HideInInspector] _EndFoldoutRadialMaskDistortion( "End Foldout Radial Mask Distortion", Float ) = 0
		[HideInInspector] _StartFoldoutVerticalMasks( "Start Foldout Vertical Masks", Float ) = 0
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
		[HideInInspector] _EndFoldoutVerticalMasks( "End Foldout Vertical Masks", Float ) = 0
		[HideInInspector] _StartFoldoutSpherizeNoise( "Start Foldout Spherize Noise", Float ) = 0
		[Header(Spherize Noise)][Space(5)][Toggle( _SPHERIZENOISE_ON )] _SpherizeNoise( "Spherize Noise", Float ) = 0
		_SpherizeNoiseRadius( "Spherize Noise Radius", Float ) = 0.5
		_SpherizeNoiseStrength( "Spherize Noise Strength", Float ) = 1
		_SpherizeNoiseOffset( "Spherize Noise Offset", Vector ) = ( 0, 0, 0, 0 )
		[HideInInspector] _EndFoldoutSpherizeNoise( "End Foldout Spherize Noise", Float ) = 0
		[HideInInspector] _StartFoldoutFresnelMask( "Start Foldout Fresnel Mask", Float ) = 0
		[Header(Fresnel Mask)][Space(5)] _FresnelMask( "Fresnel Mask", Range( 0, 1 ) ) = 0
		_FresnelMaskPower( "Fresnel Mask Power", Float ) = 2
		_FresnelMaskRemapMin( "Fresnel Mask Remap Min", Range( 0, 1 ) ) = 0
		_FresnelMaskRemapMax( "Fresnel Mask Remap Max", Range( 0, 1 ) ) = 1
		[HideInInspector] _EndFoldoutFresnelMask( "End Foldout Fresnel Mask", Float ) = 0
		[HideInInspector] _StartFoldoutDepthFade( "Start Foldout Depth Fade", Float ) = 0
		[Header(Depth Fade)][Space(5)] _DepthFade( "Depth Fade", Float ) = 0
		_DepthFadePower( "Depth Fade Power", Float ) = 1
		[Toggle( _INVERTDEPTHFADE_ON )] _InvertDepthFade( "Invert Depth Fade", Float ) = 0
		[Space(5)] _SubtractiveDepthFade( "Subtractive Depth Fade", Float ) = 0
		_SubtractiveDepthFadePower( "Subtractive Depth Fade Power", Float ) = 1
		[Header(Camera Depth Fade)][Space(5)] _CameraDepthFadeLength( "Camera Depth Fade Length", Float ) = 0
		_CameraDepthFadeOffset( "Camera Depth Fade Offset", Float ) = 0
		_CameraDepthFadePower( "Camera Depth Fade Power", Float ) = 1
		[HideInInspector] _EndFoldoutDepthFade( "End Foldout Depth Fade", Float ) = 0
		[HideInInspector] _StartFoldoutIntersectionHighlight( "Start Foldout Intersection Highlight", Float ) = 0
		[Header(Intersection Highlight)][Space(5)] _IntersectionHighlight( "Intersection Highlight", Float ) = 0
		_IntersectionHighlightPower( "Intersection Highlight Power", Float ) = 1
		_IntersectionHighlightRemapMin( "Intersection Highlight Remap Min", Range( 0, 1 ) ) = 0
		_IntersectionHighlightRemapMax( "Intersection Highlight Remap Max", Range( 0, 1 ) ) = 1
		[Header(Intersection Highlight Colour)][Space(5)] _IntersectionHighlightColour( "Intersection Highlight Colour", Color ) = ( 1, 1, 1, 1 )
		_IntersectionHighlightColourHueShift( "Intersection Highlight Colour Hue Shift", Range( -1, 1 ) ) = 0
		_IntersectionHighlightColourSaturationShift( "Intersection Highlight Colour Saturation Shift", Range( -1, 1 ) ) = 0
		_IntersectionHighlightColourValueMultiplier( "Intersection Highlight Colour Value Multiplier", Float ) = 5
		[HideInInspector] _EndFoldoutIntersectionHighlight( "End Foldout Intersection Highlight", Float ) = 0
		[HideInInspector] _StartFoldoutVertexUVOffset( "Start Foldout Vertex UV Offset", Float ) = 0
		[Header(Vertex UV Offset)][Space(5)] _VertexUVOffsetTop( "Vertex UV Offset Top", Range( -1, 1 ) ) = 0
		_VertexUVOffsetTopPower( "Vertex UV Offset Top Power", Float ) = 1
		[Space(5)] _VertexUVOffsetBottom( "Vertex UV Offset Bottom", Range( -1, 1 ) ) = 0
		_VertexUVOffsetBottomPower( "Vertex UV Offset Bottom Power", Float ) = 1
		[HideInInspector] _EndFoldoutVertexUVOffset( "End Foldout Vertex UV Offset", Float ) = 0
		[HideInInspector] _StartFoldoutVertexNormalOffset( "Start Foldout Vertex Normal Offset", Float ) = 0
		[Header(Vertex Normal Offset)][Space(5)] _VertexNormalOffset( "Vertex Normal Offset", Float ) = 0
		[Space(5)] _VertexNormalOffsetTop( "Vertex Normal Offset Top", Float ) = 0
		_VertexNormalOffsetTopPower( "Vertex Normal Offset Top Power", Float ) = 1
		[Space(5)] _VertexNormalOffsetBottom( "Vertex Normal Offset Bottom", Float ) = 0
		_VertexNormalOffsetBottomPower( "Vertex Normal Offset Bottom Power", Float ) = 1
		[HideInInspector] _EndFoldoutVertexNormalOffset( "End Foldout Vertex Normal Offset", Float ) = 0
		[Header(Vertex Twist)][Space(5)] _VertexTwist( "Vertex Twist", Float ) = 0
		[HideInInspector] _StartFoldoutVertexWave( "Start Foldout Vertex Wave", Float ) = 0
		[Header(Vertex Wave)][Space(5)] _VertexWave( "Vertex Wave", Float ) = 0.1
		[Toggle( _VERTEXWAVEENABLED_ON )] _VertexWaveEnabled( "Vertex Wave Enabled", Float ) = 0
		_VertexWaveScale( "Vertex Wave Scale", Float ) = 2
		_VertexWaveAnimation( "Vertex Wave Animation", Float ) = 4
		_VertexWaveOffset( "Vertex Wave Offset", Range( -1, 1 ) ) = 0
		[HideInInspector] _EndFoldoutVertexWave( "End Foldout Vertex Wave", Float ) = 0
		[HideInInspector] _StartFoldoutVertexNoise( "Start Foldout Vertex Noise", Float ) = 0
		[Header(Vertex Noise)][Space(5)] _VertexNoise( "Vertex Noise", Float ) = 0.02
		[Toggle( _VERTEXNOISEENABLED_ON )] _VertexNoiseEnabled( "Vertex Noise Enabled", Float ) = 0
		[Space(5)] _VertexNoiseScale( "Vertex Noise Scale", Float ) = 2
		_VertexNoiseTiling( "Vertex Noise Tiling", Vector ) = ( 1, 1, 1, 0 )
		_VertexNoiseAnimation( "Vertex Noise Animation", Vector ) = ( 0, 2, 0, 0 )
		_VertexNoiseParticleAnimation( "Vertex Noise Particle Animation", Vector ) = ( 0, 0, 0, 0 )
		_VertexNoiseOffset( "Vertex Noise Offset", Vector ) = ( 0, 0, 0, 0 )
		[IntRange] _VertexNoiseOctaves( "Vertex Noise Octaves", Range( 1, 4 ) ) = 1
		[Space(5)] _VertexNoiseDilation( "Vertex Noise Dilation", Range( -0.2, 0.2 ) ) = 0
		[Toggle( _VERTEXNOISEDILATIONENABLED_ON )] _VertexNoiseDilationEnabled( "Vertex Noise Dilation Enabled", Float ) = 0
		[Space(5)] _VertexNoiseTwist( "Vertex Noise Twist", Range( -180, 180 ) ) = 0
		[HideInInspector] _EndFoldoutVertexNoise( "End Foldout Vertex Noise", Float ) = 0
		[HideInInspector] _StartFoldoutVertexWaveNoiseVerticalMask( "Start Foldout Vertex Wave-Noise Vertical Mask", Float ) = 0
		[Header(Vertex Wave Noise Vertical Mask)][Space(5)] _VertexWaveNoiseVerticalMaskPower( "Vertex Wave-Noise Vertical Mask Power", Float ) = 1
		_VertexWaveNoiseVerticalMaskRemapMin( "Vertex Wave-Noise Vertical Mask Remap Min", Range( 0, 1 ) ) = 0
		_VertexWaveNoiseVerticalMaskRemapMax( "Vertex Wave-Noise Vertical Mask Remap Max", Range( 0, 1 ) ) = 1
		[HideInInspector] _EndFoldoutVertexWaveNoiseVerticalMask( "End Foldout Vertex Wave-Noise Vertical Mask", Float ) = 0
		[HideInInspector] _StartFoldoutVertexOffsetoverY( "Start Foldout Vertex Offset over Y", Float ) = 0
		[Header(Vertex Offset over Y)][Space(5)] _VertexOffsetOverY1( "Vertex Offset over Y 1", Vector ) = ( 0, 0, 0, 0 )
		_VertexOffsetOverY1Power( "Vertex Offset over Y 1 Power", Float ) = 2
		[Space(5)] _VertexOffsetOverY2( "Vertex Offset over Y 2", Vector ) = ( 0, 0, 0, 0 )
		_VertexOffsetOverY2Power( "Vertex Offset over Y 2 Power", Float ) = 2
		[Header(Vertex Offset over Circular Y)][Space(5)] _VertexOffsetOverCircularY( "Vertex Offset over Circular Y", Vector ) = ( 0, 0, 0, 0 )
		_VertexOffsetOverCircularYPower( "Vertex Offset over Circular Y Power", Float ) = 1
		[HideInInspector] _EndFoldoutVertexOffsetoverY( "End Foldout Vertex Offset over Y", Float ) = 0
		[Header(Tessellation)][Space(5)] _Tessellation( "Tessellation", Range( 1, 64 ) ) = 1

		[HideInInspector] _RenderQueueType("Render Queue Type", Float) = 1
		//[HideInInspector][ToggleUI] _AddPrecomputedVelocity("Add Precomputed Velocity", Float) = 1
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
		[HideInInspector][ToggleUI] _ZWrite("ZWrite", Float) = 0
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

		_TessPhongStrength( "Phong Tess Strength", Range( 0, 1 ) ) = 0.5
		_TessValue( "Max Tessellation", Range( 1, 32 ) ) = 16
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
		#pragma target 3.5
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

			Blend 0 [_SrcBlend] [_DstBlend], [_AlphaSrcBlend] [_AlphaDstBlend]
			Blend 1 Off
			Blend 2 Off
			Blend 3 Off
			Blend 4 One OneMinusSrcAlpha

			Cull [_CullModeForward]
			ZTest LEqual
			ZWrite Off

			ColorMask [_ColorMaskTransparentVel] 1

			


			HLSLPROGRAM

			#define ASE_PHONG_TESSELLATION
			#define _CONSERVATIVE_DEPTH_OFFSET
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define _DEPTHOFFSET_ON
			#define ASE_FIXED_TESSELLATION
			#pragma shader_feature_local_fragment _ENABLE_FOG_ON_TRANSPARENT
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#define ASE_TESSELLATION 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
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
			float4 _NoiseOffset;
			float4 _RadialMaskDistortionAnimation;
			float4 _VertexNoiseAnimation;
			float4 _VertexNoiseParticleAnimation;
			float4 _VertexNoiseOffset;
			float4 _VerticalColourB;
			float4 _NoiseAnimation;
			float4 _NoiseParticleAnimation;
			float4 _RadialMaskDistortionParticleAnimation;
			float4 _VerticalColourA;
			float4 _RadialMaskDistortionOffset;
			float4 _ColourA;
			float4 _IntersectionHighlightColour;
			float4 _NoiseDistortionOffset;
			float4 _ColourB;
			float4 _NoiseDistortionParticleAnimation;
			float4 _NoiseDistortionAnimation;
			float3 _VertexOffsetOverCircularY;
			float3 _NoiseTiling1;
			float3 _VertexOffsetOverY2;
			float3 _VertexOffsetOverY1;
			float3 _RadialMaskDistortionTiling;
			float3 _NoiseDistortionTiling;
			float3 _VertexNoiseTiling;
			float2 _RadialMaskTiling;
			float2 _RadialMaskOffset;
			float2 _SpherizeNoiseOffset;
			float _VerticalColourSaturationShift;
			float _VerticalColourHueShift;
			float _ColourSaturationShift;
			float _ColourValueMultiplier;
			float _StartFoldoutVertexNoise;
			float _ColourPower;
			float _Noise1;
			float _ParticleSubtractNoiseoverLifetime;
			float _VerticalColourValueMultiplier;
			float _NoisePower1;
			float _NoiseDilation1;
			float _NoiseOctaves;
			float _NoiseScale1;
			float _NoiseDistortion;
			float _NoiseDistortionPower;
			float _NoiseDistortionDilation;
			float _NoiseDistortionOctaves;
			float _ColourHueShift;
			float _VerticalColourMaskRemapMin;
			float _IntersectionHighlightColourSaturationShift;
			float _VerticalColourMaskPower;
			float _VerticalMask1Power;
			float _VerticalMask2RemapMin;
			float _VerticalMask2RemapMax;
			float _VerticalMask2ObjectSpaceOffset;
			float _VerticalMask2ObjectSpaceScale;
			float _VerticalMask2Power;
			float _FresnelMaskRemapMin;
			float _VerticalMask1ObjectSpaceScale;
			float _FresnelMaskRemapMax;
			float _FresnelMask;
			float _DepthFade;
			float _DepthFadePower;
			float _SubtractiveDepthFade;
			float _SubtractiveDepthFadePower;
			float _CameraDepthFadeLength;
			float _CameraDepthFadeOffset;
			float _FresnelMaskPower;
			float _VerticalColourMaskRemapMax;
			float _VerticalMask1ObjectSpaceOffset;
			float _VerticalMask1RemapMax;
			float _PulseSpeed;
			float _IntersectionHighlightColourHueShift;
			float _IntersectionHighlightColourValueMultiplier;
			float _IntersectionHighlightRemapMin;
			float _IntersectionHighlightRemapMax;
			float _IntersectionHighlight;
			float _IntersectionHighlightPower;
			float _VerticalMask1RemapMin;
			float _RadialMaskRadius;
			float _RadialMaskFeather;
			float _RadialMaskDistortionScale;
			float _RadialMaskDistortionOctaves;
			float _RadialMaskDistortionDilation;
			float _RadialMaskDistortionPower;
			float _RadialMaskDistortion;
			float _RadialMaskPower;
			float _RadialMaskRadiusOverParticleLifetime;
			float _NoiseDistortionScale;
			float _NoiseXZTwist;
			float _NoiseUVYPrePower;
			float _EndFoldoutRadialMask;
			float _StartFoldoutRadialMaskDistortion;
			float _EndFoldoutRadialMaskDistortion;
			float _StartFoldoutVerticalMasks;
			float _EndFoldoutVerticalMasks;
			float _StartFoldoutSpherizeNoise;
			float _EndFoldoutSpherizeNoise;
			float _StartFoldoutFresnelMask;
			float _EndFoldoutFresnelMask;
			float _StartFoldoutDepthFade;
			float _EndFoldoutDepthFade;
			float _StartFoldoutIntersectionHighlight;
			float _EndFoldoutIntersectionHighlight;
			float _StartFoldoutVertexUVOffset;
			float _EndFoldoutVertexOffsetoverY;
			float _StartFoldoutRadialMask;
			float _StartFoldoutParticleSettings;
			float _EndFoldoutNoiseDistortion;
			float _EndFoldoutNoise;
			float _EndFoldoutVertexNoise;
			float _EndFoldoutVertexWaveNoiseVerticalMask;
			float _StartFoldoutVertexOffsetoverY;
			float _StartFoldoutVertexWaveNoiseVerticalMask;
			float _EndFoldoutVertexUVOffset;
			float _StartFoldoutVertexNormalOffset;
			float _EndFoldoutVertexNormalOffset;
			float _StartFoldoutVertexWave;
			float _EndFoldoutVertexWave;
			float _StartFoldoutLighting;
			float _EndFoldoutBaseUVs;
			float _StartFoldoutColour;
			float _EndFoldoutColour;
			float _StartFoldoutVerticalColour;
			float _EndFoldoutVerticalColour;
			float _StartFoldoutNoiseDistortion;
			float _EndFoldoutLighting;
			float _StartFoldoutNoise;
			float _StartFoldoutBaseUVs;
			float _VertexUVOffsetTopPower;
			float _VertexUVOffsetTop;
			float _VertexUVOffsetBottomPower;
			float _VertexUVOffsetBottom;
			float _VertexTwist;
			float _VertexOffsetOverY1Power;
			float _VertexOffsetOverY2Power;
			float _VertexOffsetOverCircularYPower;
			float _NoiseRemapMin;
			float _NoiseRemapMax;
			float _SpherizeNoiseRadius;
			float _SpherizeNoiseStrength;
			float _CameraDepthFadePower;
			float _NoiseUVYPreOffset;
			float _NoiseUVYPreScale;
			float _VertexNoise;
			float _VertexNoiseTwist;
			float _VertexNoiseDilation;
			float _VertexNoiseOctaves;
			float _EndFoldoutParticleSettings;
			float _Tessellation;
			float _VertexNormalOffset;
			float _VertexNormalOffsetTopPower;
			float _VertexNormalOffsetTop;
			float _VertexNormalOffsetBottomPower;
			float _VertexNormalOffsetBottom;
			float _NoiseParallaxOffset;
			float _VertexWaveScale;
			float _VertexWaveOffset;
			float _VertexWave;
			float _VertexWaveNoiseVerticalMaskRemapMin;
			float _VertexWaveNoiseVerticalMaskRemapMax;
			float _VertexWaveNoiseVerticalMaskPower;
			float _VertexNoiseScale;
			float _ParticleRandomization;
			float _VertexWaveAnimation;
			float _Alpha;
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

			#include "VFXToolkit/Shaders/_Includes/Math.cginc"
			#include "VFXToolkit/Shaders/_Includes/Noise.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_TEXTURE_COORDINATES0
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_RELATIVE_WORLD_POS
			#define ASE_NEEDS_TEXTURE_COORDINATES2
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES2
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#define ASE_NEEDS_TEXTURE_COORDINATES1
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES1
			#define ASE_NEEDS_FRAG_SCREEN_POSITION_NORMALIZED
			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local _SWAPUVXY_ON
			#pragma shader_feature_local _VERTEXWAVEENABLED_ON
			#pragma shader_feature_local _VERTEXNOISEENABLED_ON
			#pragma shader_feature_local _VERTEXNOISEDILATIONENABLED_ON
			#pragma shader_feature_local _VERTICALCOLOUR_ON
			#pragma shader_feature_local _NOISEDILATIONENABLED_ON
			#pragma shader_feature_local _NOISEXZTWISTENABLED_ON
			#pragma shader_feature_local _SPHERIZENOISE_ON
			#pragma shader_feature_local _WORLDSPACEUVS_ON
			#pragma shader_feature_local _OBJECTSPACEUVS_ON
			#pragma shader_feature_local _NOISEDISTORTIONENABLED_ON
			#pragma shader_feature_local _NOISEDISTORTIONDILATIONENABLED_ON
			#pragma shader_feature_local _RADIALMASKSUBTRACTIVE_ON
			#pragma shader_feature_local _VERTICALMASK2_ON
			#pragma shader_feature_local _VERTICALMASK1_ON
			#pragma shader_feature_local _RADIALMASK_ON
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
				float4 ase_texcoord2 : TEXCOORD2;
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
				float4 ase_texcoord5 : TEXCOORD5;
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
				float DepthOffset;
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

				float localTwistXZ_float11_g696 = ( 0.0 );
				float2 texCoord383 = inputMesh.ase_texcoord * float2( 1,1 ) + float2( 0,0 );
				#ifdef _SWAPUVXY_ON
				float2 staticSwitch387 = (texCoord383).yx;
				#else
				float2 staticSwitch387 = texCoord383;
				#endif
				float UV_2D_Y397 = (staticSwitch387).y;
				float3 Vertex_Normal_Offset466 = ( ( inputMesh.normalOS * _VertexNormalOffset ) + ( pow( UV_2D_Y397 , _VertexNormalOffsetTopPower ) * inputMesh.normalOS * _VertexNormalOffsetTop ) + ( pow( ( 1.0 - UV_2D_Y397 ) , _VertexNormalOffsetBottomPower ) * inputMesh.normalOS * _VertexNormalOffsetBottom ) );
				float2 UV_2D389 = staticSwitch387;
				float mulTime741 = _TimeParameters.x * _VertexWaveAnimation;
				float temp_output_7_0_g690 = _VertexWaveNoiseVerticalMaskRemapMin;
				float temp_output_23_0_g690 = _VertexWaveNoiseVerticalMaskRemapMax;
				float temp_output_20_0_g690 = UV_2D_Y397;
				float temp_output_4_0_g690 = _VertexWaveNoiseVerticalMaskPower;
				float smoothstepResult22_g690 = smoothstep( temp_output_7_0_g690 , temp_output_23_0_g690 , pow( temp_output_20_0_g690 , temp_output_4_0_g690 ));
				float Vertex_WaveNoise_Vertical_Mask1242 = smoothstepResult22_g690;
				#ifdef _VERTEXWAVEENABLED_ON
				float3 staticSwitch783 = ( ( sin( ( ( UV_2D389.y * TWO_PI * _VertexWaveScale ) - ( mulTime741 + ( _VertexWaveOffset * TWO_PI ) ) ) ) * _VertexWave * Vertex_WaveNoise_Vertical_Mask1242 ) * inputMesh.normalOS );
				#else
				float3 staticSwitch783 = float3( 0,0,0 );
				#endif
				float3 Vertex_Sine787 = staticSwitch783;
				float localTwistXZ_float11_g694 = ( 0.0 );
				float localSimplexNoise_float2_g693 = ( 0.0 );
				#ifdef _SWAPUVXY_ON
				float3 staticSwitch386 = (inputMesh.positionOS).yxz;
				#else
				float3 staticSwitch386 = inputMesh.positionOS;
				#endif
				float3 UV_3D388 = staticSwitch386;
				float3 ase_positionWS = GetAbsolutePositionWS( TransformObjectToWorld( ( inputMesh.positionOS ).xyz ) );
				#ifdef _SWAPUVXY4_ON
				float3 staticSwitch370 = (ase_positionWS).yxz;
				#else
				float3 staticSwitch370 = ase_positionWS;
				#endif
				float3 UV_3D_World371 = staticSwitch370;
				#ifdef _WORLDSPACEUVS2_ON
				float3 staticSwitch732 = UV_3D_World371;
				#else
				float3 staticSwitch732 = UV_3D388;
				#endif
				float Particle_Stable_Random_X414 = ( ( inputMesh.ase_texcoord.w - 0.5 ) * 100.0 * _ParticleRandomization );
				float Particle_Age_Percent413 = inputMesh.ase_texcoord.z;
				float4 Vertex_Noise_Offset724 = ( _VertexNoiseOffset + Particle_Stable_Random_X414 + ( _VertexNoiseParticleAnimation * Particle_Age_Percent413 ) );
				float4 temp_output_10_0_g688 = ( float4( ( staticSwitch732 * _VertexNoiseScale * _VertexNoiseTiling ) , 0.0 ) - ( Vertex_Noise_Offset724 + ( _VertexNoiseAnimation * _TimeParameters.x ) ) );
				float3 temp_output_744_0 = (temp_output_10_0_g688).xyz;
				float3 position2_g693 = temp_output_744_0;
				float temp_output_744_15 = (temp_output_10_0_g688).w;
				float angle2_g693 = temp_output_744_15;
				float octaves2_g693 = _VertexNoiseOctaves;
				float noise2_g693 = 0.0;
				float3 gradient2_g693 = float3( 0,0,0 );
				SimplexNoise_float( position2_g693 , angle2_g693 , octaves2_g693 , noise2_g693 , gradient2_g693 );
				float localSimplexNoise_Caustics_float2_g692 = ( 0.0 );
				float3 position2_g692 = temp_output_744_0;
				float angle2_g692 = temp_output_744_15;
				float octaves2_g692 = _VertexNoiseOctaves;
				float gradientStrength2_g692 = _VertexNoiseDilation;
				float noise2_g692 = 0.0;
				float3 gradient2_g692 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g692 , angle2_g692 , octaves2_g692 , gradientStrength2_g692 , noise2_g692 , gradient2_g692 );
				#ifdef _VERTEXNOISEDILATIONENABLED_ON
				float3 staticSwitch759 = gradient2_g692;
				#else
				float3 staticSwitch759 = gradient2_g693;
				#endif
				float3 temp_output_10_0_g694 = staticSwitch759;
				float3 position11_g694 = temp_output_10_0_g694;
				float temp_output_9_0_g694 = _VertexNoiseTwist;
				float angle11_g694 = radians( temp_output_9_0_g694 );
				float3 output11_g694 = float3( 0,0,0 );
				TwistXZ_float( position11_g694 , angle11_g694 , output11_g694 );
				float3 temp_output_769_0 = output11_g694;
				#ifdef _VERTEXNOISEENABLED_ON
				float3 staticSwitch786 = ( temp_output_769_0 * _VertexNoise * Vertex_WaveNoise_Vertical_Mask1242 );
				#else
				float3 staticSwitch786 = float3( 0,0,0 );
				#endif
				float3 Vertex_Noise790 = staticSwitch786;
				float2 break749 = ( ( UV_2D389 * float2( 2,1 ) ) - float2( 1,0 ) );
				float temp_output_773_0 = ( ( break749.x * pow( break749.y , _VertexUVOffsetTopPower ) ) * ( _VertexUVOffsetTop * 0.5 ) );
				float3 appendResult779 = (float3(temp_output_773_0 , 0.0 , 0.0));
				float3 appendResult778 = (float3(0.0 , temp_output_773_0 , 0.0));
				#ifdef _SWAPUVXY_ON
				float3 staticSwitch784 = appendResult778;
				#else
				float3 staticSwitch784 = appendResult779;
				#endif
				float3 Vertex_Offset_Top788 = staticSwitch784;
				float2 break742 = ( ( UV_2D389 * float2( 2,1 ) ) - float2( 1,0 ) );
				float temp_output_772_0 = ( ( break742.x * pow( ( 1.0 - break742.y ) , _VertexUVOffsetBottomPower ) ) * ( _VertexUVOffsetBottom * 0.5 ) );
				float3 appendResult781 = (float3(temp_output_772_0 , 0.0 , 0.0));
				float3 appendResult780 = (float3(0.0 , temp_output_772_0 , 0.0));
				#ifdef _SWAPUVXY_ON
				float3 staticSwitch785 = appendResult780;
				#else
				float3 staticSwitch785 = appendResult781;
				#endif
				float3 Vertex_Offset_Bottom789 = staticSwitch785;
				float3 temp_output_10_0_g696 = ( ( Vertex_Normal_Offset466 + Vertex_Sine787 + Vertex_Noise790 + Vertex_Offset_Top788 + Vertex_Offset_Bottom789 ) + inputMesh.positionOS );
				float3 position11_g696 = temp_output_10_0_g696;
				float temp_output_9_0_g696 = -_VertexTwist;
				float angle11_g696 = radians( temp_output_9_0_g696 );
				float3 output11_g696 = float3( 0,0,0 );
				TwistXZ_float( position11_g696 , angle11_g696 , output11_g696 );
				float3 worldToObjDir467 = mul( GetWorldToObjectMatrix(), float4( _VertexOffsetOverY1, 0.0 ) ).xyz;
				float3 worldToObjDir469 = mul( GetWorldToObjectMatrix(), float4( _VertexOffsetOverY2, 0.0 ) ).xyz;
				float UV_2D_Circular_Y455 = sin( ( UV_2D_Y397 * PI ) );
				float3 Vertex_Offset_over_Y485 = ( ( worldToObjDir467 * pow( UV_2D_Y397 , _VertexOffsetOverY1Power ) ) + ( worldToObjDir469 * pow( UV_2D_Y397 , _VertexOffsetOverY2Power ) ) + ( _VertexOffsetOverCircularY * pow( UV_2D_Circular_Y455 , _VertexOffsetOverCircularYPower ) ) );
				float3 Vertex_Offset1398 = ( output11_g696 + Vertex_Offset_over_Y485 );
				
				float3 ase_normalWS = TransformObjectToWorldNormal( inputMesh.normalOS );
				o.ase_texcoord5.xyz = ase_normalWS;
				float3 objectToViewPos = TransformWorldToView( TransformObjectToWorld( inputMesh.positionOS ) );
				float eyeDepth = -objectToViewPos.z;
				o.ase_texcoord5.w = eyeDepth;
				
				o.ase_texcoord1 = inputMesh.ase_texcoord;
				o.ase_texcoord2 = float4(inputMesh.positionOS,1);
				o.ase_texcoord3 = inputMesh.ase_texcoord2;
				o.ase_texcoord4 = inputMesh.ase_texcoord1;
				o.ase_color = inputMesh.ase_color;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = Vertex_Offset1398;
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
				float4 ase_texcoord2 : TEXCOORD2;
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
				o.ase_texcoord2 = v.ase_texcoord2;
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
				o.ase_texcoord2 = patch[0].ase_texcoord2 * bary.x + patch[1].ase_texcoord2 * bary.y + patch[2].ase_texcoord2 * bary.z;
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

				float4 temp_output_22_0_g709 = float4( _ColourB.rgb , 1.0 );
				float4 temp_output_22_0_g708 = float4( _ColourA.rgb , 1.0 );
				float temp_output_7_0_g664 = _NoiseRemapMin;
				float temp_output_23_0_g664 = _NoiseRemapMax;
				float localSimplexNoise_float2_g661 = ( 0.0 );
				float2 texCoord383 = packedInput.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				#ifdef _SWAPUVXY_ON
				float2 staticSwitch387 = (texCoord383).yx;
				#else
				float2 staticSwitch387 = texCoord383;
				#endif
				float2 UV_2D389 = staticSwitch387;
				#ifdef _SWAPUVXY_ON
				float3 staticSwitch386 = (packedInput.ase_texcoord2.xyz).yxz;
				#else
				float3 staticSwitch386 = packedInput.ase_texcoord2.xyz;
				#endif
				float3 UV_3D388 = staticSwitch386;
				#ifdef _OBJECTSPACEUVS_ON
				float3 staticSwitch291 = UV_3D388;
				#else
				float3 staticSwitch291 = float3( UV_2D389 ,  0.0 );
				#endif
				float3 ase_positionWS = GetAbsolutePositionWS( PositionRWS );
				#ifdef _SWAPUVXY4_ON
				float3 staticSwitch370 = (ase_positionWS).yxz;
				#else
				float3 staticSwitch370 = ase_positionWS;
				#endif
				float3 UV_3D_World371 = staticSwitch370;
				#ifdef _WORLDSPACEUVS_ON
				float3 staticSwitch293 = UV_3D_World371;
				#else
				float3 staticSwitch293 = staticSwitch291;
				#endif
				float3 appendResult1244 = (float3(packedInput.ase_texcoord3.y , packedInput.ase_texcoord3.z , packedInput.ase_texcoord3.w));
				float3 Particle_Rotation_3D1248 = appendResult1244;
				float3 Noise_Base_UV296 = ( staticSwitch293 + Particle_Rotation_3D1248 );
				float localSpherize_float5_g631 = ( 0.0 );
				float2 uv5_g631 = (Noise_Base_UV296).xy;
				float2 center5_g631 = ( _SpherizeNoiseOffset + float2( 0.5,0.5 ) );
				float radius5_g631 = _SpherizeNoiseRadius;
				float strength5_g631 = _SpherizeNoiseStrength;
				float2 output5_g631 = float2( 0,0 );
				Spherize_float( uv5_g631 , center5_g631 , radius5_g631 , strength5_g631 , output5_g631 );
				float3 appendResult219 = (float3(output5_g631 , (Noise_Base_UV296).z));
				#ifdef _SPHERIZENOISE_ON
				float3 staticSwitch221 = appendResult219;
				#else
				float3 staticSwitch221 = Noise_Base_UV296;
				#endif
				float localTwistXZ_float11_g638 = ( 0.0 );
				float3 temp_output_10_0_g638 = staticSwitch221;
				float3 position11_g638 = temp_output_10_0_g638;
				float temp_output_9_0_g638 = _NoiseXZTwist;
				float angle11_g638 = radians( temp_output_9_0_g638 );
				float3 output11_g638 = float3( 0,0,0 );
				TwistXZ_float( position11_g638 , angle11_g638 , output11_g638 );
				#ifdef _NOISEXZTWISTENABLED_ON
				float3 staticSwitch224 = output11_g638;
				#else
				float3 staticSwitch224 = staticSwitch221;
				#endif
				float3 break225 = staticSwitch224;
				float temp_output_230_0 = ( ( break225.y - _NoiseUVYPreOffset ) * _NoiseUVYPreScale );
				float temp_output_7_0_g643 = abs( temp_output_230_0 );
				float temp_output_232_14 = ( pow( temp_output_7_0_g643 , _NoiseUVYPrePower ) * sign( temp_output_230_0 ) );
				float3 appendResult234 = (float3(break225.x , temp_output_232_14 , break225.z));
				float3 temp_output_363_0 = ( -V * _NoiseParallaxOffset );
				#ifdef _SWAPUVXY3_ON
				float3 staticSwitch365 = (temp_output_363_0).yxz;
				#else
				float3 staticSwitch365 = temp_output_363_0;
				#endif
				float3 Parallax_Offset366 = staticSwitch365;
				float localSimplexNoise_float2_g637 = ( 0.0 );
				float Particle_Stable_Random_X414 = ( ( packedInput.ase_texcoord1.w - 0.5 ) * 100.0 * _ParticleRandomization );
				float Particle_Age_Percent413 = packedInput.ase_texcoord1.z;
				float4 Distortion_Noise_Offset360 = ( _NoiseDistortionOffset + Particle_Stable_Random_X414 + ( _NoiseDistortionParticleAnimation * Particle_Age_Percent413 ) );
				float4 temp_output_10_0_g632 = ( float4( ( ( Noise_Base_UV296 + Parallax_Offset366 ) * _NoiseDistortionScale * _NoiseDistortionTiling ) , 0.0 ) - ( Distortion_Noise_Offset360 + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 temp_output_341_0 = (temp_output_10_0_g632).xyz;
				float3 position2_g637 = temp_output_341_0;
				float temp_output_341_15 = (temp_output_10_0_g632).w;
				float angle2_g637 = temp_output_341_15;
				float octaves2_g637 = _NoiseDistortionOctaves;
				float noise2_g637 = 0.0;
				float3 gradient2_g637 = float3( 0,0,0 );
				SimplexNoise_float( position2_g637 , angle2_g637 , octaves2_g637 , noise2_g637 , gradient2_g637 );
				float localSimplexNoise_Caustics_float2_g636 = ( 0.0 );
				float3 position2_g636 = temp_output_341_0;
				float angle2_g636 = temp_output_341_15;
				float octaves2_g636 = _NoiseDistortionOctaves;
				float gradientStrength2_g636 = _NoiseDistortionDilation;
				float noise2_g636 = 0.0;
				float3 gradient2_g636 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g636 , angle2_g636 , octaves2_g636 , gradientStrength2_g636 , noise2_g636 , gradient2_g636 );
				#ifdef _NOISEDISTORTIONDILATIONENABLED_ON
				float3 staticSwitch346 = gradient2_g636;
				#else
				float3 staticSwitch346 = gradient2_g637;
				#endif
				float3 temp_output_7_0_g641 = abs( staticSwitch346 );
				float3 temp_cast_4 = (_NoiseDistortionPower).xxx;
				#ifdef _NOISEDISTORTIONENABLED_ON
				float3 staticSwitch351 = ( ( pow( temp_output_7_0_g641 , temp_cast_4 ) * sign( staticSwitch346 ) ) * _NoiseDistortion );
				#else
				float3 staticSwitch351 = float3( 0,0,0 );
				#endif
				float3 Noise_Distortion352 = staticSwitch351;
				float3 Noise_UV238 = ( appendResult234 + Parallax_Offset366 + Noise_Distortion352 );
				float4 Noise_Offset210 = ( _NoiseOffset + Particle_Stable_Random_X414 + ( _NoiseParticleAnimation * Particle_Age_Percent413 ) );
				float4 temp_output_10_0_g655 = ( float4( ( Noise_UV238 * _NoiseScale1 * _NoiseTiling1 ) , 0.0 ) - ( Noise_Offset210 + ( _NoiseAnimation * _TimeParameters.x ) ) );
				float3 temp_output_145_0 = (temp_output_10_0_g655).xyz;
				float3 position2_g661 = temp_output_145_0;
				float temp_output_145_15 = (temp_output_10_0_g655).w;
				float angle2_g661 = temp_output_145_15;
				float octaves2_g661 = _NoiseOctaves;
				float noise2_g661 = 0.0;
				float3 gradient2_g661 = float3( 0,0,0 );
				SimplexNoise_float( position2_g661 , angle2_g661 , octaves2_g661 , noise2_g661 , gradient2_g661 );
				float localSimplexNoise_Caustics_float2_g660 = ( 0.0 );
				float3 position2_g660 = temp_output_145_0;
				float angle2_g660 = temp_output_145_15;
				float octaves2_g660 = _NoiseOctaves;
				float gradientStrength2_g660 = _NoiseDilation1;
				float noise2_g660 = 0.0;
				float3 gradient2_g660 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g660 , angle2_g660 , octaves2_g660 , gradientStrength2_g660 , noise2_g660 , gradient2_g660 );
				#ifdef _NOISEDILATIONENABLED_ON
				float staticSwitch148 = noise2_g660;
				#else
				float staticSwitch148 = noise2_g661;
				#endif
				float temp_output_20_0_g664 = staticSwitch148;
				float temp_output_4_0_g664 = _NoisePower1;
				float smoothstepResult22_g664 = smoothstep( temp_output_7_0_g664 , temp_output_23_0_g664 , pow( temp_output_20_0_g664 , temp_output_4_0_g664 ));
				float Particle_Subtract_Noise_over_Lifetime419 = ( packedInput.ase_texcoord4.y * _ParticleSubtractNoiseoverLifetime );
				float temp_output_154_0 = ( smoothstepResult22_g664 - Particle_Subtract_Noise_over_Lifetime419 );
				float lerpResult157 = lerp( 1.0 , temp_output_154_0 , _Noise1);
				float Noise158 = lerpResult157;
				float Colour_Power202 = pow( Noise158 , _ColourPower );
				float3 lerpResult168 = lerp( ( (temp_output_22_0_g709).rgb * (temp_output_22_0_g709).a ) , ( (temp_output_22_0_g708).rgb * (temp_output_22_0_g708).a ) , Colour_Power202);
				float3 hsvTorgb191 = RGBToHSV( lerpResult168 );
				float3 hsvTorgb172 = HSVToRGB( float3(( hsvTorgb191.x + _ColourHueShift ),( hsvTorgb191.y + _ColourSaturationShift ),( hsvTorgb191.z * _ColourValueMultiplier )) );
				float4 temp_output_22_0_g706 = float4( _VerticalColourB.rgb , 1.0 );
				float4 temp_output_22_0_g707 = float4( _VerticalColourA.rgb , 1.0 );
				float3 lerpResult177 = lerp( ( (temp_output_22_0_g706).rgb * (temp_output_22_0_g706).a ) , ( (temp_output_22_0_g707).rgb * (temp_output_22_0_g707).a ) , Colour_Power202);
				float3 hsvTorgb188 = RGBToHSV( lerpResult177 );
				float3 hsvTorgb189 = HSVToRGB( float3(( hsvTorgb188.x + _VerticalColourHueShift ),( hsvTorgb188.y + _VerticalColourSaturationShift ),( hsvTorgb188.z * _VerticalColourValueMultiplier )) );
				float temp_output_7_0_g710 = _VerticalColourMaskRemapMin;
				float temp_output_23_0_g710 = _VerticalColourMaskRemapMax;
				float UV_2D_Y397 = (staticSwitch387).y;
				float temp_output_20_0_g710 = UV_2D_Y397;
				float temp_output_4_0_g710 = _VerticalColourMaskPower;
				float smoothstepResult22_g710 = smoothstep( temp_output_7_0_g710 , temp_output_23_0_g710 , pow( temp_output_20_0_g710 , temp_output_4_0_g710 ));
				float Vertical_Colour_Mask432 = smoothstepResult22_g710;
				float3 lerpResult174 = lerp( hsvTorgb172 , hsvTorgb189 , Vertical_Colour_Mask432);
				#ifdef _VERTICALCOLOUR_ON
				float3 staticSwitch173 = lerpResult174;
				#else
				float3 staticSwitch173 = hsvTorgb172;
				#endif
				float3 Colour_Input197 = staticSwitch173;
				float4 Vertex_Colour595 = packedInput.ase_color;
				float3 hsvTorgb602 = RGBToHSV( Colour_Input197 );
				float3 hsvTorgb609 = HSVToRGB( float3(( hsvTorgb602.x + _IntersectionHighlightColourHueShift ),( hsvTorgb602.y + _IntersectionHighlightColourSaturationShift ),( hsvTorgb602.z * _IntersectionHighlightColourValueMultiplier )) );
				float temp_output_7_0_g691 = _IntersectionHighlightRemapMin;
				float temp_output_23_0_g691 = _IntersectionHighlightRemapMax;
				float screenDepth518 = LinearEyeDepth(SampleCameraDepth( ScreenPosNorm.xy ),_ZBufferParams);
				float distanceDepth518 = saturate( abs( ( screenDepth518 - LinearEyeDepth( ScreenPosNorm.z,_ZBufferParams ) ) / ( _IntersectionHighlight ) ) );
				float temp_output_20_0_g691 = ( 1.0 - distanceDepth518 );
				float temp_output_4_0_g691 = _IntersectionHighlightPower;
				float smoothstepResult22_g691 = smoothstep( temp_output_7_0_g691 , temp_output_23_0_g691 , pow( temp_output_20_0_g691 , temp_output_4_0_g691 ));
				float Intersection_Highlight527 = smoothstepResult22_g691;
				float Intersection_Highlight_Alpha593 = _IntersectionHighlightColour.a;
				float4 lerpResult621 = lerp( ( ( float4( Colour_Input197 , 0.0 ) * Vertex_Colour595 ) + ( sin( ( _TimeParameters.x * _PulseSpeed ) ) * 0.3 ) ) , float4( ( hsvTorgb609 * _IntersectionHighlightColour.rgb ) , 0.0 ) , pow( Intersection_Highlight527 , Intersection_Highlight_Alpha593 ));
				float4 Colour620 = lerpResult621;
				
				float Particle_Mask_Radius_over_Lifetime416 = packedInput.ase_texcoord4.x;
				float lerpResult571 = lerp( 1.0 , Particle_Mask_Radius_over_Lifetime416 , _RadialMaskRadiusOverParticleLifetime);
				float temp_output_6_0_g657 = ( 1.0 - ( _RadialMaskRadius * lerpResult571 ) );
				float lerpResult5_g657 = lerp( temp_output_6_0_g657 , 1.0 , _RadialMaskFeather);
				float2 texCoord390 = packedInput.ase_texcoord1.xy * float2( 2,2 ) + float2( -1,-1 );
				#ifdef _SWAPUVXY_ON
				float2 staticSwitch392 = (texCoord390).yx;
				#else
				float2 staticSwitch392 = texCoord390;
				#endif
				float2 UV_2D_Centered393 = staticSwitch392;
				float localSimplexNoise_float2_g634 = ( 0.0 );
				float4 Mask_Distortion_Noise_Offset285 = ( _RadialMaskDistortionOffset + Particle_Stable_Random_X414 + ( _RadialMaskDistortionParticleAnimation * Particle_Age_Percent413 ) );
				float4 temp_output_10_0_g625 = ( float4( ( Noise_Base_UV296 * _RadialMaskDistortionScale * _RadialMaskDistortionTiling ) , 0.0 ) - ( Mask_Distortion_Noise_Offset285 + ( _RadialMaskDistortionAnimation * _TimeParameters.x ) ) );
				float3 temp_output_262_0 = (temp_output_10_0_g625).xyz;
				float3 position2_g634 = temp_output_262_0;
				float temp_output_262_15 = (temp_output_10_0_g625).w;
				float angle2_g634 = temp_output_262_15;
				float octaves2_g634 = _RadialMaskDistortionOctaves;
				float noise2_g634 = 0.0;
				float3 gradient2_g634 = float3( 0,0,0 );
				SimplexNoise_float( position2_g634 , angle2_g634 , octaves2_g634 , noise2_g634 , gradient2_g634 );
				float localSimplexNoise_Caustics_float2_g635 = ( 0.0 );
				float3 position2_g635 = temp_output_262_0;
				float angle2_g635 = temp_output_262_15;
				float octaves2_g635 = _RadialMaskDistortionOctaves;
				float gradientStrength2_g635 = _RadialMaskDistortionDilation;
				float noise2_g635 = 0.0;
				float3 gradient2_g635 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g635 , angle2_g635 , octaves2_g635 , gradientStrength2_g635 , noise2_g635 , gradient2_g635 );
				#ifdef _RADIALMASKDISTORTIONDILATIONENABLED_ON
				float3 staticSwitch267 = gradient2_g635;
				#else
				float3 staticSwitch267 = gradient2_g634;
				#endif
				float3 temp_output_7_0_g640 = abs( staticSwitch267 );
				float3 temp_cast_12 = (_RadialMaskDistortionPower).xxx;
				#ifdef _RADIALMASKDISTORTIONENABLED_ON
				float3 staticSwitch272 = ( ( pow( temp_output_7_0_g640 , temp_cast_12 ) * sign( staticSwitch267 ) ) * _RadialMaskDistortion );
				#else
				float3 staticSwitch272 = float3( 0,0,0 );
				#endif
				float3 Mask_Distortion273 = staticSwitch272;
				float temp_output_7_0_g657 = ( 1.0 - length( ( ( ( UV_2D_Centered393 + (Mask_Distortion273).xy ) - _RadialMaskOffset ) * _RadialMaskTiling ) ) );
				float smoothstepResult4_g657 = smoothstep( temp_output_6_0_g657 , lerpResult5_g657 , temp_output_7_0_g657);
				#ifdef _RADIALMASK_ON
				float staticSwitch582 = ( 1.0 - pow( smoothstepResult4_g657 , _RadialMaskPower ) );
				#else
				float staticSwitch582 = 0.0;
				#endif
				float Radial_Mask583 = staticSwitch582;
				#ifdef _RADIALMASKSUBTRACTIVE_ON
				float staticSwitch644 = Radial_Mask583;
				#else
				float staticSwitch644 = 0.0;
				#endif
				float temp_output_7_0_g662 = _VerticalMask1RemapMax;
				float temp_output_23_0_g662 = _VerticalMask1RemapMin;
				float UV_3D_Y395 = (staticSwitch386).y;
				#ifdef _VERTICALMASKSOBJECTSPACE_ON
				float staticSwitch1257 = ( ( UV_3D_Y395 - _VerticalMask1ObjectSpaceOffset ) / _VerticalMask1ObjectSpaceScale );
				#else
				float staticSwitch1257 = UV_2D_Y397;
				#endif
				float temp_output_20_0_g662 = staticSwitch1257;
				float smoothstepResult25_g662 = smoothstep( temp_output_7_0_g662 , temp_output_23_0_g662 , temp_output_20_0_g662);
				float temp_output_4_0_g662 = _VerticalMask1Power;
				float temp_output_1265_0 = pow( smoothstepResult25_g662 , temp_output_4_0_g662 );
				#ifdef _VERTICALMASK1SUBTRACTIVE_ON
				float staticSwitch1269 = ( 1.0 - temp_output_1265_0 );
				#else
				float staticSwitch1269 = temp_output_1265_0;
				#endif
				float Vertical_Mask_11278 = staticSwitch1269;
				#ifdef _VERTICALMASK1SUBTRACTIVE_ON
				float staticSwitch646 = ( staticSwitch644 + Vertical_Mask_11278 );
				#else
				float staticSwitch646 = staticSwitch644;
				#endif
				#ifdef _VERTICALMASK1_ON
				float staticSwitch648 = staticSwitch646;
				#else
				float staticSwitch648 = staticSwitch644;
				#endif
				float temp_output_7_0_g663 = _VerticalMask2RemapMin;
				float temp_output_23_0_g663 = _VerticalMask2RemapMax;
				#ifdef _VERTICALMASKSOBJECTSPACE_ON
				float staticSwitch1273 = ( ( UV_3D_Y395 - _VerticalMask2ObjectSpaceOffset ) / _VerticalMask2ObjectSpaceScale );
				#else
				float staticSwitch1273 = UV_2D_Y397;
				#endif
				float temp_output_20_0_g663 = staticSwitch1273;
				float smoothstepResult25_g663 = smoothstep( temp_output_7_0_g663 , temp_output_23_0_g663 , temp_output_20_0_g663);
				float temp_output_4_0_g663 = _VerticalMask2Power;
				float temp_output_1274_0 = pow( smoothstepResult25_g663 , temp_output_4_0_g663 );
				#ifdef _VERTICALMASK2SUBTRACTIVE_ON
				float staticSwitch1276 = ( 1.0 - temp_output_1274_0 );
				#else
				float staticSwitch1276 = temp_output_1274_0;
				#endif
				float Vertical_Mask_21277 = staticSwitch1276;
				#ifdef _VERTICALMASK2SUBTRACTIVE_ON
				float staticSwitch650 = ( staticSwitch648 + Vertical_Mask_21277 );
				#else
				float staticSwitch650 = staticSwitch648;
				#endif
				#ifdef _VERTICALMASK2_ON
				float staticSwitch655 = staticSwitch650;
				#else
				float staticSwitch655 = staticSwitch648;
				#endif
				float3 ase_normalWS = packedInput.ase_texcoord5.xyz;
				float fresnelNdotV585 = dot( ase_normalWS, V );
				float fresnelNode585 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV585, _FresnelMaskPower ) );
				float smoothstepResult588 = smoothstep( _FresnelMaskRemapMin , _FresnelMaskRemapMax , fresnelNode585);
				float lerpResult590 = lerp( 1.0 , smoothstepResult588 , _FresnelMask);
				float Fresnel_Mask592 = lerpResult590;
				float temp_output_7_0_g665 = 0.0;
				float temp_output_23_0_g665 = 1.0;
				float screenDepth501 = LinearEyeDepth(SampleCameraDepth( ScreenPosNorm.xy ),_ZBufferParams);
				float distanceDepth501 = saturate( abs( ( screenDepth501 - LinearEyeDepth( ScreenPosNorm.z,_ZBufferParams ) ) / ( _DepthFade ) ) );
				#ifdef _INVERTDEPTHFADE_ON
				float staticSwitch505 = ( 1.0 - distanceDepth501 );
				#else
				float staticSwitch505 = distanceDepth501;
				#endif
				float temp_output_20_0_g665 = staticSwitch505;
				float temp_output_4_0_g665 = _DepthFadePower;
				float smoothstepResult22_g665 = smoothstep( temp_output_7_0_g665 , temp_output_23_0_g665 , pow( temp_output_20_0_g665 , temp_output_4_0_g665 ));
				float temp_output_7_0_g666 = 0.0;
				float temp_output_23_0_g666 = 1.0;
				float screenDepth503 = LinearEyeDepth(SampleCameraDepth( ScreenPosNorm.xy ),_ZBufferParams);
				float distanceDepth503 = saturate( abs( ( screenDepth503 - LinearEyeDepth( ScreenPosNorm.z,_ZBufferParams ) ) / ( _SubtractiveDepthFade ) ) );
				float temp_output_20_0_g666 = ( 1.0 - distanceDepth503 );
				float temp_output_4_0_g666 = _SubtractiveDepthFadePower;
				float smoothstepResult22_g666 = smoothstep( temp_output_7_0_g666 , temp_output_23_0_g666 , pow( temp_output_20_0_g666 , temp_output_4_0_g666 ));
				float Depth_Fade528 = saturate( ( smoothstepResult22_g665 - smoothstepResult22_g666 ) );
				float temp_output_7_0_g667 = 0.0;
				float temp_output_23_0_g667 = 1.0;
				float eyeDepth = packedInput.ase_texcoord5.w;
				float cameraDepthFade511 = (( eyeDepth -_ProjectionParams.y - _CameraDepthFadeOffset ) / _CameraDepthFadeLength);
				float temp_output_20_0_g667 = saturate( cameraDepthFade511 );
				float temp_output_4_0_g667 = _CameraDepthFadePower;
				float smoothstepResult22_g667 = smoothstep( temp_output_7_0_g667 , temp_output_23_0_g667 , pow( temp_output_20_0_g667 , temp_output_4_0_g667 ));
				float Camera_Depth_Fade526 = smoothstepResult22_g667;
				float temp_output_679_0 = saturate( ( ( saturate( ( Noise158 - staticSwitch655 ) ) * Fresnel_Mask592 * (packedInput.ase_color).a * Depth_Fade528 * Camera_Depth_Fade526 * _Alpha ) + ( Intersection_Highlight527 * Intersection_Highlight_Alpha593 ) ) );
				#ifdef _RADIALMASKSUBTRACTIVE_ON
				float staticSwitch683 = temp_output_679_0;
				#else
				float staticSwitch683 = ( temp_output_679_0 * ( 1.0 - Radial_Mask583 ) );
				#endif
				float Alpha697 = staticSwitch683;
				

				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				surfaceDescription.Color = Colour620.rgb;
				surfaceDescription.Emission = Colour_Input197;
				surfaceDescription.Alpha = Alpha697;

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

			#define ASE_PHONG_TESSELLATION
			#define _CONSERVATIVE_DEPTH_OFFSET
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define _DEPTHOFFSET_ON
			#define ASE_FIXED_TESSELLATION
			#pragma shader_feature_local_fragment _ENABLE_FOG_ON_TRANSPARENT
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#define ASE_TESSELLATION 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
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

			#include "VFXToolkit/Shaders/_Includes/Math.cginc"
			#include "VFXToolkit/Shaders/_Includes/Noise.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_TEXTURE_COORDINATES0
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_RELATIVE_WORLD_POS
			#define ASE_NEEDS_FRAG_RELATIVE_WORLD_POS
			#define ASE_NEEDS_TEXTURE_COORDINATES2
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES2
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#define ASE_NEEDS_TEXTURE_COORDINATES1
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES1
			#define ASE_NEEDS_FRAG_SCREEN_POSITION_NORMALIZED
			#pragma shader_feature_local _SWAPUVXY_ON
			#pragma shader_feature_local _VERTEXWAVEENABLED_ON
			#pragma shader_feature_local _VERTEXNOISEENABLED_ON
			#pragma shader_feature_local _VERTEXNOISEDILATIONENABLED_ON
			#pragma shader_feature_local _RADIALMASKSUBTRACTIVE_ON
			#pragma shader_feature_local _NOISEDILATIONENABLED_ON
			#pragma shader_feature_local _NOISEXZTWISTENABLED_ON
			#pragma shader_feature_local _SPHERIZENOISE_ON
			#pragma shader_feature_local _WORLDSPACEUVS_ON
			#pragma shader_feature_local _OBJECTSPACEUVS_ON
			#pragma shader_feature_local _NOISEDISTORTIONENABLED_ON
			#pragma shader_feature_local _NOISEDISTORTIONDILATIONENABLED_ON
			#pragma shader_feature_local _VERTICALMASK2_ON
			#pragma shader_feature_local _VERTICALMASK1_ON
			#pragma shader_feature_local _RADIALMASK_ON
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
				float4 ase_texcoord2 : TEXCOORD2;
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
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START( UnityPerMaterial )
			float4 _NoiseOffset;
			float4 _RadialMaskDistortionAnimation;
			float4 _VertexNoiseAnimation;
			float4 _VertexNoiseParticleAnimation;
			float4 _VertexNoiseOffset;
			float4 _VerticalColourB;
			float4 _NoiseAnimation;
			float4 _NoiseParticleAnimation;
			float4 _RadialMaskDistortionParticleAnimation;
			float4 _VerticalColourA;
			float4 _RadialMaskDistortionOffset;
			float4 _ColourA;
			float4 _IntersectionHighlightColour;
			float4 _NoiseDistortionOffset;
			float4 _ColourB;
			float4 _NoiseDistortionParticleAnimation;
			float4 _NoiseDistortionAnimation;
			float3 _VertexOffsetOverCircularY;
			float3 _NoiseTiling1;
			float3 _VertexOffsetOverY2;
			float3 _VertexOffsetOverY1;
			float3 _RadialMaskDistortionTiling;
			float3 _NoiseDistortionTiling;
			float3 _VertexNoiseTiling;
			float2 _RadialMaskTiling;
			float2 _RadialMaskOffset;
			float2 _SpherizeNoiseOffset;
			float _VerticalColourSaturationShift;
			float _VerticalColourHueShift;
			float _ColourSaturationShift;
			float _ColourValueMultiplier;
			float _StartFoldoutVertexNoise;
			float _ColourPower;
			float _Noise1;
			float _ParticleSubtractNoiseoverLifetime;
			float _VerticalColourValueMultiplier;
			float _NoisePower1;
			float _NoiseDilation1;
			float _NoiseOctaves;
			float _NoiseScale1;
			float _NoiseDistortion;
			float _NoiseDistortionPower;
			float _NoiseDistortionDilation;
			float _NoiseDistortionOctaves;
			float _ColourHueShift;
			float _VerticalColourMaskRemapMin;
			float _IntersectionHighlightColourSaturationShift;
			float _VerticalColourMaskPower;
			float _VerticalMask1Power;
			float _VerticalMask2RemapMin;
			float _VerticalMask2RemapMax;
			float _VerticalMask2ObjectSpaceOffset;
			float _VerticalMask2ObjectSpaceScale;
			float _VerticalMask2Power;
			float _FresnelMaskRemapMin;
			float _VerticalMask1ObjectSpaceScale;
			float _FresnelMaskRemapMax;
			float _FresnelMask;
			float _DepthFade;
			float _DepthFadePower;
			float _SubtractiveDepthFade;
			float _SubtractiveDepthFadePower;
			float _CameraDepthFadeLength;
			float _CameraDepthFadeOffset;
			float _FresnelMaskPower;
			float _VerticalColourMaskRemapMax;
			float _VerticalMask1ObjectSpaceOffset;
			float _VerticalMask1RemapMax;
			float _PulseSpeed;
			float _IntersectionHighlightColourHueShift;
			float _IntersectionHighlightColourValueMultiplier;
			float _IntersectionHighlightRemapMin;
			float _IntersectionHighlightRemapMax;
			float _IntersectionHighlight;
			float _IntersectionHighlightPower;
			float _VerticalMask1RemapMin;
			float _RadialMaskRadius;
			float _RadialMaskFeather;
			float _RadialMaskDistortionScale;
			float _RadialMaskDistortionOctaves;
			float _RadialMaskDistortionDilation;
			float _RadialMaskDistortionPower;
			float _RadialMaskDistortion;
			float _RadialMaskPower;
			float _RadialMaskRadiusOverParticleLifetime;
			float _NoiseDistortionScale;
			float _NoiseXZTwist;
			float _NoiseUVYPrePower;
			float _EndFoldoutRadialMask;
			float _StartFoldoutRadialMaskDistortion;
			float _EndFoldoutRadialMaskDistortion;
			float _StartFoldoutVerticalMasks;
			float _EndFoldoutVerticalMasks;
			float _StartFoldoutSpherizeNoise;
			float _EndFoldoutSpherizeNoise;
			float _StartFoldoutFresnelMask;
			float _EndFoldoutFresnelMask;
			float _StartFoldoutDepthFade;
			float _EndFoldoutDepthFade;
			float _StartFoldoutIntersectionHighlight;
			float _EndFoldoutIntersectionHighlight;
			float _StartFoldoutVertexUVOffset;
			float _EndFoldoutVertexOffsetoverY;
			float _StartFoldoutRadialMask;
			float _StartFoldoutParticleSettings;
			float _EndFoldoutNoiseDistortion;
			float _EndFoldoutNoise;
			float _EndFoldoutVertexNoise;
			float _EndFoldoutVertexWaveNoiseVerticalMask;
			float _StartFoldoutVertexOffsetoverY;
			float _StartFoldoutVertexWaveNoiseVerticalMask;
			float _EndFoldoutVertexUVOffset;
			float _StartFoldoutVertexNormalOffset;
			float _EndFoldoutVertexNormalOffset;
			float _StartFoldoutVertexWave;
			float _EndFoldoutVertexWave;
			float _StartFoldoutLighting;
			float _EndFoldoutBaseUVs;
			float _StartFoldoutColour;
			float _EndFoldoutColour;
			float _StartFoldoutVerticalColour;
			float _EndFoldoutVerticalColour;
			float _StartFoldoutNoiseDistortion;
			float _EndFoldoutLighting;
			float _StartFoldoutNoise;
			float _StartFoldoutBaseUVs;
			float _VertexUVOffsetTopPower;
			float _VertexUVOffsetTop;
			float _VertexUVOffsetBottomPower;
			float _VertexUVOffsetBottom;
			float _VertexTwist;
			float _VertexOffsetOverY1Power;
			float _VertexOffsetOverY2Power;
			float _VertexOffsetOverCircularYPower;
			float _NoiseRemapMin;
			float _NoiseRemapMax;
			float _SpherizeNoiseRadius;
			float _SpherizeNoiseStrength;
			float _CameraDepthFadePower;
			float _NoiseUVYPreOffset;
			float _NoiseUVYPreScale;
			float _VertexNoise;
			float _VertexNoiseTwist;
			float _VertexNoiseDilation;
			float _VertexNoiseOctaves;
			float _EndFoldoutParticleSettings;
			float _Tessellation;
			float _VertexNormalOffset;
			float _VertexNormalOffsetTopPower;
			float _VertexNormalOffsetTop;
			float _VertexNormalOffsetBottomPower;
			float _VertexNormalOffsetBottom;
			float _NoiseParallaxOffset;
			float _VertexWaveScale;
			float _VertexWaveOffset;
			float _VertexWave;
			float _VertexWaveNoiseVerticalMaskRemapMin;
			float _VertexWaveNoiseVerticalMaskRemapMax;
			float _VertexWaveNoiseVerticalMaskPower;
			float _VertexNoiseScale;
			float _ParticleRandomization;
			float _VertexWaveAnimation;
			float _Alpha;
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
				float DepthOffset;
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

				float localTwistXZ_float11_g696 = ( 0.0 );
				float2 texCoord383 = inputMesh.ase_texcoord * float2( 1,1 ) + float2( 0,0 );
				#ifdef _SWAPUVXY_ON
				float2 staticSwitch387 = (texCoord383).yx;
				#else
				float2 staticSwitch387 = texCoord383;
				#endif
				float UV_2D_Y397 = (staticSwitch387).y;
				float3 Vertex_Normal_Offset466 = ( ( inputMesh.normalOS * _VertexNormalOffset ) + ( pow( UV_2D_Y397 , _VertexNormalOffsetTopPower ) * inputMesh.normalOS * _VertexNormalOffsetTop ) + ( pow( ( 1.0 - UV_2D_Y397 ) , _VertexNormalOffsetBottomPower ) * inputMesh.normalOS * _VertexNormalOffsetBottom ) );
				float2 UV_2D389 = staticSwitch387;
				float mulTime741 = _TimeParameters.x * _VertexWaveAnimation;
				float temp_output_7_0_g690 = _VertexWaveNoiseVerticalMaskRemapMin;
				float temp_output_23_0_g690 = _VertexWaveNoiseVerticalMaskRemapMax;
				float temp_output_20_0_g690 = UV_2D_Y397;
				float temp_output_4_0_g690 = _VertexWaveNoiseVerticalMaskPower;
				float smoothstepResult22_g690 = smoothstep( temp_output_7_0_g690 , temp_output_23_0_g690 , pow( temp_output_20_0_g690 , temp_output_4_0_g690 ));
				float Vertex_WaveNoise_Vertical_Mask1242 = smoothstepResult22_g690;
				#ifdef _VERTEXWAVEENABLED_ON
				float3 staticSwitch783 = ( ( sin( ( ( UV_2D389.y * TWO_PI * _VertexWaveScale ) - ( mulTime741 + ( _VertexWaveOffset * TWO_PI ) ) ) ) * _VertexWave * Vertex_WaveNoise_Vertical_Mask1242 ) * inputMesh.normalOS );
				#else
				float3 staticSwitch783 = float3( 0,0,0 );
				#endif
				float3 Vertex_Sine787 = staticSwitch783;
				float localTwistXZ_float11_g694 = ( 0.0 );
				float localSimplexNoise_float2_g693 = ( 0.0 );
				#ifdef _SWAPUVXY_ON
				float3 staticSwitch386 = (inputMesh.positionOS).yxz;
				#else
				float3 staticSwitch386 = inputMesh.positionOS;
				#endif
				float3 UV_3D388 = staticSwitch386;
				float3 ase_positionWS = GetAbsolutePositionWS( TransformObjectToWorld( ( inputMesh.positionOS ).xyz ) );
				#ifdef _SWAPUVXY4_ON
				float3 staticSwitch370 = (ase_positionWS).yxz;
				#else
				float3 staticSwitch370 = ase_positionWS;
				#endif
				float3 UV_3D_World371 = staticSwitch370;
				#ifdef _WORLDSPACEUVS2_ON
				float3 staticSwitch732 = UV_3D_World371;
				#else
				float3 staticSwitch732 = UV_3D388;
				#endif
				float Particle_Stable_Random_X414 = ( ( inputMesh.ase_texcoord.w - 0.5 ) * 100.0 * _ParticleRandomization );
				float Particle_Age_Percent413 = inputMesh.ase_texcoord.z;
				float4 Vertex_Noise_Offset724 = ( _VertexNoiseOffset + Particle_Stable_Random_X414 + ( _VertexNoiseParticleAnimation * Particle_Age_Percent413 ) );
				float4 temp_output_10_0_g688 = ( float4( ( staticSwitch732 * _VertexNoiseScale * _VertexNoiseTiling ) , 0.0 ) - ( Vertex_Noise_Offset724 + ( _VertexNoiseAnimation * _TimeParameters.x ) ) );
				float3 temp_output_744_0 = (temp_output_10_0_g688).xyz;
				float3 position2_g693 = temp_output_744_0;
				float temp_output_744_15 = (temp_output_10_0_g688).w;
				float angle2_g693 = temp_output_744_15;
				float octaves2_g693 = _VertexNoiseOctaves;
				float noise2_g693 = 0.0;
				float3 gradient2_g693 = float3( 0,0,0 );
				SimplexNoise_float( position2_g693 , angle2_g693 , octaves2_g693 , noise2_g693 , gradient2_g693 );
				float localSimplexNoise_Caustics_float2_g692 = ( 0.0 );
				float3 position2_g692 = temp_output_744_0;
				float angle2_g692 = temp_output_744_15;
				float octaves2_g692 = _VertexNoiseOctaves;
				float gradientStrength2_g692 = _VertexNoiseDilation;
				float noise2_g692 = 0.0;
				float3 gradient2_g692 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g692 , angle2_g692 , octaves2_g692 , gradientStrength2_g692 , noise2_g692 , gradient2_g692 );
				#ifdef _VERTEXNOISEDILATIONENABLED_ON
				float3 staticSwitch759 = gradient2_g692;
				#else
				float3 staticSwitch759 = gradient2_g693;
				#endif
				float3 temp_output_10_0_g694 = staticSwitch759;
				float3 position11_g694 = temp_output_10_0_g694;
				float temp_output_9_0_g694 = _VertexNoiseTwist;
				float angle11_g694 = radians( temp_output_9_0_g694 );
				float3 output11_g694 = float3( 0,0,0 );
				TwistXZ_float( position11_g694 , angle11_g694 , output11_g694 );
				float3 temp_output_769_0 = output11_g694;
				#ifdef _VERTEXNOISEENABLED_ON
				float3 staticSwitch786 = ( temp_output_769_0 * _VertexNoise * Vertex_WaveNoise_Vertical_Mask1242 );
				#else
				float3 staticSwitch786 = float3( 0,0,0 );
				#endif
				float3 Vertex_Noise790 = staticSwitch786;
				float2 break749 = ( ( UV_2D389 * float2( 2,1 ) ) - float2( 1,0 ) );
				float temp_output_773_0 = ( ( break749.x * pow( break749.y , _VertexUVOffsetTopPower ) ) * ( _VertexUVOffsetTop * 0.5 ) );
				float3 appendResult779 = (float3(temp_output_773_0 , 0.0 , 0.0));
				float3 appendResult778 = (float3(0.0 , temp_output_773_0 , 0.0));
				#ifdef _SWAPUVXY_ON
				float3 staticSwitch784 = appendResult778;
				#else
				float3 staticSwitch784 = appendResult779;
				#endif
				float3 Vertex_Offset_Top788 = staticSwitch784;
				float2 break742 = ( ( UV_2D389 * float2( 2,1 ) ) - float2( 1,0 ) );
				float temp_output_772_0 = ( ( break742.x * pow( ( 1.0 - break742.y ) , _VertexUVOffsetBottomPower ) ) * ( _VertexUVOffsetBottom * 0.5 ) );
				float3 appendResult781 = (float3(temp_output_772_0 , 0.0 , 0.0));
				float3 appendResult780 = (float3(0.0 , temp_output_772_0 , 0.0));
				#ifdef _SWAPUVXY_ON
				float3 staticSwitch785 = appendResult780;
				#else
				float3 staticSwitch785 = appendResult781;
				#endif
				float3 Vertex_Offset_Bottom789 = staticSwitch785;
				float3 temp_output_10_0_g696 = ( ( Vertex_Normal_Offset466 + Vertex_Sine787 + Vertex_Noise790 + Vertex_Offset_Top788 + Vertex_Offset_Bottom789 ) + inputMesh.positionOS );
				float3 position11_g696 = temp_output_10_0_g696;
				float temp_output_9_0_g696 = -_VertexTwist;
				float angle11_g696 = radians( temp_output_9_0_g696 );
				float3 output11_g696 = float3( 0,0,0 );
				TwistXZ_float( position11_g696 , angle11_g696 , output11_g696 );
				float3 worldToObjDir467 = mul( GetWorldToObjectMatrix(), float4( _VertexOffsetOverY1, 0.0 ) ).xyz;
				float3 worldToObjDir469 = mul( GetWorldToObjectMatrix(), float4( _VertexOffsetOverY2, 0.0 ) ).xyz;
				float UV_2D_Circular_Y455 = sin( ( UV_2D_Y397 * PI ) );
				float3 Vertex_Offset_over_Y485 = ( ( worldToObjDir467 * pow( UV_2D_Y397 , _VertexOffsetOverY1Power ) ) + ( worldToObjDir469 * pow( UV_2D_Y397 , _VertexOffsetOverY2Power ) ) + ( _VertexOffsetOverCircularY * pow( UV_2D_Circular_Y455 , _VertexOffsetOverCircularYPower ) ) );
				float3 Vertex_Offset1398 = ( output11_g696 + Vertex_Offset_over_Y485 );
				
				float3 ase_normalWS = TransformObjectToWorldNormal( inputMesh.normalOS );
				o.ase_texcoord5.xyz = ase_normalWS;
				float3 objectToViewPos = TransformWorldToView( TransformObjectToWorld( inputMesh.positionOS ) );
				float eyeDepth = -objectToViewPos.z;
				o.ase_texcoord5.w = eyeDepth;
				
				o.ase_texcoord1 = inputMesh.ase_texcoord;
				o.ase_texcoord2 = float4(inputMesh.positionOS,1);
				o.ase_texcoord3 = inputMesh.ase_texcoord2;
				o.ase_texcoord4 = inputMesh.ase_texcoord1;
				o.ase_color = inputMesh.ase_color;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = Vertex_Offset1398;
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
				float4 ase_texcoord2 : TEXCOORD2;
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
				o.ase_texcoord2 = v.ase_texcoord2;
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
				o.ase_texcoord2 = patch[0].ase_texcoord2 * bary.x + patch[1].ase_texcoord2 * bary.y + patch[2].ase_texcoord2 * bary.z;
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

				float temp_output_7_0_g664 = _NoiseRemapMin;
				float temp_output_23_0_g664 = _NoiseRemapMax;
				float localSimplexNoise_float2_g661 = ( 0.0 );
				float2 texCoord383 = packedInput.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				#ifdef _SWAPUVXY_ON
				float2 staticSwitch387 = (texCoord383).yx;
				#else
				float2 staticSwitch387 = texCoord383;
				#endif
				float2 UV_2D389 = staticSwitch387;
				#ifdef _SWAPUVXY_ON
				float3 staticSwitch386 = (packedInput.ase_texcoord2.xyz).yxz;
				#else
				float3 staticSwitch386 = packedInput.ase_texcoord2.xyz;
				#endif
				float3 UV_3D388 = staticSwitch386;
				#ifdef _OBJECTSPACEUVS_ON
				float3 staticSwitch291 = UV_3D388;
				#else
				float3 staticSwitch291 = float3( UV_2D389 ,  0.0 );
				#endif
				float3 ase_positionWS = GetAbsolutePositionWS( PositionRWS );
				#ifdef _SWAPUVXY4_ON
				float3 staticSwitch370 = (ase_positionWS).yxz;
				#else
				float3 staticSwitch370 = ase_positionWS;
				#endif
				float3 UV_3D_World371 = staticSwitch370;
				#ifdef _WORLDSPACEUVS_ON
				float3 staticSwitch293 = UV_3D_World371;
				#else
				float3 staticSwitch293 = staticSwitch291;
				#endif
				float3 appendResult1244 = (float3(packedInput.ase_texcoord3.y , packedInput.ase_texcoord3.z , packedInput.ase_texcoord3.w));
				float3 Particle_Rotation_3D1248 = appendResult1244;
				float3 Noise_Base_UV296 = ( staticSwitch293 + Particle_Rotation_3D1248 );
				float localSpherize_float5_g631 = ( 0.0 );
				float2 uv5_g631 = (Noise_Base_UV296).xy;
				float2 center5_g631 = ( _SpherizeNoiseOffset + float2( 0.5,0.5 ) );
				float radius5_g631 = _SpherizeNoiseRadius;
				float strength5_g631 = _SpherizeNoiseStrength;
				float2 output5_g631 = float2( 0,0 );
				Spherize_float( uv5_g631 , center5_g631 , radius5_g631 , strength5_g631 , output5_g631 );
				float3 appendResult219 = (float3(output5_g631 , (Noise_Base_UV296).z));
				#ifdef _SPHERIZENOISE_ON
				float3 staticSwitch221 = appendResult219;
				#else
				float3 staticSwitch221 = Noise_Base_UV296;
				#endif
				float localTwistXZ_float11_g638 = ( 0.0 );
				float3 temp_output_10_0_g638 = staticSwitch221;
				float3 position11_g638 = temp_output_10_0_g638;
				float temp_output_9_0_g638 = _NoiseXZTwist;
				float angle11_g638 = radians( temp_output_9_0_g638 );
				float3 output11_g638 = float3( 0,0,0 );
				TwistXZ_float( position11_g638 , angle11_g638 , output11_g638 );
				#ifdef _NOISEXZTWISTENABLED_ON
				float3 staticSwitch224 = output11_g638;
				#else
				float3 staticSwitch224 = staticSwitch221;
				#endif
				float3 break225 = staticSwitch224;
				float temp_output_230_0 = ( ( break225.y - _NoiseUVYPreOffset ) * _NoiseUVYPreScale );
				float temp_output_7_0_g643 = abs( temp_output_230_0 );
				float temp_output_232_14 = ( pow( temp_output_7_0_g643 , _NoiseUVYPrePower ) * sign( temp_output_230_0 ) );
				float3 appendResult234 = (float3(break225.x , temp_output_232_14 , break225.z));
				float3 temp_output_363_0 = ( -V * _NoiseParallaxOffset );
				#ifdef _SWAPUVXY3_ON
				float3 staticSwitch365 = (temp_output_363_0).yxz;
				#else
				float3 staticSwitch365 = temp_output_363_0;
				#endif
				float3 Parallax_Offset366 = staticSwitch365;
				float localSimplexNoise_float2_g637 = ( 0.0 );
				float Particle_Stable_Random_X414 = ( ( packedInput.ase_texcoord1.w - 0.5 ) * 100.0 * _ParticleRandomization );
				float Particle_Age_Percent413 = packedInput.ase_texcoord1.z;
				float4 Distortion_Noise_Offset360 = ( _NoiseDistortionOffset + Particle_Stable_Random_X414 + ( _NoiseDistortionParticleAnimation * Particle_Age_Percent413 ) );
				float4 temp_output_10_0_g632 = ( float4( ( ( Noise_Base_UV296 + Parallax_Offset366 ) * _NoiseDistortionScale * _NoiseDistortionTiling ) , 0.0 ) - ( Distortion_Noise_Offset360 + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 temp_output_341_0 = (temp_output_10_0_g632).xyz;
				float3 position2_g637 = temp_output_341_0;
				float temp_output_341_15 = (temp_output_10_0_g632).w;
				float angle2_g637 = temp_output_341_15;
				float octaves2_g637 = _NoiseDistortionOctaves;
				float noise2_g637 = 0.0;
				float3 gradient2_g637 = float3( 0,0,0 );
				SimplexNoise_float( position2_g637 , angle2_g637 , octaves2_g637 , noise2_g637 , gradient2_g637 );
				float localSimplexNoise_Caustics_float2_g636 = ( 0.0 );
				float3 position2_g636 = temp_output_341_0;
				float angle2_g636 = temp_output_341_15;
				float octaves2_g636 = _NoiseDistortionOctaves;
				float gradientStrength2_g636 = _NoiseDistortionDilation;
				float noise2_g636 = 0.0;
				float3 gradient2_g636 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g636 , angle2_g636 , octaves2_g636 , gradientStrength2_g636 , noise2_g636 , gradient2_g636 );
				#ifdef _NOISEDISTORTIONDILATIONENABLED_ON
				float3 staticSwitch346 = gradient2_g636;
				#else
				float3 staticSwitch346 = gradient2_g637;
				#endif
				float3 temp_output_7_0_g641 = abs( staticSwitch346 );
				float3 temp_cast_2 = (_NoiseDistortionPower).xxx;
				#ifdef _NOISEDISTORTIONENABLED_ON
				float3 staticSwitch351 = ( ( pow( temp_output_7_0_g641 , temp_cast_2 ) * sign( staticSwitch346 ) ) * _NoiseDistortion );
				#else
				float3 staticSwitch351 = float3( 0,0,0 );
				#endif
				float3 Noise_Distortion352 = staticSwitch351;
				float3 Noise_UV238 = ( appendResult234 + Parallax_Offset366 + Noise_Distortion352 );
				float4 Noise_Offset210 = ( _NoiseOffset + Particle_Stable_Random_X414 + ( _NoiseParticleAnimation * Particle_Age_Percent413 ) );
				float4 temp_output_10_0_g655 = ( float4( ( Noise_UV238 * _NoiseScale1 * _NoiseTiling1 ) , 0.0 ) - ( Noise_Offset210 + ( _NoiseAnimation * _TimeParameters.x ) ) );
				float3 temp_output_145_0 = (temp_output_10_0_g655).xyz;
				float3 position2_g661 = temp_output_145_0;
				float temp_output_145_15 = (temp_output_10_0_g655).w;
				float angle2_g661 = temp_output_145_15;
				float octaves2_g661 = _NoiseOctaves;
				float noise2_g661 = 0.0;
				float3 gradient2_g661 = float3( 0,0,0 );
				SimplexNoise_float( position2_g661 , angle2_g661 , octaves2_g661 , noise2_g661 , gradient2_g661 );
				float localSimplexNoise_Caustics_float2_g660 = ( 0.0 );
				float3 position2_g660 = temp_output_145_0;
				float angle2_g660 = temp_output_145_15;
				float octaves2_g660 = _NoiseOctaves;
				float gradientStrength2_g660 = _NoiseDilation1;
				float noise2_g660 = 0.0;
				float3 gradient2_g660 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g660 , angle2_g660 , octaves2_g660 , gradientStrength2_g660 , noise2_g660 , gradient2_g660 );
				#ifdef _NOISEDILATIONENABLED_ON
				float staticSwitch148 = noise2_g660;
				#else
				float staticSwitch148 = noise2_g661;
				#endif
				float temp_output_20_0_g664 = staticSwitch148;
				float temp_output_4_0_g664 = _NoisePower1;
				float smoothstepResult22_g664 = smoothstep( temp_output_7_0_g664 , temp_output_23_0_g664 , pow( temp_output_20_0_g664 , temp_output_4_0_g664 ));
				float Particle_Subtract_Noise_over_Lifetime419 = ( packedInput.ase_texcoord4.y * _ParticleSubtractNoiseoverLifetime );
				float temp_output_154_0 = ( smoothstepResult22_g664 - Particle_Subtract_Noise_over_Lifetime419 );
				float lerpResult157 = lerp( 1.0 , temp_output_154_0 , _Noise1);
				float Noise158 = lerpResult157;
				float Particle_Mask_Radius_over_Lifetime416 = packedInput.ase_texcoord4.x;
				float lerpResult571 = lerp( 1.0 , Particle_Mask_Radius_over_Lifetime416 , _RadialMaskRadiusOverParticleLifetime);
				float temp_output_6_0_g657 = ( 1.0 - ( _RadialMaskRadius * lerpResult571 ) );
				float lerpResult5_g657 = lerp( temp_output_6_0_g657 , 1.0 , _RadialMaskFeather);
				float2 texCoord390 = packedInput.ase_texcoord1.xy * float2( 2,2 ) + float2( -1,-1 );
				#ifdef _SWAPUVXY_ON
				float2 staticSwitch392 = (texCoord390).yx;
				#else
				float2 staticSwitch392 = texCoord390;
				#endif
				float2 UV_2D_Centered393 = staticSwitch392;
				float localSimplexNoise_float2_g634 = ( 0.0 );
				float4 Mask_Distortion_Noise_Offset285 = ( _RadialMaskDistortionOffset + Particle_Stable_Random_X414 + ( _RadialMaskDistortionParticleAnimation * Particle_Age_Percent413 ) );
				float4 temp_output_10_0_g625 = ( float4( ( Noise_Base_UV296 * _RadialMaskDistortionScale * _RadialMaskDistortionTiling ) , 0.0 ) - ( Mask_Distortion_Noise_Offset285 + ( _RadialMaskDistortionAnimation * _TimeParameters.x ) ) );
				float3 temp_output_262_0 = (temp_output_10_0_g625).xyz;
				float3 position2_g634 = temp_output_262_0;
				float temp_output_262_15 = (temp_output_10_0_g625).w;
				float angle2_g634 = temp_output_262_15;
				float octaves2_g634 = _RadialMaskDistortionOctaves;
				float noise2_g634 = 0.0;
				float3 gradient2_g634 = float3( 0,0,0 );
				SimplexNoise_float( position2_g634 , angle2_g634 , octaves2_g634 , noise2_g634 , gradient2_g634 );
				float localSimplexNoise_Caustics_float2_g635 = ( 0.0 );
				float3 position2_g635 = temp_output_262_0;
				float angle2_g635 = temp_output_262_15;
				float octaves2_g635 = _RadialMaskDistortionOctaves;
				float gradientStrength2_g635 = _RadialMaskDistortionDilation;
				float noise2_g635 = 0.0;
				float3 gradient2_g635 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g635 , angle2_g635 , octaves2_g635 , gradientStrength2_g635 , noise2_g635 , gradient2_g635 );
				#ifdef _RADIALMASKDISTORTIONDILATIONENABLED_ON
				float3 staticSwitch267 = gradient2_g635;
				#else
				float3 staticSwitch267 = gradient2_g634;
				#endif
				float3 temp_output_7_0_g640 = abs( staticSwitch267 );
				float3 temp_cast_5 = (_RadialMaskDistortionPower).xxx;
				#ifdef _RADIALMASKDISTORTIONENABLED_ON
				float3 staticSwitch272 = ( ( pow( temp_output_7_0_g640 , temp_cast_5 ) * sign( staticSwitch267 ) ) * _RadialMaskDistortion );
				#else
				float3 staticSwitch272 = float3( 0,0,0 );
				#endif
				float3 Mask_Distortion273 = staticSwitch272;
				float temp_output_7_0_g657 = ( 1.0 - length( ( ( ( UV_2D_Centered393 + (Mask_Distortion273).xy ) - _RadialMaskOffset ) * _RadialMaskTiling ) ) );
				float smoothstepResult4_g657 = smoothstep( temp_output_6_0_g657 , lerpResult5_g657 , temp_output_7_0_g657);
				#ifdef _RADIALMASK_ON
				float staticSwitch582 = ( 1.0 - pow( smoothstepResult4_g657 , _RadialMaskPower ) );
				#else
				float staticSwitch582 = 0.0;
				#endif
				float Radial_Mask583 = staticSwitch582;
				#ifdef _RADIALMASKSUBTRACTIVE_ON
				float staticSwitch644 = Radial_Mask583;
				#else
				float staticSwitch644 = 0.0;
				#endif
				float temp_output_7_0_g662 = _VerticalMask1RemapMax;
				float temp_output_23_0_g662 = _VerticalMask1RemapMin;
				float UV_2D_Y397 = (staticSwitch387).y;
				float UV_3D_Y395 = (staticSwitch386).y;
				#ifdef _VERTICALMASKSOBJECTSPACE_ON
				float staticSwitch1257 = ( ( UV_3D_Y395 - _VerticalMask1ObjectSpaceOffset ) / _VerticalMask1ObjectSpaceScale );
				#else
				float staticSwitch1257 = UV_2D_Y397;
				#endif
				float temp_output_20_0_g662 = staticSwitch1257;
				float smoothstepResult25_g662 = smoothstep( temp_output_7_0_g662 , temp_output_23_0_g662 , temp_output_20_0_g662);
				float temp_output_4_0_g662 = _VerticalMask1Power;
				float temp_output_1265_0 = pow( smoothstepResult25_g662 , temp_output_4_0_g662 );
				#ifdef _VERTICALMASK1SUBTRACTIVE_ON
				float staticSwitch1269 = ( 1.0 - temp_output_1265_0 );
				#else
				float staticSwitch1269 = temp_output_1265_0;
				#endif
				float Vertical_Mask_11278 = staticSwitch1269;
				#ifdef _VERTICALMASK1SUBTRACTIVE_ON
				float staticSwitch646 = ( staticSwitch644 + Vertical_Mask_11278 );
				#else
				float staticSwitch646 = staticSwitch644;
				#endif
				#ifdef _VERTICALMASK1_ON
				float staticSwitch648 = staticSwitch646;
				#else
				float staticSwitch648 = staticSwitch644;
				#endif
				float temp_output_7_0_g663 = _VerticalMask2RemapMin;
				float temp_output_23_0_g663 = _VerticalMask2RemapMax;
				#ifdef _VERTICALMASKSOBJECTSPACE_ON
				float staticSwitch1273 = ( ( UV_3D_Y395 - _VerticalMask2ObjectSpaceOffset ) / _VerticalMask2ObjectSpaceScale );
				#else
				float staticSwitch1273 = UV_2D_Y397;
				#endif
				float temp_output_20_0_g663 = staticSwitch1273;
				float smoothstepResult25_g663 = smoothstep( temp_output_7_0_g663 , temp_output_23_0_g663 , temp_output_20_0_g663);
				float temp_output_4_0_g663 = _VerticalMask2Power;
				float temp_output_1274_0 = pow( smoothstepResult25_g663 , temp_output_4_0_g663 );
				#ifdef _VERTICALMASK2SUBTRACTIVE_ON
				float staticSwitch1276 = ( 1.0 - temp_output_1274_0 );
				#else
				float staticSwitch1276 = temp_output_1274_0;
				#endif
				float Vertical_Mask_21277 = staticSwitch1276;
				#ifdef _VERTICALMASK2SUBTRACTIVE_ON
				float staticSwitch650 = ( staticSwitch648 + Vertical_Mask_21277 );
				#else
				float staticSwitch650 = staticSwitch648;
				#endif
				#ifdef _VERTICALMASK2_ON
				float staticSwitch655 = staticSwitch650;
				#else
				float staticSwitch655 = staticSwitch648;
				#endif
				float3 ase_normalWS = packedInput.ase_texcoord5.xyz;
				float fresnelNdotV585 = dot( ase_normalWS, V );
				float fresnelNode585 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV585, _FresnelMaskPower ) );
				float smoothstepResult588 = smoothstep( _FresnelMaskRemapMin , _FresnelMaskRemapMax , fresnelNode585);
				float lerpResult590 = lerp( 1.0 , smoothstepResult588 , _FresnelMask);
				float Fresnel_Mask592 = lerpResult590;
				float temp_output_7_0_g665 = 0.0;
				float temp_output_23_0_g665 = 1.0;
				float screenDepth501 = LinearEyeDepth(SampleCameraDepth( ScreenPosNorm.xy ),_ZBufferParams);
				float distanceDepth501 = saturate( abs( ( screenDepth501 - LinearEyeDepth( ScreenPosNorm.z,_ZBufferParams ) ) / ( _DepthFade ) ) );
				#ifdef _INVERTDEPTHFADE_ON
				float staticSwitch505 = ( 1.0 - distanceDepth501 );
				#else
				float staticSwitch505 = distanceDepth501;
				#endif
				float temp_output_20_0_g665 = staticSwitch505;
				float temp_output_4_0_g665 = _DepthFadePower;
				float smoothstepResult22_g665 = smoothstep( temp_output_7_0_g665 , temp_output_23_0_g665 , pow( temp_output_20_0_g665 , temp_output_4_0_g665 ));
				float temp_output_7_0_g666 = 0.0;
				float temp_output_23_0_g666 = 1.0;
				float screenDepth503 = LinearEyeDepth(SampleCameraDepth( ScreenPosNorm.xy ),_ZBufferParams);
				float distanceDepth503 = saturate( abs( ( screenDepth503 - LinearEyeDepth( ScreenPosNorm.z,_ZBufferParams ) ) / ( _SubtractiveDepthFade ) ) );
				float temp_output_20_0_g666 = ( 1.0 - distanceDepth503 );
				float temp_output_4_0_g666 = _SubtractiveDepthFadePower;
				float smoothstepResult22_g666 = smoothstep( temp_output_7_0_g666 , temp_output_23_0_g666 , pow( temp_output_20_0_g666 , temp_output_4_0_g666 ));
				float Depth_Fade528 = saturate( ( smoothstepResult22_g665 - smoothstepResult22_g666 ) );
				float temp_output_7_0_g667 = 0.0;
				float temp_output_23_0_g667 = 1.0;
				float eyeDepth = packedInput.ase_texcoord5.w;
				float cameraDepthFade511 = (( eyeDepth -_ProjectionParams.y - _CameraDepthFadeOffset ) / _CameraDepthFadeLength);
				float temp_output_20_0_g667 = saturate( cameraDepthFade511 );
				float temp_output_4_0_g667 = _CameraDepthFadePower;
				float smoothstepResult22_g667 = smoothstep( temp_output_7_0_g667 , temp_output_23_0_g667 , pow( temp_output_20_0_g667 , temp_output_4_0_g667 ));
				float Camera_Depth_Fade526 = smoothstepResult22_g667;
				float temp_output_7_0_g691 = _IntersectionHighlightRemapMin;
				float temp_output_23_0_g691 = _IntersectionHighlightRemapMax;
				float screenDepth518 = LinearEyeDepth(SampleCameraDepth( ScreenPosNorm.xy ),_ZBufferParams);
				float distanceDepth518 = saturate( abs( ( screenDepth518 - LinearEyeDepth( ScreenPosNorm.z,_ZBufferParams ) ) / ( _IntersectionHighlight ) ) );
				float temp_output_20_0_g691 = ( 1.0 - distanceDepth518 );
				float temp_output_4_0_g691 = _IntersectionHighlightPower;
				float smoothstepResult22_g691 = smoothstep( temp_output_7_0_g691 , temp_output_23_0_g691 , pow( temp_output_20_0_g691 , temp_output_4_0_g691 ));
				float Intersection_Highlight527 = smoothstepResult22_g691;
				float Intersection_Highlight_Alpha593 = _IntersectionHighlightColour.a;
				float temp_output_679_0 = saturate( ( ( saturate( ( Noise158 - staticSwitch655 ) ) * Fresnel_Mask592 * (packedInput.ase_color).a * Depth_Fade528 * Camera_Depth_Fade526 * _Alpha ) + ( Intersection_Highlight527 * Intersection_Highlight_Alpha593 ) ) );
				#ifdef _RADIALMASKSUBTRACTIVE_ON
				float staticSwitch683 = temp_output_679_0;
				#else
				float staticSwitch683 = ( temp_output_679_0 * ( 1.0 - Radial_Mask583 ) );
				#endif
				float Alpha697 = staticSwitch683;
				

				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				surfaceDescription.Alpha = Alpha697;

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

			#define ASE_PHONG_TESSELLATION
			#define _CONSERVATIVE_DEPTH_OFFSET
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define _DEPTHOFFSET_ON
			#define ASE_FIXED_TESSELLATION
			#pragma shader_feature_local_fragment _ENABLE_FOG_ON_TRANSPARENT
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#define ASE_TESSELLATION 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
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
			float4 _NoiseOffset;
			float4 _RadialMaskDistortionAnimation;
			float4 _VertexNoiseAnimation;
			float4 _VertexNoiseParticleAnimation;
			float4 _VertexNoiseOffset;
			float4 _VerticalColourB;
			float4 _NoiseAnimation;
			float4 _NoiseParticleAnimation;
			float4 _RadialMaskDistortionParticleAnimation;
			float4 _VerticalColourA;
			float4 _RadialMaskDistortionOffset;
			float4 _ColourA;
			float4 _IntersectionHighlightColour;
			float4 _NoiseDistortionOffset;
			float4 _ColourB;
			float4 _NoiseDistortionParticleAnimation;
			float4 _NoiseDistortionAnimation;
			float3 _VertexOffsetOverCircularY;
			float3 _NoiseTiling1;
			float3 _VertexOffsetOverY2;
			float3 _VertexOffsetOverY1;
			float3 _RadialMaskDistortionTiling;
			float3 _NoiseDistortionTiling;
			float3 _VertexNoiseTiling;
			float2 _RadialMaskTiling;
			float2 _RadialMaskOffset;
			float2 _SpherizeNoiseOffset;
			float _VerticalColourSaturationShift;
			float _VerticalColourHueShift;
			float _ColourSaturationShift;
			float _ColourValueMultiplier;
			float _StartFoldoutVertexNoise;
			float _ColourPower;
			float _Noise1;
			float _ParticleSubtractNoiseoverLifetime;
			float _VerticalColourValueMultiplier;
			float _NoisePower1;
			float _NoiseDilation1;
			float _NoiseOctaves;
			float _NoiseScale1;
			float _NoiseDistortion;
			float _NoiseDistortionPower;
			float _NoiseDistortionDilation;
			float _NoiseDistortionOctaves;
			float _ColourHueShift;
			float _VerticalColourMaskRemapMin;
			float _IntersectionHighlightColourSaturationShift;
			float _VerticalColourMaskPower;
			float _VerticalMask1Power;
			float _VerticalMask2RemapMin;
			float _VerticalMask2RemapMax;
			float _VerticalMask2ObjectSpaceOffset;
			float _VerticalMask2ObjectSpaceScale;
			float _VerticalMask2Power;
			float _FresnelMaskRemapMin;
			float _VerticalMask1ObjectSpaceScale;
			float _FresnelMaskRemapMax;
			float _FresnelMask;
			float _DepthFade;
			float _DepthFadePower;
			float _SubtractiveDepthFade;
			float _SubtractiveDepthFadePower;
			float _CameraDepthFadeLength;
			float _CameraDepthFadeOffset;
			float _FresnelMaskPower;
			float _VerticalColourMaskRemapMax;
			float _VerticalMask1ObjectSpaceOffset;
			float _VerticalMask1RemapMax;
			float _PulseSpeed;
			float _IntersectionHighlightColourHueShift;
			float _IntersectionHighlightColourValueMultiplier;
			float _IntersectionHighlightRemapMin;
			float _IntersectionHighlightRemapMax;
			float _IntersectionHighlight;
			float _IntersectionHighlightPower;
			float _VerticalMask1RemapMin;
			float _RadialMaskRadius;
			float _RadialMaskFeather;
			float _RadialMaskDistortionScale;
			float _RadialMaskDistortionOctaves;
			float _RadialMaskDistortionDilation;
			float _RadialMaskDistortionPower;
			float _RadialMaskDistortion;
			float _RadialMaskPower;
			float _RadialMaskRadiusOverParticleLifetime;
			float _NoiseDistortionScale;
			float _NoiseXZTwist;
			float _NoiseUVYPrePower;
			float _EndFoldoutRadialMask;
			float _StartFoldoutRadialMaskDistortion;
			float _EndFoldoutRadialMaskDistortion;
			float _StartFoldoutVerticalMasks;
			float _EndFoldoutVerticalMasks;
			float _StartFoldoutSpherizeNoise;
			float _EndFoldoutSpherizeNoise;
			float _StartFoldoutFresnelMask;
			float _EndFoldoutFresnelMask;
			float _StartFoldoutDepthFade;
			float _EndFoldoutDepthFade;
			float _StartFoldoutIntersectionHighlight;
			float _EndFoldoutIntersectionHighlight;
			float _StartFoldoutVertexUVOffset;
			float _EndFoldoutVertexOffsetoverY;
			float _StartFoldoutRadialMask;
			float _StartFoldoutParticleSettings;
			float _EndFoldoutNoiseDistortion;
			float _EndFoldoutNoise;
			float _EndFoldoutVertexNoise;
			float _EndFoldoutVertexWaveNoiseVerticalMask;
			float _StartFoldoutVertexOffsetoverY;
			float _StartFoldoutVertexWaveNoiseVerticalMask;
			float _EndFoldoutVertexUVOffset;
			float _StartFoldoutVertexNormalOffset;
			float _EndFoldoutVertexNormalOffset;
			float _StartFoldoutVertexWave;
			float _EndFoldoutVertexWave;
			float _StartFoldoutLighting;
			float _EndFoldoutBaseUVs;
			float _StartFoldoutColour;
			float _EndFoldoutColour;
			float _StartFoldoutVerticalColour;
			float _EndFoldoutVerticalColour;
			float _StartFoldoutNoiseDistortion;
			float _EndFoldoutLighting;
			float _StartFoldoutNoise;
			float _StartFoldoutBaseUVs;
			float _VertexUVOffsetTopPower;
			float _VertexUVOffsetTop;
			float _VertexUVOffsetBottomPower;
			float _VertexUVOffsetBottom;
			float _VertexTwist;
			float _VertexOffsetOverY1Power;
			float _VertexOffsetOverY2Power;
			float _VertexOffsetOverCircularYPower;
			float _NoiseRemapMin;
			float _NoiseRemapMax;
			float _SpherizeNoiseRadius;
			float _SpherizeNoiseStrength;
			float _CameraDepthFadePower;
			float _NoiseUVYPreOffset;
			float _NoiseUVYPreScale;
			float _VertexNoise;
			float _VertexNoiseTwist;
			float _VertexNoiseDilation;
			float _VertexNoiseOctaves;
			float _EndFoldoutParticleSettings;
			float _Tessellation;
			float _VertexNormalOffset;
			float _VertexNormalOffsetTopPower;
			float _VertexNormalOffsetTop;
			float _VertexNormalOffsetBottomPower;
			float _VertexNormalOffsetBottom;
			float _NoiseParallaxOffset;
			float _VertexWaveScale;
			float _VertexWaveOffset;
			float _VertexWave;
			float _VertexWaveNoiseVerticalMaskRemapMin;
			float _VertexWaveNoiseVerticalMaskRemapMax;
			float _VertexWaveNoiseVerticalMaskPower;
			float _VertexNoiseScale;
			float _ParticleRandomization;
			float _VertexWaveAnimation;
			float _Alpha;
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

			#include "VFXToolkit/Shaders/_Includes/Math.cginc"
			#include "VFXToolkit/Shaders/_Includes/Noise.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_TEXTURE_COORDINATES2
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES2
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#define ASE_NEEDS_TEXTURE_COORDINATES1
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES1
			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local _SWAPUVXY_ON
			#pragma shader_feature_local _VERTEXWAVEENABLED_ON
			#pragma shader_feature_local _VERTEXNOISEENABLED_ON
			#pragma shader_feature_local _VERTEXNOISEDILATIONENABLED_ON
			#pragma shader_feature_local _VERTICALCOLOUR_ON
			#pragma shader_feature_local _NOISEDILATIONENABLED_ON
			#pragma shader_feature_local _NOISEXZTWISTENABLED_ON
			#pragma shader_feature_local _SPHERIZENOISE_ON
			#pragma shader_feature_local _WORLDSPACEUVS_ON
			#pragma shader_feature_local _OBJECTSPACEUVS_ON
			#pragma shader_feature_local _NOISEDISTORTIONENABLED_ON
			#pragma shader_feature_local _NOISEDISTORTIONDILATIONENABLED_ON
			#pragma shader_feature_local _RADIALMASKSUBTRACTIVE_ON
			#pragma shader_feature_local _VERTICALMASK2_ON
			#pragma shader_feature_local _VERTICALMASK1_ON
			#pragma shader_feature_local _RADIALMASK_ON
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
				float4 ase_texcoord8 : TEXCOORD8;
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
				float DepthOffset;
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

				float localTwistXZ_float11_g696 = ( 0.0 );
				float2 texCoord383 = inputMesh.uv0.xy * float2( 1,1 ) + float2( 0,0 );
				#ifdef _SWAPUVXY_ON
				float2 staticSwitch387 = (texCoord383).yx;
				#else
				float2 staticSwitch387 = texCoord383;
				#endif
				float UV_2D_Y397 = (staticSwitch387).y;
				float3 Vertex_Normal_Offset466 = ( ( inputMesh.normalOS * _VertexNormalOffset ) + ( pow( UV_2D_Y397 , _VertexNormalOffsetTopPower ) * inputMesh.normalOS * _VertexNormalOffsetTop ) + ( pow( ( 1.0 - UV_2D_Y397 ) , _VertexNormalOffsetBottomPower ) * inputMesh.normalOS * _VertexNormalOffsetBottom ) );
				float2 UV_2D389 = staticSwitch387;
				float mulTime741 = _TimeParameters.x * _VertexWaveAnimation;
				float temp_output_7_0_g690 = _VertexWaveNoiseVerticalMaskRemapMin;
				float temp_output_23_0_g690 = _VertexWaveNoiseVerticalMaskRemapMax;
				float temp_output_20_0_g690 = UV_2D_Y397;
				float temp_output_4_0_g690 = _VertexWaveNoiseVerticalMaskPower;
				float smoothstepResult22_g690 = smoothstep( temp_output_7_0_g690 , temp_output_23_0_g690 , pow( temp_output_20_0_g690 , temp_output_4_0_g690 ));
				float Vertex_WaveNoise_Vertical_Mask1242 = smoothstepResult22_g690;
				#ifdef _VERTEXWAVEENABLED_ON
				float3 staticSwitch783 = ( ( sin( ( ( UV_2D389.y * TWO_PI * _VertexWaveScale ) - ( mulTime741 + ( _VertexWaveOffset * TWO_PI ) ) ) ) * _VertexWave * Vertex_WaveNoise_Vertical_Mask1242 ) * inputMesh.normalOS );
				#else
				float3 staticSwitch783 = float3( 0,0,0 );
				#endif
				float3 Vertex_Sine787 = staticSwitch783;
				float localTwistXZ_float11_g694 = ( 0.0 );
				float localSimplexNoise_float2_g693 = ( 0.0 );
				#ifdef _SWAPUVXY_ON
				float3 staticSwitch386 = (inputMesh.positionOS).yxz;
				#else
				float3 staticSwitch386 = inputMesh.positionOS;
				#endif
				float3 UV_3D388 = staticSwitch386;
				float3 ase_positionWS = GetAbsolutePositionWS( TransformObjectToWorld( ( inputMesh.positionOS ).xyz ) );
				#ifdef _SWAPUVXY4_ON
				float3 staticSwitch370 = (ase_positionWS).yxz;
				#else
				float3 staticSwitch370 = ase_positionWS;
				#endif
				float3 UV_3D_World371 = staticSwitch370;
				#ifdef _WORLDSPACEUVS2_ON
				float3 staticSwitch732 = UV_3D_World371;
				#else
				float3 staticSwitch732 = UV_3D388;
				#endif
				float Particle_Stable_Random_X414 = ( ( inputMesh.uv0.w - 0.5 ) * 100.0 * _ParticleRandomization );
				float Particle_Age_Percent413 = inputMesh.uv0.z;
				float4 Vertex_Noise_Offset724 = ( _VertexNoiseOffset + Particle_Stable_Random_X414 + ( _VertexNoiseParticleAnimation * Particle_Age_Percent413 ) );
				float4 temp_output_10_0_g688 = ( float4( ( staticSwitch732 * _VertexNoiseScale * _VertexNoiseTiling ) , 0.0 ) - ( Vertex_Noise_Offset724 + ( _VertexNoiseAnimation * _TimeParameters.x ) ) );
				float3 temp_output_744_0 = (temp_output_10_0_g688).xyz;
				float3 position2_g693 = temp_output_744_0;
				float temp_output_744_15 = (temp_output_10_0_g688).w;
				float angle2_g693 = temp_output_744_15;
				float octaves2_g693 = _VertexNoiseOctaves;
				float noise2_g693 = 0.0;
				float3 gradient2_g693 = float3( 0,0,0 );
				SimplexNoise_float( position2_g693 , angle2_g693 , octaves2_g693 , noise2_g693 , gradient2_g693 );
				float localSimplexNoise_Caustics_float2_g692 = ( 0.0 );
				float3 position2_g692 = temp_output_744_0;
				float angle2_g692 = temp_output_744_15;
				float octaves2_g692 = _VertexNoiseOctaves;
				float gradientStrength2_g692 = _VertexNoiseDilation;
				float noise2_g692 = 0.0;
				float3 gradient2_g692 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g692 , angle2_g692 , octaves2_g692 , gradientStrength2_g692 , noise2_g692 , gradient2_g692 );
				#ifdef _VERTEXNOISEDILATIONENABLED_ON
				float3 staticSwitch759 = gradient2_g692;
				#else
				float3 staticSwitch759 = gradient2_g693;
				#endif
				float3 temp_output_10_0_g694 = staticSwitch759;
				float3 position11_g694 = temp_output_10_0_g694;
				float temp_output_9_0_g694 = _VertexNoiseTwist;
				float angle11_g694 = radians( temp_output_9_0_g694 );
				float3 output11_g694 = float3( 0,0,0 );
				TwistXZ_float( position11_g694 , angle11_g694 , output11_g694 );
				float3 temp_output_769_0 = output11_g694;
				#ifdef _VERTEXNOISEENABLED_ON
				float3 staticSwitch786 = ( temp_output_769_0 * _VertexNoise * Vertex_WaveNoise_Vertical_Mask1242 );
				#else
				float3 staticSwitch786 = float3( 0,0,0 );
				#endif
				float3 Vertex_Noise790 = staticSwitch786;
				float2 break749 = ( ( UV_2D389 * float2( 2,1 ) ) - float2( 1,0 ) );
				float temp_output_773_0 = ( ( break749.x * pow( break749.y , _VertexUVOffsetTopPower ) ) * ( _VertexUVOffsetTop * 0.5 ) );
				float3 appendResult779 = (float3(temp_output_773_0 , 0.0 , 0.0));
				float3 appendResult778 = (float3(0.0 , temp_output_773_0 , 0.0));
				#ifdef _SWAPUVXY_ON
				float3 staticSwitch784 = appendResult778;
				#else
				float3 staticSwitch784 = appendResult779;
				#endif
				float3 Vertex_Offset_Top788 = staticSwitch784;
				float2 break742 = ( ( UV_2D389 * float2( 2,1 ) ) - float2( 1,0 ) );
				float temp_output_772_0 = ( ( break742.x * pow( ( 1.0 - break742.y ) , _VertexUVOffsetBottomPower ) ) * ( _VertexUVOffsetBottom * 0.5 ) );
				float3 appendResult781 = (float3(temp_output_772_0 , 0.0 , 0.0));
				float3 appendResult780 = (float3(0.0 , temp_output_772_0 , 0.0));
				#ifdef _SWAPUVXY_ON
				float3 staticSwitch785 = appendResult780;
				#else
				float3 staticSwitch785 = appendResult781;
				#endif
				float3 Vertex_Offset_Bottom789 = staticSwitch785;
				float3 temp_output_10_0_g696 = ( ( Vertex_Normal_Offset466 + Vertex_Sine787 + Vertex_Noise790 + Vertex_Offset_Top788 + Vertex_Offset_Bottom789 ) + inputMesh.positionOS );
				float3 position11_g696 = temp_output_10_0_g696;
				float temp_output_9_0_g696 = -_VertexTwist;
				float angle11_g696 = radians( temp_output_9_0_g696 );
				float3 output11_g696 = float3( 0,0,0 );
				TwistXZ_float( position11_g696 , angle11_g696 , output11_g696 );
				float3 worldToObjDir467 = mul( GetWorldToObjectMatrix(), float4( _VertexOffsetOverY1, 0.0 ) ).xyz;
				float3 worldToObjDir469 = mul( GetWorldToObjectMatrix(), float4( _VertexOffsetOverY2, 0.0 ) ).xyz;
				float UV_2D_Circular_Y455 = sin( ( UV_2D_Y397 * PI ) );
				float3 Vertex_Offset_over_Y485 = ( ( worldToObjDir467 * pow( UV_2D_Y397 , _VertexOffsetOverY1Power ) ) + ( worldToObjDir469 * pow( UV_2D_Y397 , _VertexOffsetOverY2Power ) ) + ( _VertexOffsetOverCircularY * pow( UV_2D_Circular_Y455 , _VertexOffsetOverCircularYPower ) ) );
				float3 Vertex_Offset1398 = ( output11_g696 + Vertex_Offset_over_Y485 );
				
				o.ase_texcoord4.xyz = ase_positionWS;
				float4 ase_positionCS = TransformWorldToHClip( TransformObjectToWorld( ( inputMesh.positionOS ).xyz ) );
				float4 screenPos = ComputeScreenPos( ase_positionCS, _ProjectionParams.x );
				o.ase_texcoord7 = screenPos;
				
				float3 ase_normalWS = TransformObjectToWorldNormal( inputMesh.normalOS );
				o.ase_texcoord8.xyz = ase_normalWS;
				float3 objectToViewPos = TransformWorldToView( TransformObjectToWorld( inputMesh.positionOS ) );
				float eyeDepth = -objectToViewPos.z;
				o.ase_texcoord4.w = eyeDepth;
				
				o.ase_texcoord2 = inputMesh.uv0;
				o.ase_texcoord3 = float4(inputMesh.positionOS,1);
				o.ase_texcoord5 = inputMesh.uv2;
				o.ase_texcoord6 = inputMesh.uv1;
				o.ase_color = inputMesh.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord8.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = Vertex_Offset1398;
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

				float4 temp_output_22_0_g709 = float4( _ColourB.rgb , 1.0 );
				float4 temp_output_22_0_g708 = float4( _ColourA.rgb , 1.0 );
				float temp_output_7_0_g664 = _NoiseRemapMin;
				float temp_output_23_0_g664 = _NoiseRemapMax;
				float localSimplexNoise_float2_g661 = ( 0.0 );
				float2 texCoord383 = packedInput.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				#ifdef _SWAPUVXY_ON
				float2 staticSwitch387 = (texCoord383).yx;
				#else
				float2 staticSwitch387 = texCoord383;
				#endif
				float2 UV_2D389 = staticSwitch387;
				#ifdef _SWAPUVXY_ON
				float3 staticSwitch386 = (packedInput.ase_texcoord3.xyz).yxz;
				#else
				float3 staticSwitch386 = packedInput.ase_texcoord3.xyz;
				#endif
				float3 UV_3D388 = staticSwitch386;
				#ifdef _OBJECTSPACEUVS_ON
				float3 staticSwitch291 = UV_3D388;
				#else
				float3 staticSwitch291 = float3( UV_2D389 ,  0.0 );
				#endif
				float3 ase_positionWS = packedInput.ase_texcoord4.xyz;
				#ifdef _SWAPUVXY4_ON
				float3 staticSwitch370 = (ase_positionWS).yxz;
				#else
				float3 staticSwitch370 = ase_positionWS;
				#endif
				float3 UV_3D_World371 = staticSwitch370;
				#ifdef _WORLDSPACEUVS_ON
				float3 staticSwitch293 = UV_3D_World371;
				#else
				float3 staticSwitch293 = staticSwitch291;
				#endif
				float3 appendResult1244 = (float3(packedInput.ase_texcoord5.y , packedInput.ase_texcoord5.z , packedInput.ase_texcoord5.w));
				float3 Particle_Rotation_3D1248 = appendResult1244;
				float3 Noise_Base_UV296 = ( staticSwitch293 + Particle_Rotation_3D1248 );
				float localSpherize_float5_g631 = ( 0.0 );
				float2 uv5_g631 = (Noise_Base_UV296).xy;
				float2 center5_g631 = ( _SpherizeNoiseOffset + float2( 0.5,0.5 ) );
				float radius5_g631 = _SpherizeNoiseRadius;
				float strength5_g631 = _SpherizeNoiseStrength;
				float2 output5_g631 = float2( 0,0 );
				Spherize_float( uv5_g631 , center5_g631 , radius5_g631 , strength5_g631 , output5_g631 );
				float3 appendResult219 = (float3(output5_g631 , (Noise_Base_UV296).z));
				#ifdef _SPHERIZENOISE_ON
				float3 staticSwitch221 = appendResult219;
				#else
				float3 staticSwitch221 = Noise_Base_UV296;
				#endif
				float localTwistXZ_float11_g638 = ( 0.0 );
				float3 temp_output_10_0_g638 = staticSwitch221;
				float3 position11_g638 = temp_output_10_0_g638;
				float temp_output_9_0_g638 = _NoiseXZTwist;
				float angle11_g638 = radians( temp_output_9_0_g638 );
				float3 output11_g638 = float3( 0,0,0 );
				TwistXZ_float( position11_g638 , angle11_g638 , output11_g638 );
				#ifdef _NOISEXZTWISTENABLED_ON
				float3 staticSwitch224 = output11_g638;
				#else
				float3 staticSwitch224 = staticSwitch221;
				#endif
				float3 break225 = staticSwitch224;
				float temp_output_230_0 = ( ( break225.y - _NoiseUVYPreOffset ) * _NoiseUVYPreScale );
				float temp_output_7_0_g643 = abs( temp_output_230_0 );
				float temp_output_232_14 = ( pow( temp_output_7_0_g643 , _NoiseUVYPrePower ) * sign( temp_output_230_0 ) );
				float3 appendResult234 = (float3(break225.x , temp_output_232_14 , break225.z));
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_positionWS );
				float3 ase_viewDirWS = normalize( ase_viewVectorWS );
				float3 temp_output_363_0 = ( -ase_viewDirWS * _NoiseParallaxOffset );
				#ifdef _SWAPUVXY3_ON
				float3 staticSwitch365 = (temp_output_363_0).yxz;
				#else
				float3 staticSwitch365 = temp_output_363_0;
				#endif
				float3 Parallax_Offset366 = staticSwitch365;
				float localSimplexNoise_float2_g637 = ( 0.0 );
				float Particle_Stable_Random_X414 = ( ( packedInput.ase_texcoord2.w - 0.5 ) * 100.0 * _ParticleRandomization );
				float Particle_Age_Percent413 = packedInput.ase_texcoord2.z;
				float4 Distortion_Noise_Offset360 = ( _NoiseDistortionOffset + Particle_Stable_Random_X414 + ( _NoiseDistortionParticleAnimation * Particle_Age_Percent413 ) );
				float4 temp_output_10_0_g632 = ( float4( ( ( Noise_Base_UV296 + Parallax_Offset366 ) * _NoiseDistortionScale * _NoiseDistortionTiling ) , 0.0 ) - ( Distortion_Noise_Offset360 + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 temp_output_341_0 = (temp_output_10_0_g632).xyz;
				float3 position2_g637 = temp_output_341_0;
				float temp_output_341_15 = (temp_output_10_0_g632).w;
				float angle2_g637 = temp_output_341_15;
				float octaves2_g637 = _NoiseDistortionOctaves;
				float noise2_g637 = 0.0;
				float3 gradient2_g637 = float3( 0,0,0 );
				SimplexNoise_float( position2_g637 , angle2_g637 , octaves2_g637 , noise2_g637 , gradient2_g637 );
				float localSimplexNoise_Caustics_float2_g636 = ( 0.0 );
				float3 position2_g636 = temp_output_341_0;
				float angle2_g636 = temp_output_341_15;
				float octaves2_g636 = _NoiseDistortionOctaves;
				float gradientStrength2_g636 = _NoiseDistortionDilation;
				float noise2_g636 = 0.0;
				float3 gradient2_g636 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g636 , angle2_g636 , octaves2_g636 , gradientStrength2_g636 , noise2_g636 , gradient2_g636 );
				#ifdef _NOISEDISTORTIONDILATIONENABLED_ON
				float3 staticSwitch346 = gradient2_g636;
				#else
				float3 staticSwitch346 = gradient2_g637;
				#endif
				float3 temp_output_7_0_g641 = abs( staticSwitch346 );
				float3 temp_cast_4 = (_NoiseDistortionPower).xxx;
				#ifdef _NOISEDISTORTIONENABLED_ON
				float3 staticSwitch351 = ( ( pow( temp_output_7_0_g641 , temp_cast_4 ) * sign( staticSwitch346 ) ) * _NoiseDistortion );
				#else
				float3 staticSwitch351 = float3( 0,0,0 );
				#endif
				float3 Noise_Distortion352 = staticSwitch351;
				float3 Noise_UV238 = ( appendResult234 + Parallax_Offset366 + Noise_Distortion352 );
				float4 Noise_Offset210 = ( _NoiseOffset + Particle_Stable_Random_X414 + ( _NoiseParticleAnimation * Particle_Age_Percent413 ) );
				float4 temp_output_10_0_g655 = ( float4( ( Noise_UV238 * _NoiseScale1 * _NoiseTiling1 ) , 0.0 ) - ( Noise_Offset210 + ( _NoiseAnimation * _TimeParameters.x ) ) );
				float3 temp_output_145_0 = (temp_output_10_0_g655).xyz;
				float3 position2_g661 = temp_output_145_0;
				float temp_output_145_15 = (temp_output_10_0_g655).w;
				float angle2_g661 = temp_output_145_15;
				float octaves2_g661 = _NoiseOctaves;
				float noise2_g661 = 0.0;
				float3 gradient2_g661 = float3( 0,0,0 );
				SimplexNoise_float( position2_g661 , angle2_g661 , octaves2_g661 , noise2_g661 , gradient2_g661 );
				float localSimplexNoise_Caustics_float2_g660 = ( 0.0 );
				float3 position2_g660 = temp_output_145_0;
				float angle2_g660 = temp_output_145_15;
				float octaves2_g660 = _NoiseOctaves;
				float gradientStrength2_g660 = _NoiseDilation1;
				float noise2_g660 = 0.0;
				float3 gradient2_g660 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g660 , angle2_g660 , octaves2_g660 , gradientStrength2_g660 , noise2_g660 , gradient2_g660 );
				#ifdef _NOISEDILATIONENABLED_ON
				float staticSwitch148 = noise2_g660;
				#else
				float staticSwitch148 = noise2_g661;
				#endif
				float temp_output_20_0_g664 = staticSwitch148;
				float temp_output_4_0_g664 = _NoisePower1;
				float smoothstepResult22_g664 = smoothstep( temp_output_7_0_g664 , temp_output_23_0_g664 , pow( temp_output_20_0_g664 , temp_output_4_0_g664 ));
				float Particle_Subtract_Noise_over_Lifetime419 = ( packedInput.ase_texcoord6.y * _ParticleSubtractNoiseoverLifetime );
				float temp_output_154_0 = ( smoothstepResult22_g664 - Particle_Subtract_Noise_over_Lifetime419 );
				float lerpResult157 = lerp( 1.0 , temp_output_154_0 , _Noise1);
				float Noise158 = lerpResult157;
				float Colour_Power202 = pow( Noise158 , _ColourPower );
				float3 lerpResult168 = lerp( ( (temp_output_22_0_g709).rgb * (temp_output_22_0_g709).a ) , ( (temp_output_22_0_g708).rgb * (temp_output_22_0_g708).a ) , Colour_Power202);
				float3 hsvTorgb191 = RGBToHSV( lerpResult168 );
				float3 hsvTorgb172 = HSVToRGB( float3(( hsvTorgb191.x + _ColourHueShift ),( hsvTorgb191.y + _ColourSaturationShift ),( hsvTorgb191.z * _ColourValueMultiplier )) );
				float4 temp_output_22_0_g706 = float4( _VerticalColourB.rgb , 1.0 );
				float4 temp_output_22_0_g707 = float4( _VerticalColourA.rgb , 1.0 );
				float3 lerpResult177 = lerp( ( (temp_output_22_0_g706).rgb * (temp_output_22_0_g706).a ) , ( (temp_output_22_0_g707).rgb * (temp_output_22_0_g707).a ) , Colour_Power202);
				float3 hsvTorgb188 = RGBToHSV( lerpResult177 );
				float3 hsvTorgb189 = HSVToRGB( float3(( hsvTorgb188.x + _VerticalColourHueShift ),( hsvTorgb188.y + _VerticalColourSaturationShift ),( hsvTorgb188.z * _VerticalColourValueMultiplier )) );
				float temp_output_7_0_g710 = _VerticalColourMaskRemapMin;
				float temp_output_23_0_g710 = _VerticalColourMaskRemapMax;
				float UV_2D_Y397 = (staticSwitch387).y;
				float temp_output_20_0_g710 = UV_2D_Y397;
				float temp_output_4_0_g710 = _VerticalColourMaskPower;
				float smoothstepResult22_g710 = smoothstep( temp_output_7_0_g710 , temp_output_23_0_g710 , pow( temp_output_20_0_g710 , temp_output_4_0_g710 ));
				float Vertical_Colour_Mask432 = smoothstepResult22_g710;
				float3 lerpResult174 = lerp( hsvTorgb172 , hsvTorgb189 , Vertical_Colour_Mask432);
				#ifdef _VERTICALCOLOUR_ON
				float3 staticSwitch173 = lerpResult174;
				#else
				float3 staticSwitch173 = hsvTorgb172;
				#endif
				float3 Colour_Input197 = staticSwitch173;
				float4 Vertex_Colour595 = packedInput.ase_color;
				float3 hsvTorgb602 = RGBToHSV( Colour_Input197 );
				float3 hsvTorgb609 = HSVToRGB( float3(( hsvTorgb602.x + _IntersectionHighlightColourHueShift ),( hsvTorgb602.y + _IntersectionHighlightColourSaturationShift ),( hsvTorgb602.z * _IntersectionHighlightColourValueMultiplier )) );
				float temp_output_7_0_g691 = _IntersectionHighlightRemapMin;
				float temp_output_23_0_g691 = _IntersectionHighlightRemapMax;
				float4 screenPos = packedInput.ase_texcoord7;
				float4 ase_positionSSNorm = screenPos / screenPos.w;
				ase_positionSSNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_positionSSNorm.z : ase_positionSSNorm.z * 0.5 + 0.5;
				float screenDepth518 = LinearEyeDepth(SampleCameraDepth( ase_positionSSNorm.xy ),_ZBufferParams);
				float distanceDepth518 = saturate( abs( ( screenDepth518 - LinearEyeDepth( ase_positionSSNorm.z,_ZBufferParams ) ) / ( _IntersectionHighlight ) ) );
				float temp_output_20_0_g691 = ( 1.0 - distanceDepth518 );
				float temp_output_4_0_g691 = _IntersectionHighlightPower;
				float smoothstepResult22_g691 = smoothstep( temp_output_7_0_g691 , temp_output_23_0_g691 , pow( temp_output_20_0_g691 , temp_output_4_0_g691 ));
				float Intersection_Highlight527 = smoothstepResult22_g691;
				float Intersection_Highlight_Alpha593 = _IntersectionHighlightColour.a;
				float4 lerpResult621 = lerp( ( ( float4( Colour_Input197 , 0.0 ) * Vertex_Colour595 ) + ( sin( ( _TimeParameters.x * _PulseSpeed ) ) * 0.3 ) ) , float4( ( hsvTorgb609 * _IntersectionHighlightColour.rgb ) , 0.0 ) , pow( Intersection_Highlight527 , Intersection_Highlight_Alpha593 ));
				float4 Colour620 = lerpResult621;
				
				float Particle_Mask_Radius_over_Lifetime416 = packedInput.ase_texcoord6.x;
				float lerpResult571 = lerp( 1.0 , Particle_Mask_Radius_over_Lifetime416 , _RadialMaskRadiusOverParticleLifetime);
				float temp_output_6_0_g657 = ( 1.0 - ( _RadialMaskRadius * lerpResult571 ) );
				float lerpResult5_g657 = lerp( temp_output_6_0_g657 , 1.0 , _RadialMaskFeather);
				float2 texCoord390 = packedInput.ase_texcoord2.xy * float2( 2,2 ) + float2( -1,-1 );
				#ifdef _SWAPUVXY_ON
				float2 staticSwitch392 = (texCoord390).yx;
				#else
				float2 staticSwitch392 = texCoord390;
				#endif
				float2 UV_2D_Centered393 = staticSwitch392;
				float localSimplexNoise_float2_g634 = ( 0.0 );
				float4 Mask_Distortion_Noise_Offset285 = ( _RadialMaskDistortionOffset + Particle_Stable_Random_X414 + ( _RadialMaskDistortionParticleAnimation * Particle_Age_Percent413 ) );
				float4 temp_output_10_0_g625 = ( float4( ( Noise_Base_UV296 * _RadialMaskDistortionScale * _RadialMaskDistortionTiling ) , 0.0 ) - ( Mask_Distortion_Noise_Offset285 + ( _RadialMaskDistortionAnimation * _TimeParameters.x ) ) );
				float3 temp_output_262_0 = (temp_output_10_0_g625).xyz;
				float3 position2_g634 = temp_output_262_0;
				float temp_output_262_15 = (temp_output_10_0_g625).w;
				float angle2_g634 = temp_output_262_15;
				float octaves2_g634 = _RadialMaskDistortionOctaves;
				float noise2_g634 = 0.0;
				float3 gradient2_g634 = float3( 0,0,0 );
				SimplexNoise_float( position2_g634 , angle2_g634 , octaves2_g634 , noise2_g634 , gradient2_g634 );
				float localSimplexNoise_Caustics_float2_g635 = ( 0.0 );
				float3 position2_g635 = temp_output_262_0;
				float angle2_g635 = temp_output_262_15;
				float octaves2_g635 = _RadialMaskDistortionOctaves;
				float gradientStrength2_g635 = _RadialMaskDistortionDilation;
				float noise2_g635 = 0.0;
				float3 gradient2_g635 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g635 , angle2_g635 , octaves2_g635 , gradientStrength2_g635 , noise2_g635 , gradient2_g635 );
				#ifdef _RADIALMASKDISTORTIONDILATIONENABLED_ON
				float3 staticSwitch267 = gradient2_g635;
				#else
				float3 staticSwitch267 = gradient2_g634;
				#endif
				float3 temp_output_7_0_g640 = abs( staticSwitch267 );
				float3 temp_cast_12 = (_RadialMaskDistortionPower).xxx;
				#ifdef _RADIALMASKDISTORTIONENABLED_ON
				float3 staticSwitch272 = ( ( pow( temp_output_7_0_g640 , temp_cast_12 ) * sign( staticSwitch267 ) ) * _RadialMaskDistortion );
				#else
				float3 staticSwitch272 = float3( 0,0,0 );
				#endif
				float3 Mask_Distortion273 = staticSwitch272;
				float temp_output_7_0_g657 = ( 1.0 - length( ( ( ( UV_2D_Centered393 + (Mask_Distortion273).xy ) - _RadialMaskOffset ) * _RadialMaskTiling ) ) );
				float smoothstepResult4_g657 = smoothstep( temp_output_6_0_g657 , lerpResult5_g657 , temp_output_7_0_g657);
				#ifdef _RADIALMASK_ON
				float staticSwitch582 = ( 1.0 - pow( smoothstepResult4_g657 , _RadialMaskPower ) );
				#else
				float staticSwitch582 = 0.0;
				#endif
				float Radial_Mask583 = staticSwitch582;
				#ifdef _RADIALMASKSUBTRACTIVE_ON
				float staticSwitch644 = Radial_Mask583;
				#else
				float staticSwitch644 = 0.0;
				#endif
				float temp_output_7_0_g662 = _VerticalMask1RemapMax;
				float temp_output_23_0_g662 = _VerticalMask1RemapMin;
				float UV_3D_Y395 = (staticSwitch386).y;
				#ifdef _VERTICALMASKSOBJECTSPACE_ON
				float staticSwitch1257 = ( ( UV_3D_Y395 - _VerticalMask1ObjectSpaceOffset ) / _VerticalMask1ObjectSpaceScale );
				#else
				float staticSwitch1257 = UV_2D_Y397;
				#endif
				float temp_output_20_0_g662 = staticSwitch1257;
				float smoothstepResult25_g662 = smoothstep( temp_output_7_0_g662 , temp_output_23_0_g662 , temp_output_20_0_g662);
				float temp_output_4_0_g662 = _VerticalMask1Power;
				float temp_output_1265_0 = pow( smoothstepResult25_g662 , temp_output_4_0_g662 );
				#ifdef _VERTICALMASK1SUBTRACTIVE_ON
				float staticSwitch1269 = ( 1.0 - temp_output_1265_0 );
				#else
				float staticSwitch1269 = temp_output_1265_0;
				#endif
				float Vertical_Mask_11278 = staticSwitch1269;
				#ifdef _VERTICALMASK1SUBTRACTIVE_ON
				float staticSwitch646 = ( staticSwitch644 + Vertical_Mask_11278 );
				#else
				float staticSwitch646 = staticSwitch644;
				#endif
				#ifdef _VERTICALMASK1_ON
				float staticSwitch648 = staticSwitch646;
				#else
				float staticSwitch648 = staticSwitch644;
				#endif
				float temp_output_7_0_g663 = _VerticalMask2RemapMin;
				float temp_output_23_0_g663 = _VerticalMask2RemapMax;
				#ifdef _VERTICALMASKSOBJECTSPACE_ON
				float staticSwitch1273 = ( ( UV_3D_Y395 - _VerticalMask2ObjectSpaceOffset ) / _VerticalMask2ObjectSpaceScale );
				#else
				float staticSwitch1273 = UV_2D_Y397;
				#endif
				float temp_output_20_0_g663 = staticSwitch1273;
				float smoothstepResult25_g663 = smoothstep( temp_output_7_0_g663 , temp_output_23_0_g663 , temp_output_20_0_g663);
				float temp_output_4_0_g663 = _VerticalMask2Power;
				float temp_output_1274_0 = pow( smoothstepResult25_g663 , temp_output_4_0_g663 );
				#ifdef _VERTICALMASK2SUBTRACTIVE_ON
				float staticSwitch1276 = ( 1.0 - temp_output_1274_0 );
				#else
				float staticSwitch1276 = temp_output_1274_0;
				#endif
				float Vertical_Mask_21277 = staticSwitch1276;
				#ifdef _VERTICALMASK2SUBTRACTIVE_ON
				float staticSwitch650 = ( staticSwitch648 + Vertical_Mask_21277 );
				#else
				float staticSwitch650 = staticSwitch648;
				#endif
				#ifdef _VERTICALMASK2_ON
				float staticSwitch655 = staticSwitch650;
				#else
				float staticSwitch655 = staticSwitch648;
				#endif
				float3 ase_normalWS = packedInput.ase_texcoord8.xyz;
				float fresnelNdotV585 = dot( ase_normalWS, ase_viewDirWS );
				float fresnelNode585 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV585, _FresnelMaskPower ) );
				float smoothstepResult588 = smoothstep( _FresnelMaskRemapMin , _FresnelMaskRemapMax , fresnelNode585);
				float lerpResult590 = lerp( 1.0 , smoothstepResult588 , _FresnelMask);
				float Fresnel_Mask592 = lerpResult590;
				float temp_output_7_0_g665 = 0.0;
				float temp_output_23_0_g665 = 1.0;
				float screenDepth501 = LinearEyeDepth(SampleCameraDepth( ase_positionSSNorm.xy ),_ZBufferParams);
				float distanceDepth501 = saturate( abs( ( screenDepth501 - LinearEyeDepth( ase_positionSSNorm.z,_ZBufferParams ) ) / ( _DepthFade ) ) );
				#ifdef _INVERTDEPTHFADE_ON
				float staticSwitch505 = ( 1.0 - distanceDepth501 );
				#else
				float staticSwitch505 = distanceDepth501;
				#endif
				float temp_output_20_0_g665 = staticSwitch505;
				float temp_output_4_0_g665 = _DepthFadePower;
				float smoothstepResult22_g665 = smoothstep( temp_output_7_0_g665 , temp_output_23_0_g665 , pow( temp_output_20_0_g665 , temp_output_4_0_g665 ));
				float temp_output_7_0_g666 = 0.0;
				float temp_output_23_0_g666 = 1.0;
				float screenDepth503 = LinearEyeDepth(SampleCameraDepth( ase_positionSSNorm.xy ),_ZBufferParams);
				float distanceDepth503 = saturate( abs( ( screenDepth503 - LinearEyeDepth( ase_positionSSNorm.z,_ZBufferParams ) ) / ( _SubtractiveDepthFade ) ) );
				float temp_output_20_0_g666 = ( 1.0 - distanceDepth503 );
				float temp_output_4_0_g666 = _SubtractiveDepthFadePower;
				float smoothstepResult22_g666 = smoothstep( temp_output_7_0_g666 , temp_output_23_0_g666 , pow( temp_output_20_0_g666 , temp_output_4_0_g666 ));
				float Depth_Fade528 = saturate( ( smoothstepResult22_g665 - smoothstepResult22_g666 ) );
				float temp_output_7_0_g667 = 0.0;
				float temp_output_23_0_g667 = 1.0;
				float eyeDepth = packedInput.ase_texcoord4.w;
				float cameraDepthFade511 = (( eyeDepth -_ProjectionParams.y - _CameraDepthFadeOffset ) / _CameraDepthFadeLength);
				float temp_output_20_0_g667 = saturate( cameraDepthFade511 );
				float temp_output_4_0_g667 = _CameraDepthFadePower;
				float smoothstepResult22_g667 = smoothstep( temp_output_7_0_g667 , temp_output_23_0_g667 , pow( temp_output_20_0_g667 , temp_output_4_0_g667 ));
				float Camera_Depth_Fade526 = smoothstepResult22_g667;
				float temp_output_679_0 = saturate( ( ( saturate( ( Noise158 - staticSwitch655 ) ) * Fresnel_Mask592 * (packedInput.ase_color).a * Depth_Fade528 * Camera_Depth_Fade526 * _Alpha ) + ( Intersection_Highlight527 * Intersection_Highlight_Alpha593 ) ) );
				#ifdef _RADIALMASKSUBTRACTIVE_ON
				float staticSwitch683 = temp_output_679_0;
				#else
				float staticSwitch683 = ( temp_output_679_0 * ( 1.0 - Radial_Mask583 ) );
				#endif
				float Alpha697 = staticSwitch683;
				

				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				surfaceDescription.Color = Colour620.rgb;
				surfaceDescription.Emission = Colour_Input197;
				surfaceDescription.Alpha = Alpha697;

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

			#define ASE_PHONG_TESSELLATION
			#define _CONSERVATIVE_DEPTH_OFFSET
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define _DEPTHOFFSET_ON
			#define ASE_FIXED_TESSELLATION
			#pragma shader_feature_local_fragment _ENABLE_FOG_ON_TRANSPARENT
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#define ASE_TESSELLATION 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
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
			float4 _NoiseOffset;
			float4 _RadialMaskDistortionAnimation;
			float4 _VertexNoiseAnimation;
			float4 _VertexNoiseParticleAnimation;
			float4 _VertexNoiseOffset;
			float4 _VerticalColourB;
			float4 _NoiseAnimation;
			float4 _NoiseParticleAnimation;
			float4 _RadialMaskDistortionParticleAnimation;
			float4 _VerticalColourA;
			float4 _RadialMaskDistortionOffset;
			float4 _ColourA;
			float4 _IntersectionHighlightColour;
			float4 _NoiseDistortionOffset;
			float4 _ColourB;
			float4 _NoiseDistortionParticleAnimation;
			float4 _NoiseDistortionAnimation;
			float3 _VertexOffsetOverCircularY;
			float3 _NoiseTiling1;
			float3 _VertexOffsetOverY2;
			float3 _VertexOffsetOverY1;
			float3 _RadialMaskDistortionTiling;
			float3 _NoiseDistortionTiling;
			float3 _VertexNoiseTiling;
			float2 _RadialMaskTiling;
			float2 _RadialMaskOffset;
			float2 _SpherizeNoiseOffset;
			float _VerticalColourSaturationShift;
			float _VerticalColourHueShift;
			float _ColourSaturationShift;
			float _ColourValueMultiplier;
			float _StartFoldoutVertexNoise;
			float _ColourPower;
			float _Noise1;
			float _ParticleSubtractNoiseoverLifetime;
			float _VerticalColourValueMultiplier;
			float _NoisePower1;
			float _NoiseDilation1;
			float _NoiseOctaves;
			float _NoiseScale1;
			float _NoiseDistortion;
			float _NoiseDistortionPower;
			float _NoiseDistortionDilation;
			float _NoiseDistortionOctaves;
			float _ColourHueShift;
			float _VerticalColourMaskRemapMin;
			float _IntersectionHighlightColourSaturationShift;
			float _VerticalColourMaskPower;
			float _VerticalMask1Power;
			float _VerticalMask2RemapMin;
			float _VerticalMask2RemapMax;
			float _VerticalMask2ObjectSpaceOffset;
			float _VerticalMask2ObjectSpaceScale;
			float _VerticalMask2Power;
			float _FresnelMaskRemapMin;
			float _VerticalMask1ObjectSpaceScale;
			float _FresnelMaskRemapMax;
			float _FresnelMask;
			float _DepthFade;
			float _DepthFadePower;
			float _SubtractiveDepthFade;
			float _SubtractiveDepthFadePower;
			float _CameraDepthFadeLength;
			float _CameraDepthFadeOffset;
			float _FresnelMaskPower;
			float _VerticalColourMaskRemapMax;
			float _VerticalMask1ObjectSpaceOffset;
			float _VerticalMask1RemapMax;
			float _PulseSpeed;
			float _IntersectionHighlightColourHueShift;
			float _IntersectionHighlightColourValueMultiplier;
			float _IntersectionHighlightRemapMin;
			float _IntersectionHighlightRemapMax;
			float _IntersectionHighlight;
			float _IntersectionHighlightPower;
			float _VerticalMask1RemapMin;
			float _RadialMaskRadius;
			float _RadialMaskFeather;
			float _RadialMaskDistortionScale;
			float _RadialMaskDistortionOctaves;
			float _RadialMaskDistortionDilation;
			float _RadialMaskDistortionPower;
			float _RadialMaskDistortion;
			float _RadialMaskPower;
			float _RadialMaskRadiusOverParticleLifetime;
			float _NoiseDistortionScale;
			float _NoiseXZTwist;
			float _NoiseUVYPrePower;
			float _EndFoldoutRadialMask;
			float _StartFoldoutRadialMaskDistortion;
			float _EndFoldoutRadialMaskDistortion;
			float _StartFoldoutVerticalMasks;
			float _EndFoldoutVerticalMasks;
			float _StartFoldoutSpherizeNoise;
			float _EndFoldoutSpherizeNoise;
			float _StartFoldoutFresnelMask;
			float _EndFoldoutFresnelMask;
			float _StartFoldoutDepthFade;
			float _EndFoldoutDepthFade;
			float _StartFoldoutIntersectionHighlight;
			float _EndFoldoutIntersectionHighlight;
			float _StartFoldoutVertexUVOffset;
			float _EndFoldoutVertexOffsetoverY;
			float _StartFoldoutRadialMask;
			float _StartFoldoutParticleSettings;
			float _EndFoldoutNoiseDistortion;
			float _EndFoldoutNoise;
			float _EndFoldoutVertexNoise;
			float _EndFoldoutVertexWaveNoiseVerticalMask;
			float _StartFoldoutVertexOffsetoverY;
			float _StartFoldoutVertexWaveNoiseVerticalMask;
			float _EndFoldoutVertexUVOffset;
			float _StartFoldoutVertexNormalOffset;
			float _EndFoldoutVertexNormalOffset;
			float _StartFoldoutVertexWave;
			float _EndFoldoutVertexWave;
			float _StartFoldoutLighting;
			float _EndFoldoutBaseUVs;
			float _StartFoldoutColour;
			float _EndFoldoutColour;
			float _StartFoldoutVerticalColour;
			float _EndFoldoutVerticalColour;
			float _StartFoldoutNoiseDistortion;
			float _EndFoldoutLighting;
			float _StartFoldoutNoise;
			float _StartFoldoutBaseUVs;
			float _VertexUVOffsetTopPower;
			float _VertexUVOffsetTop;
			float _VertexUVOffsetBottomPower;
			float _VertexUVOffsetBottom;
			float _VertexTwist;
			float _VertexOffsetOverY1Power;
			float _VertexOffsetOverY2Power;
			float _VertexOffsetOverCircularYPower;
			float _NoiseRemapMin;
			float _NoiseRemapMax;
			float _SpherizeNoiseRadius;
			float _SpherizeNoiseStrength;
			float _CameraDepthFadePower;
			float _NoiseUVYPreOffset;
			float _NoiseUVYPreScale;
			float _VertexNoise;
			float _VertexNoiseTwist;
			float _VertexNoiseDilation;
			float _VertexNoiseOctaves;
			float _EndFoldoutParticleSettings;
			float _Tessellation;
			float _VertexNormalOffset;
			float _VertexNormalOffsetTopPower;
			float _VertexNormalOffsetTop;
			float _VertexNormalOffsetBottomPower;
			float _VertexNormalOffsetBottom;
			float _NoiseParallaxOffset;
			float _VertexWaveScale;
			float _VertexWaveOffset;
			float _VertexWave;
			float _VertexWaveNoiseVerticalMaskRemapMin;
			float _VertexWaveNoiseVerticalMaskRemapMax;
			float _VertexWaveNoiseVerticalMaskPower;
			float _VertexNoiseScale;
			float _ParticleRandomization;
			float _VertexWaveAnimation;
			float _Alpha;
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

			#include "VFXToolkit/Shaders/_Includes/Math.cginc"
			#include "VFXToolkit/Shaders/_Includes/Noise.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_TEXTURE_COORDINATES0
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_TEXTURE_COORDINATES2
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES2
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#define ASE_NEEDS_TEXTURE_COORDINATES1
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES1
			#pragma shader_feature_local _SWAPUVXY_ON
			#pragma shader_feature_local _VERTEXWAVEENABLED_ON
			#pragma shader_feature_local _VERTEXNOISEENABLED_ON
			#pragma shader_feature_local _VERTEXNOISEDILATIONENABLED_ON
			#pragma shader_feature_local _RADIALMASKSUBTRACTIVE_ON
			#pragma shader_feature_local _NOISEDILATIONENABLED_ON
			#pragma shader_feature_local _NOISEXZTWISTENABLED_ON
			#pragma shader_feature_local _SPHERIZENOISE_ON
			#pragma shader_feature_local _WORLDSPACEUVS_ON
			#pragma shader_feature_local _OBJECTSPACEUVS_ON
			#pragma shader_feature_local _NOISEDISTORTIONENABLED_ON
			#pragma shader_feature_local _NOISEDISTORTIONDILATIONENABLED_ON
			#pragma shader_feature_local _VERTICALMASK2_ON
			#pragma shader_feature_local _VERTICALMASK1_ON
			#pragma shader_feature_local _RADIALMASK_ON
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
				float4 ase_texcoord2 : TEXCOORD2;
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
				float4 ase_texcoord6 : TEXCOORD6;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};


			
			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
				float DepthOffset;
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

				float localTwistXZ_float11_g696 = ( 0.0 );
				float2 texCoord383 = inputMesh.ase_texcoord * float2( 1,1 ) + float2( 0,0 );
				#ifdef _SWAPUVXY_ON
				float2 staticSwitch387 = (texCoord383).yx;
				#else
				float2 staticSwitch387 = texCoord383;
				#endif
				float UV_2D_Y397 = (staticSwitch387).y;
				float3 Vertex_Normal_Offset466 = ( ( inputMesh.normalOS * _VertexNormalOffset ) + ( pow( UV_2D_Y397 , _VertexNormalOffsetTopPower ) * inputMesh.normalOS * _VertexNormalOffsetTop ) + ( pow( ( 1.0 - UV_2D_Y397 ) , _VertexNormalOffsetBottomPower ) * inputMesh.normalOS * _VertexNormalOffsetBottom ) );
				float2 UV_2D389 = staticSwitch387;
				float mulTime741 = _TimeParameters.x * _VertexWaveAnimation;
				float temp_output_7_0_g690 = _VertexWaveNoiseVerticalMaskRemapMin;
				float temp_output_23_0_g690 = _VertexWaveNoiseVerticalMaskRemapMax;
				float temp_output_20_0_g690 = UV_2D_Y397;
				float temp_output_4_0_g690 = _VertexWaveNoiseVerticalMaskPower;
				float smoothstepResult22_g690 = smoothstep( temp_output_7_0_g690 , temp_output_23_0_g690 , pow( temp_output_20_0_g690 , temp_output_4_0_g690 ));
				float Vertex_WaveNoise_Vertical_Mask1242 = smoothstepResult22_g690;
				#ifdef _VERTEXWAVEENABLED_ON
				float3 staticSwitch783 = ( ( sin( ( ( UV_2D389.y * TWO_PI * _VertexWaveScale ) - ( mulTime741 + ( _VertexWaveOffset * TWO_PI ) ) ) ) * _VertexWave * Vertex_WaveNoise_Vertical_Mask1242 ) * inputMesh.normalOS );
				#else
				float3 staticSwitch783 = float3( 0,0,0 );
				#endif
				float3 Vertex_Sine787 = staticSwitch783;
				float localTwistXZ_float11_g694 = ( 0.0 );
				float localSimplexNoise_float2_g693 = ( 0.0 );
				#ifdef _SWAPUVXY_ON
				float3 staticSwitch386 = (inputMesh.positionOS).yxz;
				#else
				float3 staticSwitch386 = inputMesh.positionOS;
				#endif
				float3 UV_3D388 = staticSwitch386;
				float3 ase_positionWS = GetAbsolutePositionWS( TransformObjectToWorld( ( inputMesh.positionOS ).xyz ) );
				#ifdef _SWAPUVXY4_ON
				float3 staticSwitch370 = (ase_positionWS).yxz;
				#else
				float3 staticSwitch370 = ase_positionWS;
				#endif
				float3 UV_3D_World371 = staticSwitch370;
				#ifdef _WORLDSPACEUVS2_ON
				float3 staticSwitch732 = UV_3D_World371;
				#else
				float3 staticSwitch732 = UV_3D388;
				#endif
				float Particle_Stable_Random_X414 = ( ( inputMesh.ase_texcoord.w - 0.5 ) * 100.0 * _ParticleRandomization );
				float Particle_Age_Percent413 = inputMesh.ase_texcoord.z;
				float4 Vertex_Noise_Offset724 = ( _VertexNoiseOffset + Particle_Stable_Random_X414 + ( _VertexNoiseParticleAnimation * Particle_Age_Percent413 ) );
				float4 temp_output_10_0_g688 = ( float4( ( staticSwitch732 * _VertexNoiseScale * _VertexNoiseTiling ) , 0.0 ) - ( Vertex_Noise_Offset724 + ( _VertexNoiseAnimation * _TimeParameters.x ) ) );
				float3 temp_output_744_0 = (temp_output_10_0_g688).xyz;
				float3 position2_g693 = temp_output_744_0;
				float temp_output_744_15 = (temp_output_10_0_g688).w;
				float angle2_g693 = temp_output_744_15;
				float octaves2_g693 = _VertexNoiseOctaves;
				float noise2_g693 = 0.0;
				float3 gradient2_g693 = float3( 0,0,0 );
				SimplexNoise_float( position2_g693 , angle2_g693 , octaves2_g693 , noise2_g693 , gradient2_g693 );
				float localSimplexNoise_Caustics_float2_g692 = ( 0.0 );
				float3 position2_g692 = temp_output_744_0;
				float angle2_g692 = temp_output_744_15;
				float octaves2_g692 = _VertexNoiseOctaves;
				float gradientStrength2_g692 = _VertexNoiseDilation;
				float noise2_g692 = 0.0;
				float3 gradient2_g692 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g692 , angle2_g692 , octaves2_g692 , gradientStrength2_g692 , noise2_g692 , gradient2_g692 );
				#ifdef _VERTEXNOISEDILATIONENABLED_ON
				float3 staticSwitch759 = gradient2_g692;
				#else
				float3 staticSwitch759 = gradient2_g693;
				#endif
				float3 temp_output_10_0_g694 = staticSwitch759;
				float3 position11_g694 = temp_output_10_0_g694;
				float temp_output_9_0_g694 = _VertexNoiseTwist;
				float angle11_g694 = radians( temp_output_9_0_g694 );
				float3 output11_g694 = float3( 0,0,0 );
				TwistXZ_float( position11_g694 , angle11_g694 , output11_g694 );
				float3 temp_output_769_0 = output11_g694;
				#ifdef _VERTEXNOISEENABLED_ON
				float3 staticSwitch786 = ( temp_output_769_0 * _VertexNoise * Vertex_WaveNoise_Vertical_Mask1242 );
				#else
				float3 staticSwitch786 = float3( 0,0,0 );
				#endif
				float3 Vertex_Noise790 = staticSwitch786;
				float2 break749 = ( ( UV_2D389 * float2( 2,1 ) ) - float2( 1,0 ) );
				float temp_output_773_0 = ( ( break749.x * pow( break749.y , _VertexUVOffsetTopPower ) ) * ( _VertexUVOffsetTop * 0.5 ) );
				float3 appendResult779 = (float3(temp_output_773_0 , 0.0 , 0.0));
				float3 appendResult778 = (float3(0.0 , temp_output_773_0 , 0.0));
				#ifdef _SWAPUVXY_ON
				float3 staticSwitch784 = appendResult778;
				#else
				float3 staticSwitch784 = appendResult779;
				#endif
				float3 Vertex_Offset_Top788 = staticSwitch784;
				float2 break742 = ( ( UV_2D389 * float2( 2,1 ) ) - float2( 1,0 ) );
				float temp_output_772_0 = ( ( break742.x * pow( ( 1.0 - break742.y ) , _VertexUVOffsetBottomPower ) ) * ( _VertexUVOffsetBottom * 0.5 ) );
				float3 appendResult781 = (float3(temp_output_772_0 , 0.0 , 0.0));
				float3 appendResult780 = (float3(0.0 , temp_output_772_0 , 0.0));
				#ifdef _SWAPUVXY_ON
				float3 staticSwitch785 = appendResult780;
				#else
				float3 staticSwitch785 = appendResult781;
				#endif
				float3 Vertex_Offset_Bottom789 = staticSwitch785;
				float3 temp_output_10_0_g696 = ( ( Vertex_Normal_Offset466 + Vertex_Sine787 + Vertex_Noise790 + Vertex_Offset_Top788 + Vertex_Offset_Bottom789 ) + inputMesh.positionOS );
				float3 position11_g696 = temp_output_10_0_g696;
				float temp_output_9_0_g696 = -_VertexTwist;
				float angle11_g696 = radians( temp_output_9_0_g696 );
				float3 output11_g696 = float3( 0,0,0 );
				TwistXZ_float( position11_g696 , angle11_g696 , output11_g696 );
				float3 worldToObjDir467 = mul( GetWorldToObjectMatrix(), float4( _VertexOffsetOverY1, 0.0 ) ).xyz;
				float3 worldToObjDir469 = mul( GetWorldToObjectMatrix(), float4( _VertexOffsetOverY2, 0.0 ) ).xyz;
				float UV_2D_Circular_Y455 = sin( ( UV_2D_Y397 * PI ) );
				float3 Vertex_Offset_over_Y485 = ( ( worldToObjDir467 * pow( UV_2D_Y397 , _VertexOffsetOverY1Power ) ) + ( worldToObjDir469 * pow( UV_2D_Y397 , _VertexOffsetOverY2Power ) ) + ( _VertexOffsetOverCircularY * pow( UV_2D_Circular_Y455 , _VertexOffsetOverCircularYPower ) ) );
				float3 Vertex_Offset1398 = ( output11_g696 + Vertex_Offset_over_Y485 );
				
				o.ase_texcoord2.xyz = ase_positionWS;
				float3 ase_normalWS = TransformObjectToWorldNormal( inputMesh.normalOS );
				o.ase_texcoord5.xyz = ase_normalWS;
				float4 ase_positionCS = TransformWorldToHClip( TransformObjectToWorld( ( inputMesh.positionOS ).xyz ) );
				float4 screenPos = ComputeScreenPos( ase_positionCS, _ProjectionParams.x );
				o.ase_texcoord6 = screenPos;
				float3 objectToViewPos = TransformWorldToView( TransformObjectToWorld( inputMesh.positionOS ) );
				float eyeDepth = -objectToViewPos.z;
				o.ase_texcoord2.w = eyeDepth;
				
				o.ase_texcoord = inputMesh.ase_texcoord;
				o.ase_texcoord1 = float4(inputMesh.positionOS,1);
				o.ase_texcoord3 = inputMesh.ase_texcoord2;
				o.ase_texcoord4 = inputMesh.ase_texcoord1;
				o.ase_color = inputMesh.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord5.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =  Vertex_Offset1398;
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
				float4 ase_texcoord2 : TEXCOORD2;
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
				o.ase_texcoord2 = v.ase_texcoord2;
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
				o.ase_texcoord2 = patch[0].ase_texcoord2 * bary.x + patch[1].ase_texcoord2 * bary.y + patch[2].ase_texcoord2 * bary.z;
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

				float temp_output_7_0_g664 = _NoiseRemapMin;
				float temp_output_23_0_g664 = _NoiseRemapMax;
				float localSimplexNoise_float2_g661 = ( 0.0 );
				float2 texCoord383 = packedInput.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				#ifdef _SWAPUVXY_ON
				float2 staticSwitch387 = (texCoord383).yx;
				#else
				float2 staticSwitch387 = texCoord383;
				#endif
				float2 UV_2D389 = staticSwitch387;
				#ifdef _SWAPUVXY_ON
				float3 staticSwitch386 = (packedInput.ase_texcoord1.xyz).yxz;
				#else
				float3 staticSwitch386 = packedInput.ase_texcoord1.xyz;
				#endif
				float3 UV_3D388 = staticSwitch386;
				#ifdef _OBJECTSPACEUVS_ON
				float3 staticSwitch291 = UV_3D388;
				#else
				float3 staticSwitch291 = float3( UV_2D389 ,  0.0 );
				#endif
				float3 ase_positionWS = packedInput.ase_texcoord2.xyz;
				#ifdef _SWAPUVXY4_ON
				float3 staticSwitch370 = (ase_positionWS).yxz;
				#else
				float3 staticSwitch370 = ase_positionWS;
				#endif
				float3 UV_3D_World371 = staticSwitch370;
				#ifdef _WORLDSPACEUVS_ON
				float3 staticSwitch293 = UV_3D_World371;
				#else
				float3 staticSwitch293 = staticSwitch291;
				#endif
				float3 appendResult1244 = (float3(packedInput.ase_texcoord3.y , packedInput.ase_texcoord3.z , packedInput.ase_texcoord3.w));
				float3 Particle_Rotation_3D1248 = appendResult1244;
				float3 Noise_Base_UV296 = ( staticSwitch293 + Particle_Rotation_3D1248 );
				float localSpherize_float5_g631 = ( 0.0 );
				float2 uv5_g631 = (Noise_Base_UV296).xy;
				float2 center5_g631 = ( _SpherizeNoiseOffset + float2( 0.5,0.5 ) );
				float radius5_g631 = _SpherizeNoiseRadius;
				float strength5_g631 = _SpherizeNoiseStrength;
				float2 output5_g631 = float2( 0,0 );
				Spherize_float( uv5_g631 , center5_g631 , radius5_g631 , strength5_g631 , output5_g631 );
				float3 appendResult219 = (float3(output5_g631 , (Noise_Base_UV296).z));
				#ifdef _SPHERIZENOISE_ON
				float3 staticSwitch221 = appendResult219;
				#else
				float3 staticSwitch221 = Noise_Base_UV296;
				#endif
				float localTwistXZ_float11_g638 = ( 0.0 );
				float3 temp_output_10_0_g638 = staticSwitch221;
				float3 position11_g638 = temp_output_10_0_g638;
				float temp_output_9_0_g638 = _NoiseXZTwist;
				float angle11_g638 = radians( temp_output_9_0_g638 );
				float3 output11_g638 = float3( 0,0,0 );
				TwistXZ_float( position11_g638 , angle11_g638 , output11_g638 );
				#ifdef _NOISEXZTWISTENABLED_ON
				float3 staticSwitch224 = output11_g638;
				#else
				float3 staticSwitch224 = staticSwitch221;
				#endif
				float3 break225 = staticSwitch224;
				float temp_output_230_0 = ( ( break225.y - _NoiseUVYPreOffset ) * _NoiseUVYPreScale );
				float temp_output_7_0_g643 = abs( temp_output_230_0 );
				float temp_output_232_14 = ( pow( temp_output_7_0_g643 , _NoiseUVYPrePower ) * sign( temp_output_230_0 ) );
				float3 appendResult234 = (float3(break225.x , temp_output_232_14 , break225.z));
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_positionWS );
				float3 ase_viewDirWS = normalize( ase_viewVectorWS );
				float3 temp_output_363_0 = ( -ase_viewDirWS * _NoiseParallaxOffset );
				#ifdef _SWAPUVXY3_ON
				float3 staticSwitch365 = (temp_output_363_0).yxz;
				#else
				float3 staticSwitch365 = temp_output_363_0;
				#endif
				float3 Parallax_Offset366 = staticSwitch365;
				float localSimplexNoise_float2_g637 = ( 0.0 );
				float Particle_Stable_Random_X414 = ( ( packedInput.ase_texcoord.w - 0.5 ) * 100.0 * _ParticleRandomization );
				float Particle_Age_Percent413 = packedInput.ase_texcoord.z;
				float4 Distortion_Noise_Offset360 = ( _NoiseDistortionOffset + Particle_Stable_Random_X414 + ( _NoiseDistortionParticleAnimation * Particle_Age_Percent413 ) );
				float4 temp_output_10_0_g632 = ( float4( ( ( Noise_Base_UV296 + Parallax_Offset366 ) * _NoiseDistortionScale * _NoiseDistortionTiling ) , 0.0 ) - ( Distortion_Noise_Offset360 + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 temp_output_341_0 = (temp_output_10_0_g632).xyz;
				float3 position2_g637 = temp_output_341_0;
				float temp_output_341_15 = (temp_output_10_0_g632).w;
				float angle2_g637 = temp_output_341_15;
				float octaves2_g637 = _NoiseDistortionOctaves;
				float noise2_g637 = 0.0;
				float3 gradient2_g637 = float3( 0,0,0 );
				SimplexNoise_float( position2_g637 , angle2_g637 , octaves2_g637 , noise2_g637 , gradient2_g637 );
				float localSimplexNoise_Caustics_float2_g636 = ( 0.0 );
				float3 position2_g636 = temp_output_341_0;
				float angle2_g636 = temp_output_341_15;
				float octaves2_g636 = _NoiseDistortionOctaves;
				float gradientStrength2_g636 = _NoiseDistortionDilation;
				float noise2_g636 = 0.0;
				float3 gradient2_g636 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g636 , angle2_g636 , octaves2_g636 , gradientStrength2_g636 , noise2_g636 , gradient2_g636 );
				#ifdef _NOISEDISTORTIONDILATIONENABLED_ON
				float3 staticSwitch346 = gradient2_g636;
				#else
				float3 staticSwitch346 = gradient2_g637;
				#endif
				float3 temp_output_7_0_g641 = abs( staticSwitch346 );
				float3 temp_cast_2 = (_NoiseDistortionPower).xxx;
				#ifdef _NOISEDISTORTIONENABLED_ON
				float3 staticSwitch351 = ( ( pow( temp_output_7_0_g641 , temp_cast_2 ) * sign( staticSwitch346 ) ) * _NoiseDistortion );
				#else
				float3 staticSwitch351 = float3( 0,0,0 );
				#endif
				float3 Noise_Distortion352 = staticSwitch351;
				float3 Noise_UV238 = ( appendResult234 + Parallax_Offset366 + Noise_Distortion352 );
				float4 Noise_Offset210 = ( _NoiseOffset + Particle_Stable_Random_X414 + ( _NoiseParticleAnimation * Particle_Age_Percent413 ) );
				float4 temp_output_10_0_g655 = ( float4( ( Noise_UV238 * _NoiseScale1 * _NoiseTiling1 ) , 0.0 ) - ( Noise_Offset210 + ( _NoiseAnimation * _TimeParameters.x ) ) );
				float3 temp_output_145_0 = (temp_output_10_0_g655).xyz;
				float3 position2_g661 = temp_output_145_0;
				float temp_output_145_15 = (temp_output_10_0_g655).w;
				float angle2_g661 = temp_output_145_15;
				float octaves2_g661 = _NoiseOctaves;
				float noise2_g661 = 0.0;
				float3 gradient2_g661 = float3( 0,0,0 );
				SimplexNoise_float( position2_g661 , angle2_g661 , octaves2_g661 , noise2_g661 , gradient2_g661 );
				float localSimplexNoise_Caustics_float2_g660 = ( 0.0 );
				float3 position2_g660 = temp_output_145_0;
				float angle2_g660 = temp_output_145_15;
				float octaves2_g660 = _NoiseOctaves;
				float gradientStrength2_g660 = _NoiseDilation1;
				float noise2_g660 = 0.0;
				float3 gradient2_g660 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g660 , angle2_g660 , octaves2_g660 , gradientStrength2_g660 , noise2_g660 , gradient2_g660 );
				#ifdef _NOISEDILATIONENABLED_ON
				float staticSwitch148 = noise2_g660;
				#else
				float staticSwitch148 = noise2_g661;
				#endif
				float temp_output_20_0_g664 = staticSwitch148;
				float temp_output_4_0_g664 = _NoisePower1;
				float smoothstepResult22_g664 = smoothstep( temp_output_7_0_g664 , temp_output_23_0_g664 , pow( temp_output_20_0_g664 , temp_output_4_0_g664 ));
				float Particle_Subtract_Noise_over_Lifetime419 = ( packedInput.ase_texcoord4.y * _ParticleSubtractNoiseoverLifetime );
				float temp_output_154_0 = ( smoothstepResult22_g664 - Particle_Subtract_Noise_over_Lifetime419 );
				float lerpResult157 = lerp( 1.0 , temp_output_154_0 , _Noise1);
				float Noise158 = lerpResult157;
				float Particle_Mask_Radius_over_Lifetime416 = packedInput.ase_texcoord4.x;
				float lerpResult571 = lerp( 1.0 , Particle_Mask_Radius_over_Lifetime416 , _RadialMaskRadiusOverParticleLifetime);
				float temp_output_6_0_g657 = ( 1.0 - ( _RadialMaskRadius * lerpResult571 ) );
				float lerpResult5_g657 = lerp( temp_output_6_0_g657 , 1.0 , _RadialMaskFeather);
				float2 texCoord390 = packedInput.ase_texcoord.xy * float2( 2,2 ) + float2( -1,-1 );
				#ifdef _SWAPUVXY_ON
				float2 staticSwitch392 = (texCoord390).yx;
				#else
				float2 staticSwitch392 = texCoord390;
				#endif
				float2 UV_2D_Centered393 = staticSwitch392;
				float localSimplexNoise_float2_g634 = ( 0.0 );
				float4 Mask_Distortion_Noise_Offset285 = ( _RadialMaskDistortionOffset + Particle_Stable_Random_X414 + ( _RadialMaskDistortionParticleAnimation * Particle_Age_Percent413 ) );
				float4 temp_output_10_0_g625 = ( float4( ( Noise_Base_UV296 * _RadialMaskDistortionScale * _RadialMaskDistortionTiling ) , 0.0 ) - ( Mask_Distortion_Noise_Offset285 + ( _RadialMaskDistortionAnimation * _TimeParameters.x ) ) );
				float3 temp_output_262_0 = (temp_output_10_0_g625).xyz;
				float3 position2_g634 = temp_output_262_0;
				float temp_output_262_15 = (temp_output_10_0_g625).w;
				float angle2_g634 = temp_output_262_15;
				float octaves2_g634 = _RadialMaskDistortionOctaves;
				float noise2_g634 = 0.0;
				float3 gradient2_g634 = float3( 0,0,0 );
				SimplexNoise_float( position2_g634 , angle2_g634 , octaves2_g634 , noise2_g634 , gradient2_g634 );
				float localSimplexNoise_Caustics_float2_g635 = ( 0.0 );
				float3 position2_g635 = temp_output_262_0;
				float angle2_g635 = temp_output_262_15;
				float octaves2_g635 = _RadialMaskDistortionOctaves;
				float gradientStrength2_g635 = _RadialMaskDistortionDilation;
				float noise2_g635 = 0.0;
				float3 gradient2_g635 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g635 , angle2_g635 , octaves2_g635 , gradientStrength2_g635 , noise2_g635 , gradient2_g635 );
				#ifdef _RADIALMASKDISTORTIONDILATIONENABLED_ON
				float3 staticSwitch267 = gradient2_g635;
				#else
				float3 staticSwitch267 = gradient2_g634;
				#endif
				float3 temp_output_7_0_g640 = abs( staticSwitch267 );
				float3 temp_cast_5 = (_RadialMaskDistortionPower).xxx;
				#ifdef _RADIALMASKDISTORTIONENABLED_ON
				float3 staticSwitch272 = ( ( pow( temp_output_7_0_g640 , temp_cast_5 ) * sign( staticSwitch267 ) ) * _RadialMaskDistortion );
				#else
				float3 staticSwitch272 = float3( 0,0,0 );
				#endif
				float3 Mask_Distortion273 = staticSwitch272;
				float temp_output_7_0_g657 = ( 1.0 - length( ( ( ( UV_2D_Centered393 + (Mask_Distortion273).xy ) - _RadialMaskOffset ) * _RadialMaskTiling ) ) );
				float smoothstepResult4_g657 = smoothstep( temp_output_6_0_g657 , lerpResult5_g657 , temp_output_7_0_g657);
				#ifdef _RADIALMASK_ON
				float staticSwitch582 = ( 1.0 - pow( smoothstepResult4_g657 , _RadialMaskPower ) );
				#else
				float staticSwitch582 = 0.0;
				#endif
				float Radial_Mask583 = staticSwitch582;
				#ifdef _RADIALMASKSUBTRACTIVE_ON
				float staticSwitch644 = Radial_Mask583;
				#else
				float staticSwitch644 = 0.0;
				#endif
				float temp_output_7_0_g662 = _VerticalMask1RemapMax;
				float temp_output_23_0_g662 = _VerticalMask1RemapMin;
				float UV_2D_Y397 = (staticSwitch387).y;
				float UV_3D_Y395 = (staticSwitch386).y;
				#ifdef _VERTICALMASKSOBJECTSPACE_ON
				float staticSwitch1257 = ( ( UV_3D_Y395 - _VerticalMask1ObjectSpaceOffset ) / _VerticalMask1ObjectSpaceScale );
				#else
				float staticSwitch1257 = UV_2D_Y397;
				#endif
				float temp_output_20_0_g662 = staticSwitch1257;
				float smoothstepResult25_g662 = smoothstep( temp_output_7_0_g662 , temp_output_23_0_g662 , temp_output_20_0_g662);
				float temp_output_4_0_g662 = _VerticalMask1Power;
				float temp_output_1265_0 = pow( smoothstepResult25_g662 , temp_output_4_0_g662 );
				#ifdef _VERTICALMASK1SUBTRACTIVE_ON
				float staticSwitch1269 = ( 1.0 - temp_output_1265_0 );
				#else
				float staticSwitch1269 = temp_output_1265_0;
				#endif
				float Vertical_Mask_11278 = staticSwitch1269;
				#ifdef _VERTICALMASK1SUBTRACTIVE_ON
				float staticSwitch646 = ( staticSwitch644 + Vertical_Mask_11278 );
				#else
				float staticSwitch646 = staticSwitch644;
				#endif
				#ifdef _VERTICALMASK1_ON
				float staticSwitch648 = staticSwitch646;
				#else
				float staticSwitch648 = staticSwitch644;
				#endif
				float temp_output_7_0_g663 = _VerticalMask2RemapMin;
				float temp_output_23_0_g663 = _VerticalMask2RemapMax;
				#ifdef _VERTICALMASKSOBJECTSPACE_ON
				float staticSwitch1273 = ( ( UV_3D_Y395 - _VerticalMask2ObjectSpaceOffset ) / _VerticalMask2ObjectSpaceScale );
				#else
				float staticSwitch1273 = UV_2D_Y397;
				#endif
				float temp_output_20_0_g663 = staticSwitch1273;
				float smoothstepResult25_g663 = smoothstep( temp_output_7_0_g663 , temp_output_23_0_g663 , temp_output_20_0_g663);
				float temp_output_4_0_g663 = _VerticalMask2Power;
				float temp_output_1274_0 = pow( smoothstepResult25_g663 , temp_output_4_0_g663 );
				#ifdef _VERTICALMASK2SUBTRACTIVE_ON
				float staticSwitch1276 = ( 1.0 - temp_output_1274_0 );
				#else
				float staticSwitch1276 = temp_output_1274_0;
				#endif
				float Vertical_Mask_21277 = staticSwitch1276;
				#ifdef _VERTICALMASK2SUBTRACTIVE_ON
				float staticSwitch650 = ( staticSwitch648 + Vertical_Mask_21277 );
				#else
				float staticSwitch650 = staticSwitch648;
				#endif
				#ifdef _VERTICALMASK2_ON
				float staticSwitch655 = staticSwitch650;
				#else
				float staticSwitch655 = staticSwitch648;
				#endif
				float3 ase_normalWS = packedInput.ase_texcoord5.xyz;
				float fresnelNdotV585 = dot( ase_normalWS, ase_viewDirWS );
				float fresnelNode585 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV585, _FresnelMaskPower ) );
				float smoothstepResult588 = smoothstep( _FresnelMaskRemapMin , _FresnelMaskRemapMax , fresnelNode585);
				float lerpResult590 = lerp( 1.0 , smoothstepResult588 , _FresnelMask);
				float Fresnel_Mask592 = lerpResult590;
				float temp_output_7_0_g665 = 0.0;
				float temp_output_23_0_g665 = 1.0;
				float4 screenPos = packedInput.ase_texcoord6;
				float4 ase_positionSSNorm = screenPos / screenPos.w;
				ase_positionSSNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_positionSSNorm.z : ase_positionSSNorm.z * 0.5 + 0.5;
				float screenDepth501 = LinearEyeDepth(SampleCameraDepth( ase_positionSSNorm.xy ),_ZBufferParams);
				float distanceDepth501 = saturate( abs( ( screenDepth501 - LinearEyeDepth( ase_positionSSNorm.z,_ZBufferParams ) ) / ( _DepthFade ) ) );
				#ifdef _INVERTDEPTHFADE_ON
				float staticSwitch505 = ( 1.0 - distanceDepth501 );
				#else
				float staticSwitch505 = distanceDepth501;
				#endif
				float temp_output_20_0_g665 = staticSwitch505;
				float temp_output_4_0_g665 = _DepthFadePower;
				float smoothstepResult22_g665 = smoothstep( temp_output_7_0_g665 , temp_output_23_0_g665 , pow( temp_output_20_0_g665 , temp_output_4_0_g665 ));
				float temp_output_7_0_g666 = 0.0;
				float temp_output_23_0_g666 = 1.0;
				float screenDepth503 = LinearEyeDepth(SampleCameraDepth( ase_positionSSNorm.xy ),_ZBufferParams);
				float distanceDepth503 = saturate( abs( ( screenDepth503 - LinearEyeDepth( ase_positionSSNorm.z,_ZBufferParams ) ) / ( _SubtractiveDepthFade ) ) );
				float temp_output_20_0_g666 = ( 1.0 - distanceDepth503 );
				float temp_output_4_0_g666 = _SubtractiveDepthFadePower;
				float smoothstepResult22_g666 = smoothstep( temp_output_7_0_g666 , temp_output_23_0_g666 , pow( temp_output_20_0_g666 , temp_output_4_0_g666 ));
				float Depth_Fade528 = saturate( ( smoothstepResult22_g665 - smoothstepResult22_g666 ) );
				float temp_output_7_0_g667 = 0.0;
				float temp_output_23_0_g667 = 1.0;
				float eyeDepth = packedInput.ase_texcoord2.w;
				float cameraDepthFade511 = (( eyeDepth -_ProjectionParams.y - _CameraDepthFadeOffset ) / _CameraDepthFadeLength);
				float temp_output_20_0_g667 = saturate( cameraDepthFade511 );
				float temp_output_4_0_g667 = _CameraDepthFadePower;
				float smoothstepResult22_g667 = smoothstep( temp_output_7_0_g667 , temp_output_23_0_g667 , pow( temp_output_20_0_g667 , temp_output_4_0_g667 ));
				float Camera_Depth_Fade526 = smoothstepResult22_g667;
				float temp_output_7_0_g691 = _IntersectionHighlightRemapMin;
				float temp_output_23_0_g691 = _IntersectionHighlightRemapMax;
				float screenDepth518 = LinearEyeDepth(SampleCameraDepth( ase_positionSSNorm.xy ),_ZBufferParams);
				float distanceDepth518 = saturate( abs( ( screenDepth518 - LinearEyeDepth( ase_positionSSNorm.z,_ZBufferParams ) ) / ( _IntersectionHighlight ) ) );
				float temp_output_20_0_g691 = ( 1.0 - distanceDepth518 );
				float temp_output_4_0_g691 = _IntersectionHighlightPower;
				float smoothstepResult22_g691 = smoothstep( temp_output_7_0_g691 , temp_output_23_0_g691 , pow( temp_output_20_0_g691 , temp_output_4_0_g691 ));
				float Intersection_Highlight527 = smoothstepResult22_g691;
				float Intersection_Highlight_Alpha593 = _IntersectionHighlightColour.a;
				float temp_output_679_0 = saturate( ( ( saturate( ( Noise158 - staticSwitch655 ) ) * Fresnel_Mask592 * (packedInput.ase_color).a * Depth_Fade528 * Camera_Depth_Fade526 * _Alpha ) + ( Intersection_Highlight527 * Intersection_Highlight_Alpha593 ) ) );
				#ifdef _RADIALMASKSUBTRACTIVE_ON
				float staticSwitch683 = temp_output_679_0;
				#else
				float staticSwitch683 = ( temp_output_679_0 * ( 1.0 - Radial_Mask583 ) );
				#endif
				float Alpha697 = staticSwitch683;
				

				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				surfaceDescription.Alpha = Alpha697;

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

			#define ASE_PHONG_TESSELLATION
			#define _CONSERVATIVE_DEPTH_OFFSET
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define _DEPTHOFFSET_ON
			#define ASE_FIXED_TESSELLATION
			#pragma shader_feature_local_fragment _ENABLE_FOG_ON_TRANSPARENT
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#define ASE_TESSELLATION 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
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
			float4 _NoiseOffset;
			float4 _RadialMaskDistortionAnimation;
			float4 _VertexNoiseAnimation;
			float4 _VertexNoiseParticleAnimation;
			float4 _VertexNoiseOffset;
			float4 _VerticalColourB;
			float4 _NoiseAnimation;
			float4 _NoiseParticleAnimation;
			float4 _RadialMaskDistortionParticleAnimation;
			float4 _VerticalColourA;
			float4 _RadialMaskDistortionOffset;
			float4 _ColourA;
			float4 _IntersectionHighlightColour;
			float4 _NoiseDistortionOffset;
			float4 _ColourB;
			float4 _NoiseDistortionParticleAnimation;
			float4 _NoiseDistortionAnimation;
			float3 _VertexOffsetOverCircularY;
			float3 _NoiseTiling1;
			float3 _VertexOffsetOverY2;
			float3 _VertexOffsetOverY1;
			float3 _RadialMaskDistortionTiling;
			float3 _NoiseDistortionTiling;
			float3 _VertexNoiseTiling;
			float2 _RadialMaskTiling;
			float2 _RadialMaskOffset;
			float2 _SpherizeNoiseOffset;
			float _VerticalColourSaturationShift;
			float _VerticalColourHueShift;
			float _ColourSaturationShift;
			float _ColourValueMultiplier;
			float _StartFoldoutVertexNoise;
			float _ColourPower;
			float _Noise1;
			float _ParticleSubtractNoiseoverLifetime;
			float _VerticalColourValueMultiplier;
			float _NoisePower1;
			float _NoiseDilation1;
			float _NoiseOctaves;
			float _NoiseScale1;
			float _NoiseDistortion;
			float _NoiseDistortionPower;
			float _NoiseDistortionDilation;
			float _NoiseDistortionOctaves;
			float _ColourHueShift;
			float _VerticalColourMaskRemapMin;
			float _IntersectionHighlightColourSaturationShift;
			float _VerticalColourMaskPower;
			float _VerticalMask1Power;
			float _VerticalMask2RemapMin;
			float _VerticalMask2RemapMax;
			float _VerticalMask2ObjectSpaceOffset;
			float _VerticalMask2ObjectSpaceScale;
			float _VerticalMask2Power;
			float _FresnelMaskRemapMin;
			float _VerticalMask1ObjectSpaceScale;
			float _FresnelMaskRemapMax;
			float _FresnelMask;
			float _DepthFade;
			float _DepthFadePower;
			float _SubtractiveDepthFade;
			float _SubtractiveDepthFadePower;
			float _CameraDepthFadeLength;
			float _CameraDepthFadeOffset;
			float _FresnelMaskPower;
			float _VerticalColourMaskRemapMax;
			float _VerticalMask1ObjectSpaceOffset;
			float _VerticalMask1RemapMax;
			float _PulseSpeed;
			float _IntersectionHighlightColourHueShift;
			float _IntersectionHighlightColourValueMultiplier;
			float _IntersectionHighlightRemapMin;
			float _IntersectionHighlightRemapMax;
			float _IntersectionHighlight;
			float _IntersectionHighlightPower;
			float _VerticalMask1RemapMin;
			float _RadialMaskRadius;
			float _RadialMaskFeather;
			float _RadialMaskDistortionScale;
			float _RadialMaskDistortionOctaves;
			float _RadialMaskDistortionDilation;
			float _RadialMaskDistortionPower;
			float _RadialMaskDistortion;
			float _RadialMaskPower;
			float _RadialMaskRadiusOverParticleLifetime;
			float _NoiseDistortionScale;
			float _NoiseXZTwist;
			float _NoiseUVYPrePower;
			float _EndFoldoutRadialMask;
			float _StartFoldoutRadialMaskDistortion;
			float _EndFoldoutRadialMaskDistortion;
			float _StartFoldoutVerticalMasks;
			float _EndFoldoutVerticalMasks;
			float _StartFoldoutSpherizeNoise;
			float _EndFoldoutSpherizeNoise;
			float _StartFoldoutFresnelMask;
			float _EndFoldoutFresnelMask;
			float _StartFoldoutDepthFade;
			float _EndFoldoutDepthFade;
			float _StartFoldoutIntersectionHighlight;
			float _EndFoldoutIntersectionHighlight;
			float _StartFoldoutVertexUVOffset;
			float _EndFoldoutVertexOffsetoverY;
			float _StartFoldoutRadialMask;
			float _StartFoldoutParticleSettings;
			float _EndFoldoutNoiseDistortion;
			float _EndFoldoutNoise;
			float _EndFoldoutVertexNoise;
			float _EndFoldoutVertexWaveNoiseVerticalMask;
			float _StartFoldoutVertexOffsetoverY;
			float _StartFoldoutVertexWaveNoiseVerticalMask;
			float _EndFoldoutVertexUVOffset;
			float _StartFoldoutVertexNormalOffset;
			float _EndFoldoutVertexNormalOffset;
			float _StartFoldoutVertexWave;
			float _EndFoldoutVertexWave;
			float _StartFoldoutLighting;
			float _EndFoldoutBaseUVs;
			float _StartFoldoutColour;
			float _EndFoldoutColour;
			float _StartFoldoutVerticalColour;
			float _EndFoldoutVerticalColour;
			float _StartFoldoutNoiseDistortion;
			float _EndFoldoutLighting;
			float _StartFoldoutNoise;
			float _StartFoldoutBaseUVs;
			float _VertexUVOffsetTopPower;
			float _VertexUVOffsetTop;
			float _VertexUVOffsetBottomPower;
			float _VertexUVOffsetBottom;
			float _VertexTwist;
			float _VertexOffsetOverY1Power;
			float _VertexOffsetOverY2Power;
			float _VertexOffsetOverCircularYPower;
			float _NoiseRemapMin;
			float _NoiseRemapMax;
			float _SpherizeNoiseRadius;
			float _SpherizeNoiseStrength;
			float _CameraDepthFadePower;
			float _NoiseUVYPreOffset;
			float _NoiseUVYPreScale;
			float _VertexNoise;
			float _VertexNoiseTwist;
			float _VertexNoiseDilation;
			float _VertexNoiseOctaves;
			float _EndFoldoutParticleSettings;
			float _Tessellation;
			float _VertexNormalOffset;
			float _VertexNormalOffsetTopPower;
			float _VertexNormalOffsetTop;
			float _VertexNormalOffsetBottomPower;
			float _VertexNormalOffsetBottom;
			float _NoiseParallaxOffset;
			float _VertexWaveScale;
			float _VertexWaveOffset;
			float _VertexWave;
			float _VertexWaveNoiseVerticalMaskRemapMin;
			float _VertexWaveNoiseVerticalMaskRemapMax;
			float _VertexWaveNoiseVerticalMaskPower;
			float _VertexNoiseScale;
			float _ParticleRandomization;
			float _VertexWaveAnimation;
			float _Alpha;
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

			#include "VFXToolkit/Shaders/_Includes/Math.cginc"
			#include "VFXToolkit/Shaders/_Includes/Noise.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_TEXTURE_COORDINATES0
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_RELATIVE_WORLD_POS
			#define ASE_NEEDS_FRAG_RELATIVE_WORLD_POS
			#define ASE_NEEDS_TEXTURE_COORDINATES2
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES2
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#define ASE_NEEDS_TEXTURE_COORDINATES1
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES1
			#define ASE_NEEDS_FRAG_SCREEN_POSITION_NORMALIZED
			#pragma shader_feature_local _SWAPUVXY_ON
			#pragma shader_feature_local _VERTEXWAVEENABLED_ON
			#pragma shader_feature_local _VERTEXNOISEENABLED_ON
			#pragma shader_feature_local _VERTEXNOISEDILATIONENABLED_ON
			#pragma shader_feature_local _RADIALMASKSUBTRACTIVE_ON
			#pragma shader_feature_local _NOISEDILATIONENABLED_ON
			#pragma shader_feature_local _NOISEXZTWISTENABLED_ON
			#pragma shader_feature_local _SPHERIZENOISE_ON
			#pragma shader_feature_local _WORLDSPACEUVS_ON
			#pragma shader_feature_local _OBJECTSPACEUVS_ON
			#pragma shader_feature_local _NOISEDISTORTIONENABLED_ON
			#pragma shader_feature_local _NOISEDISTORTIONDILATIONENABLED_ON
			#pragma shader_feature_local _VERTICALMASK2_ON
			#pragma shader_feature_local _VERTICALMASK1_ON
			#pragma shader_feature_local _RADIALMASK_ON
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
				float4 ase_texcoord2 : TEXCOORD2;
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
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			
			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
				float DepthOffset;
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

				float localTwistXZ_float11_g696 = ( 0.0 );
				float2 texCoord383 = inputMesh.ase_texcoord * float2( 1,1 ) + float2( 0,0 );
				#ifdef _SWAPUVXY_ON
				float2 staticSwitch387 = (texCoord383).yx;
				#else
				float2 staticSwitch387 = texCoord383;
				#endif
				float UV_2D_Y397 = (staticSwitch387).y;
				float3 Vertex_Normal_Offset466 = ( ( inputMesh.normalOS * _VertexNormalOffset ) + ( pow( UV_2D_Y397 , _VertexNormalOffsetTopPower ) * inputMesh.normalOS * _VertexNormalOffsetTop ) + ( pow( ( 1.0 - UV_2D_Y397 ) , _VertexNormalOffsetBottomPower ) * inputMesh.normalOS * _VertexNormalOffsetBottom ) );
				float2 UV_2D389 = staticSwitch387;
				float mulTime741 = _TimeParameters.x * _VertexWaveAnimation;
				float temp_output_7_0_g690 = _VertexWaveNoiseVerticalMaskRemapMin;
				float temp_output_23_0_g690 = _VertexWaveNoiseVerticalMaskRemapMax;
				float temp_output_20_0_g690 = UV_2D_Y397;
				float temp_output_4_0_g690 = _VertexWaveNoiseVerticalMaskPower;
				float smoothstepResult22_g690 = smoothstep( temp_output_7_0_g690 , temp_output_23_0_g690 , pow( temp_output_20_0_g690 , temp_output_4_0_g690 ));
				float Vertex_WaveNoise_Vertical_Mask1242 = smoothstepResult22_g690;
				#ifdef _VERTEXWAVEENABLED_ON
				float3 staticSwitch783 = ( ( sin( ( ( UV_2D389.y * TWO_PI * _VertexWaveScale ) - ( mulTime741 + ( _VertexWaveOffset * TWO_PI ) ) ) ) * _VertexWave * Vertex_WaveNoise_Vertical_Mask1242 ) * inputMesh.normalOS );
				#else
				float3 staticSwitch783 = float3( 0,0,0 );
				#endif
				float3 Vertex_Sine787 = staticSwitch783;
				float localTwistXZ_float11_g694 = ( 0.0 );
				float localSimplexNoise_float2_g693 = ( 0.0 );
				#ifdef _SWAPUVXY_ON
				float3 staticSwitch386 = (inputMesh.positionOS).yxz;
				#else
				float3 staticSwitch386 = inputMesh.positionOS;
				#endif
				float3 UV_3D388 = staticSwitch386;
				float3 ase_positionWS = GetAbsolutePositionWS( TransformObjectToWorld( ( inputMesh.positionOS ).xyz ) );
				#ifdef _SWAPUVXY4_ON
				float3 staticSwitch370 = (ase_positionWS).yxz;
				#else
				float3 staticSwitch370 = ase_positionWS;
				#endif
				float3 UV_3D_World371 = staticSwitch370;
				#ifdef _WORLDSPACEUVS2_ON
				float3 staticSwitch732 = UV_3D_World371;
				#else
				float3 staticSwitch732 = UV_3D388;
				#endif
				float Particle_Stable_Random_X414 = ( ( inputMesh.ase_texcoord.w - 0.5 ) * 100.0 * _ParticleRandomization );
				float Particle_Age_Percent413 = inputMesh.ase_texcoord.z;
				float4 Vertex_Noise_Offset724 = ( _VertexNoiseOffset + Particle_Stable_Random_X414 + ( _VertexNoiseParticleAnimation * Particle_Age_Percent413 ) );
				float4 temp_output_10_0_g688 = ( float4( ( staticSwitch732 * _VertexNoiseScale * _VertexNoiseTiling ) , 0.0 ) - ( Vertex_Noise_Offset724 + ( _VertexNoiseAnimation * _TimeParameters.x ) ) );
				float3 temp_output_744_0 = (temp_output_10_0_g688).xyz;
				float3 position2_g693 = temp_output_744_0;
				float temp_output_744_15 = (temp_output_10_0_g688).w;
				float angle2_g693 = temp_output_744_15;
				float octaves2_g693 = _VertexNoiseOctaves;
				float noise2_g693 = 0.0;
				float3 gradient2_g693 = float3( 0,0,0 );
				SimplexNoise_float( position2_g693 , angle2_g693 , octaves2_g693 , noise2_g693 , gradient2_g693 );
				float localSimplexNoise_Caustics_float2_g692 = ( 0.0 );
				float3 position2_g692 = temp_output_744_0;
				float angle2_g692 = temp_output_744_15;
				float octaves2_g692 = _VertexNoiseOctaves;
				float gradientStrength2_g692 = _VertexNoiseDilation;
				float noise2_g692 = 0.0;
				float3 gradient2_g692 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g692 , angle2_g692 , octaves2_g692 , gradientStrength2_g692 , noise2_g692 , gradient2_g692 );
				#ifdef _VERTEXNOISEDILATIONENABLED_ON
				float3 staticSwitch759 = gradient2_g692;
				#else
				float3 staticSwitch759 = gradient2_g693;
				#endif
				float3 temp_output_10_0_g694 = staticSwitch759;
				float3 position11_g694 = temp_output_10_0_g694;
				float temp_output_9_0_g694 = _VertexNoiseTwist;
				float angle11_g694 = radians( temp_output_9_0_g694 );
				float3 output11_g694 = float3( 0,0,0 );
				TwistXZ_float( position11_g694 , angle11_g694 , output11_g694 );
				float3 temp_output_769_0 = output11_g694;
				#ifdef _VERTEXNOISEENABLED_ON
				float3 staticSwitch786 = ( temp_output_769_0 * _VertexNoise * Vertex_WaveNoise_Vertical_Mask1242 );
				#else
				float3 staticSwitch786 = float3( 0,0,0 );
				#endif
				float3 Vertex_Noise790 = staticSwitch786;
				float2 break749 = ( ( UV_2D389 * float2( 2,1 ) ) - float2( 1,0 ) );
				float temp_output_773_0 = ( ( break749.x * pow( break749.y , _VertexUVOffsetTopPower ) ) * ( _VertexUVOffsetTop * 0.5 ) );
				float3 appendResult779 = (float3(temp_output_773_0 , 0.0 , 0.0));
				float3 appendResult778 = (float3(0.0 , temp_output_773_0 , 0.0));
				#ifdef _SWAPUVXY_ON
				float3 staticSwitch784 = appendResult778;
				#else
				float3 staticSwitch784 = appendResult779;
				#endif
				float3 Vertex_Offset_Top788 = staticSwitch784;
				float2 break742 = ( ( UV_2D389 * float2( 2,1 ) ) - float2( 1,0 ) );
				float temp_output_772_0 = ( ( break742.x * pow( ( 1.0 - break742.y ) , _VertexUVOffsetBottomPower ) ) * ( _VertexUVOffsetBottom * 0.5 ) );
				float3 appendResult781 = (float3(temp_output_772_0 , 0.0 , 0.0));
				float3 appendResult780 = (float3(0.0 , temp_output_772_0 , 0.0));
				#ifdef _SWAPUVXY_ON
				float3 staticSwitch785 = appendResult780;
				#else
				float3 staticSwitch785 = appendResult781;
				#endif
				float3 Vertex_Offset_Bottom789 = staticSwitch785;
				float3 temp_output_10_0_g696 = ( ( Vertex_Normal_Offset466 + Vertex_Sine787 + Vertex_Noise790 + Vertex_Offset_Top788 + Vertex_Offset_Bottom789 ) + inputMesh.positionOS );
				float3 position11_g696 = temp_output_10_0_g696;
				float temp_output_9_0_g696 = -_VertexTwist;
				float angle11_g696 = radians( temp_output_9_0_g696 );
				float3 output11_g696 = float3( 0,0,0 );
				TwistXZ_float( position11_g696 , angle11_g696 , output11_g696 );
				float3 worldToObjDir467 = mul( GetWorldToObjectMatrix(), float4( _VertexOffsetOverY1, 0.0 ) ).xyz;
				float3 worldToObjDir469 = mul( GetWorldToObjectMatrix(), float4( _VertexOffsetOverY2, 0.0 ) ).xyz;
				float UV_2D_Circular_Y455 = sin( ( UV_2D_Y397 * PI ) );
				float3 Vertex_Offset_over_Y485 = ( ( worldToObjDir467 * pow( UV_2D_Y397 , _VertexOffsetOverY1Power ) ) + ( worldToObjDir469 * pow( UV_2D_Y397 , _VertexOffsetOverY2Power ) ) + ( _VertexOffsetOverCircularY * pow( UV_2D_Circular_Y455 , _VertexOffsetOverCircularYPower ) ) );
				float3 Vertex_Offset1398 = ( output11_g696 + Vertex_Offset_over_Y485 );
				
				float3 ase_normalWS = TransformObjectToWorldNormal( inputMesh.normalOS );
				o.ase_texcoord5.xyz = ase_normalWS;
				float3 objectToViewPos = TransformWorldToView( TransformObjectToWorld( inputMesh.positionOS ) );
				float eyeDepth = -objectToViewPos.z;
				o.ase_texcoord5.w = eyeDepth;
				
				o.ase_texcoord1 = inputMesh.ase_texcoord;
				o.ase_texcoord2 = float4(inputMesh.positionOS,1);
				o.ase_texcoord3 = inputMesh.ase_texcoord2;
				o.ase_texcoord4 = inputMesh.ase_texcoord1;
				o.ase_color = inputMesh.ase_color;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =  Vertex_Offset1398;
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
				float4 ase_texcoord2 : TEXCOORD2;
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
				o.ase_texcoord2 = v.ase_texcoord2;
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
				o.ase_texcoord2 = patch[0].ase_texcoord2 * bary.x + patch[1].ase_texcoord2 * bary.y + patch[2].ase_texcoord2 * bary.z;
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

				float temp_output_7_0_g664 = _NoiseRemapMin;
				float temp_output_23_0_g664 = _NoiseRemapMax;
				float localSimplexNoise_float2_g661 = ( 0.0 );
				float2 texCoord383 = packedInput.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				#ifdef _SWAPUVXY_ON
				float2 staticSwitch387 = (texCoord383).yx;
				#else
				float2 staticSwitch387 = texCoord383;
				#endif
				float2 UV_2D389 = staticSwitch387;
				#ifdef _SWAPUVXY_ON
				float3 staticSwitch386 = (packedInput.ase_texcoord2.xyz).yxz;
				#else
				float3 staticSwitch386 = packedInput.ase_texcoord2.xyz;
				#endif
				float3 UV_3D388 = staticSwitch386;
				#ifdef _OBJECTSPACEUVS_ON
				float3 staticSwitch291 = UV_3D388;
				#else
				float3 staticSwitch291 = float3( UV_2D389 ,  0.0 );
				#endif
				float3 ase_positionWS = GetAbsolutePositionWS( PositionRWS );
				#ifdef _SWAPUVXY4_ON
				float3 staticSwitch370 = (ase_positionWS).yxz;
				#else
				float3 staticSwitch370 = ase_positionWS;
				#endif
				float3 UV_3D_World371 = staticSwitch370;
				#ifdef _WORLDSPACEUVS_ON
				float3 staticSwitch293 = UV_3D_World371;
				#else
				float3 staticSwitch293 = staticSwitch291;
				#endif
				float3 appendResult1244 = (float3(packedInput.ase_texcoord3.y , packedInput.ase_texcoord3.z , packedInput.ase_texcoord3.w));
				float3 Particle_Rotation_3D1248 = appendResult1244;
				float3 Noise_Base_UV296 = ( staticSwitch293 + Particle_Rotation_3D1248 );
				float localSpherize_float5_g631 = ( 0.0 );
				float2 uv5_g631 = (Noise_Base_UV296).xy;
				float2 center5_g631 = ( _SpherizeNoiseOffset + float2( 0.5,0.5 ) );
				float radius5_g631 = _SpherizeNoiseRadius;
				float strength5_g631 = _SpherizeNoiseStrength;
				float2 output5_g631 = float2( 0,0 );
				Spherize_float( uv5_g631 , center5_g631 , radius5_g631 , strength5_g631 , output5_g631 );
				float3 appendResult219 = (float3(output5_g631 , (Noise_Base_UV296).z));
				#ifdef _SPHERIZENOISE_ON
				float3 staticSwitch221 = appendResult219;
				#else
				float3 staticSwitch221 = Noise_Base_UV296;
				#endif
				float localTwistXZ_float11_g638 = ( 0.0 );
				float3 temp_output_10_0_g638 = staticSwitch221;
				float3 position11_g638 = temp_output_10_0_g638;
				float temp_output_9_0_g638 = _NoiseXZTwist;
				float angle11_g638 = radians( temp_output_9_0_g638 );
				float3 output11_g638 = float3( 0,0,0 );
				TwistXZ_float( position11_g638 , angle11_g638 , output11_g638 );
				#ifdef _NOISEXZTWISTENABLED_ON
				float3 staticSwitch224 = output11_g638;
				#else
				float3 staticSwitch224 = staticSwitch221;
				#endif
				float3 break225 = staticSwitch224;
				float temp_output_230_0 = ( ( break225.y - _NoiseUVYPreOffset ) * _NoiseUVYPreScale );
				float temp_output_7_0_g643 = abs( temp_output_230_0 );
				float temp_output_232_14 = ( pow( temp_output_7_0_g643 , _NoiseUVYPrePower ) * sign( temp_output_230_0 ) );
				float3 appendResult234 = (float3(break225.x , temp_output_232_14 , break225.z));
				float3 temp_output_363_0 = ( -V * _NoiseParallaxOffset );
				#ifdef _SWAPUVXY3_ON
				float3 staticSwitch365 = (temp_output_363_0).yxz;
				#else
				float3 staticSwitch365 = temp_output_363_0;
				#endif
				float3 Parallax_Offset366 = staticSwitch365;
				float localSimplexNoise_float2_g637 = ( 0.0 );
				float Particle_Stable_Random_X414 = ( ( packedInput.ase_texcoord1.w - 0.5 ) * 100.0 * _ParticleRandomization );
				float Particle_Age_Percent413 = packedInput.ase_texcoord1.z;
				float4 Distortion_Noise_Offset360 = ( _NoiseDistortionOffset + Particle_Stable_Random_X414 + ( _NoiseDistortionParticleAnimation * Particle_Age_Percent413 ) );
				float4 temp_output_10_0_g632 = ( float4( ( ( Noise_Base_UV296 + Parallax_Offset366 ) * _NoiseDistortionScale * _NoiseDistortionTiling ) , 0.0 ) - ( Distortion_Noise_Offset360 + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 temp_output_341_0 = (temp_output_10_0_g632).xyz;
				float3 position2_g637 = temp_output_341_0;
				float temp_output_341_15 = (temp_output_10_0_g632).w;
				float angle2_g637 = temp_output_341_15;
				float octaves2_g637 = _NoiseDistortionOctaves;
				float noise2_g637 = 0.0;
				float3 gradient2_g637 = float3( 0,0,0 );
				SimplexNoise_float( position2_g637 , angle2_g637 , octaves2_g637 , noise2_g637 , gradient2_g637 );
				float localSimplexNoise_Caustics_float2_g636 = ( 0.0 );
				float3 position2_g636 = temp_output_341_0;
				float angle2_g636 = temp_output_341_15;
				float octaves2_g636 = _NoiseDistortionOctaves;
				float gradientStrength2_g636 = _NoiseDistortionDilation;
				float noise2_g636 = 0.0;
				float3 gradient2_g636 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g636 , angle2_g636 , octaves2_g636 , gradientStrength2_g636 , noise2_g636 , gradient2_g636 );
				#ifdef _NOISEDISTORTIONDILATIONENABLED_ON
				float3 staticSwitch346 = gradient2_g636;
				#else
				float3 staticSwitch346 = gradient2_g637;
				#endif
				float3 temp_output_7_0_g641 = abs( staticSwitch346 );
				float3 temp_cast_2 = (_NoiseDistortionPower).xxx;
				#ifdef _NOISEDISTORTIONENABLED_ON
				float3 staticSwitch351 = ( ( pow( temp_output_7_0_g641 , temp_cast_2 ) * sign( staticSwitch346 ) ) * _NoiseDistortion );
				#else
				float3 staticSwitch351 = float3( 0,0,0 );
				#endif
				float3 Noise_Distortion352 = staticSwitch351;
				float3 Noise_UV238 = ( appendResult234 + Parallax_Offset366 + Noise_Distortion352 );
				float4 Noise_Offset210 = ( _NoiseOffset + Particle_Stable_Random_X414 + ( _NoiseParticleAnimation * Particle_Age_Percent413 ) );
				float4 temp_output_10_0_g655 = ( float4( ( Noise_UV238 * _NoiseScale1 * _NoiseTiling1 ) , 0.0 ) - ( Noise_Offset210 + ( _NoiseAnimation * _TimeParameters.x ) ) );
				float3 temp_output_145_0 = (temp_output_10_0_g655).xyz;
				float3 position2_g661 = temp_output_145_0;
				float temp_output_145_15 = (temp_output_10_0_g655).w;
				float angle2_g661 = temp_output_145_15;
				float octaves2_g661 = _NoiseOctaves;
				float noise2_g661 = 0.0;
				float3 gradient2_g661 = float3( 0,0,0 );
				SimplexNoise_float( position2_g661 , angle2_g661 , octaves2_g661 , noise2_g661 , gradient2_g661 );
				float localSimplexNoise_Caustics_float2_g660 = ( 0.0 );
				float3 position2_g660 = temp_output_145_0;
				float angle2_g660 = temp_output_145_15;
				float octaves2_g660 = _NoiseOctaves;
				float gradientStrength2_g660 = _NoiseDilation1;
				float noise2_g660 = 0.0;
				float3 gradient2_g660 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g660 , angle2_g660 , octaves2_g660 , gradientStrength2_g660 , noise2_g660 , gradient2_g660 );
				#ifdef _NOISEDILATIONENABLED_ON
				float staticSwitch148 = noise2_g660;
				#else
				float staticSwitch148 = noise2_g661;
				#endif
				float temp_output_20_0_g664 = staticSwitch148;
				float temp_output_4_0_g664 = _NoisePower1;
				float smoothstepResult22_g664 = smoothstep( temp_output_7_0_g664 , temp_output_23_0_g664 , pow( temp_output_20_0_g664 , temp_output_4_0_g664 ));
				float Particle_Subtract_Noise_over_Lifetime419 = ( packedInput.ase_texcoord4.y * _ParticleSubtractNoiseoverLifetime );
				float temp_output_154_0 = ( smoothstepResult22_g664 - Particle_Subtract_Noise_over_Lifetime419 );
				float lerpResult157 = lerp( 1.0 , temp_output_154_0 , _Noise1);
				float Noise158 = lerpResult157;
				float Particle_Mask_Radius_over_Lifetime416 = packedInput.ase_texcoord4.x;
				float lerpResult571 = lerp( 1.0 , Particle_Mask_Radius_over_Lifetime416 , _RadialMaskRadiusOverParticleLifetime);
				float temp_output_6_0_g657 = ( 1.0 - ( _RadialMaskRadius * lerpResult571 ) );
				float lerpResult5_g657 = lerp( temp_output_6_0_g657 , 1.0 , _RadialMaskFeather);
				float2 texCoord390 = packedInput.ase_texcoord1.xy * float2( 2,2 ) + float2( -1,-1 );
				#ifdef _SWAPUVXY_ON
				float2 staticSwitch392 = (texCoord390).yx;
				#else
				float2 staticSwitch392 = texCoord390;
				#endif
				float2 UV_2D_Centered393 = staticSwitch392;
				float localSimplexNoise_float2_g634 = ( 0.0 );
				float4 Mask_Distortion_Noise_Offset285 = ( _RadialMaskDistortionOffset + Particle_Stable_Random_X414 + ( _RadialMaskDistortionParticleAnimation * Particle_Age_Percent413 ) );
				float4 temp_output_10_0_g625 = ( float4( ( Noise_Base_UV296 * _RadialMaskDistortionScale * _RadialMaskDistortionTiling ) , 0.0 ) - ( Mask_Distortion_Noise_Offset285 + ( _RadialMaskDistortionAnimation * _TimeParameters.x ) ) );
				float3 temp_output_262_0 = (temp_output_10_0_g625).xyz;
				float3 position2_g634 = temp_output_262_0;
				float temp_output_262_15 = (temp_output_10_0_g625).w;
				float angle2_g634 = temp_output_262_15;
				float octaves2_g634 = _RadialMaskDistortionOctaves;
				float noise2_g634 = 0.0;
				float3 gradient2_g634 = float3( 0,0,0 );
				SimplexNoise_float( position2_g634 , angle2_g634 , octaves2_g634 , noise2_g634 , gradient2_g634 );
				float localSimplexNoise_Caustics_float2_g635 = ( 0.0 );
				float3 position2_g635 = temp_output_262_0;
				float angle2_g635 = temp_output_262_15;
				float octaves2_g635 = _RadialMaskDistortionOctaves;
				float gradientStrength2_g635 = _RadialMaskDistortionDilation;
				float noise2_g635 = 0.0;
				float3 gradient2_g635 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g635 , angle2_g635 , octaves2_g635 , gradientStrength2_g635 , noise2_g635 , gradient2_g635 );
				#ifdef _RADIALMASKDISTORTIONDILATIONENABLED_ON
				float3 staticSwitch267 = gradient2_g635;
				#else
				float3 staticSwitch267 = gradient2_g634;
				#endif
				float3 temp_output_7_0_g640 = abs( staticSwitch267 );
				float3 temp_cast_5 = (_RadialMaskDistortionPower).xxx;
				#ifdef _RADIALMASKDISTORTIONENABLED_ON
				float3 staticSwitch272 = ( ( pow( temp_output_7_0_g640 , temp_cast_5 ) * sign( staticSwitch267 ) ) * _RadialMaskDistortion );
				#else
				float3 staticSwitch272 = float3( 0,0,0 );
				#endif
				float3 Mask_Distortion273 = staticSwitch272;
				float temp_output_7_0_g657 = ( 1.0 - length( ( ( ( UV_2D_Centered393 + (Mask_Distortion273).xy ) - _RadialMaskOffset ) * _RadialMaskTiling ) ) );
				float smoothstepResult4_g657 = smoothstep( temp_output_6_0_g657 , lerpResult5_g657 , temp_output_7_0_g657);
				#ifdef _RADIALMASK_ON
				float staticSwitch582 = ( 1.0 - pow( smoothstepResult4_g657 , _RadialMaskPower ) );
				#else
				float staticSwitch582 = 0.0;
				#endif
				float Radial_Mask583 = staticSwitch582;
				#ifdef _RADIALMASKSUBTRACTIVE_ON
				float staticSwitch644 = Radial_Mask583;
				#else
				float staticSwitch644 = 0.0;
				#endif
				float temp_output_7_0_g662 = _VerticalMask1RemapMax;
				float temp_output_23_0_g662 = _VerticalMask1RemapMin;
				float UV_2D_Y397 = (staticSwitch387).y;
				float UV_3D_Y395 = (staticSwitch386).y;
				#ifdef _VERTICALMASKSOBJECTSPACE_ON
				float staticSwitch1257 = ( ( UV_3D_Y395 - _VerticalMask1ObjectSpaceOffset ) / _VerticalMask1ObjectSpaceScale );
				#else
				float staticSwitch1257 = UV_2D_Y397;
				#endif
				float temp_output_20_0_g662 = staticSwitch1257;
				float smoothstepResult25_g662 = smoothstep( temp_output_7_0_g662 , temp_output_23_0_g662 , temp_output_20_0_g662);
				float temp_output_4_0_g662 = _VerticalMask1Power;
				float temp_output_1265_0 = pow( smoothstepResult25_g662 , temp_output_4_0_g662 );
				#ifdef _VERTICALMASK1SUBTRACTIVE_ON
				float staticSwitch1269 = ( 1.0 - temp_output_1265_0 );
				#else
				float staticSwitch1269 = temp_output_1265_0;
				#endif
				float Vertical_Mask_11278 = staticSwitch1269;
				#ifdef _VERTICALMASK1SUBTRACTIVE_ON
				float staticSwitch646 = ( staticSwitch644 + Vertical_Mask_11278 );
				#else
				float staticSwitch646 = staticSwitch644;
				#endif
				#ifdef _VERTICALMASK1_ON
				float staticSwitch648 = staticSwitch646;
				#else
				float staticSwitch648 = staticSwitch644;
				#endif
				float temp_output_7_0_g663 = _VerticalMask2RemapMin;
				float temp_output_23_0_g663 = _VerticalMask2RemapMax;
				#ifdef _VERTICALMASKSOBJECTSPACE_ON
				float staticSwitch1273 = ( ( UV_3D_Y395 - _VerticalMask2ObjectSpaceOffset ) / _VerticalMask2ObjectSpaceScale );
				#else
				float staticSwitch1273 = UV_2D_Y397;
				#endif
				float temp_output_20_0_g663 = staticSwitch1273;
				float smoothstepResult25_g663 = smoothstep( temp_output_7_0_g663 , temp_output_23_0_g663 , temp_output_20_0_g663);
				float temp_output_4_0_g663 = _VerticalMask2Power;
				float temp_output_1274_0 = pow( smoothstepResult25_g663 , temp_output_4_0_g663 );
				#ifdef _VERTICALMASK2SUBTRACTIVE_ON
				float staticSwitch1276 = ( 1.0 - temp_output_1274_0 );
				#else
				float staticSwitch1276 = temp_output_1274_0;
				#endif
				float Vertical_Mask_21277 = staticSwitch1276;
				#ifdef _VERTICALMASK2SUBTRACTIVE_ON
				float staticSwitch650 = ( staticSwitch648 + Vertical_Mask_21277 );
				#else
				float staticSwitch650 = staticSwitch648;
				#endif
				#ifdef _VERTICALMASK2_ON
				float staticSwitch655 = staticSwitch650;
				#else
				float staticSwitch655 = staticSwitch648;
				#endif
				float3 ase_normalWS = packedInput.ase_texcoord5.xyz;
				float fresnelNdotV585 = dot( ase_normalWS, V );
				float fresnelNode585 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV585, _FresnelMaskPower ) );
				float smoothstepResult588 = smoothstep( _FresnelMaskRemapMin , _FresnelMaskRemapMax , fresnelNode585);
				float lerpResult590 = lerp( 1.0 , smoothstepResult588 , _FresnelMask);
				float Fresnel_Mask592 = lerpResult590;
				float temp_output_7_0_g665 = 0.0;
				float temp_output_23_0_g665 = 1.0;
				float screenDepth501 = LinearEyeDepth(SampleCameraDepth( ScreenPosNorm.xy ),_ZBufferParams);
				float distanceDepth501 = saturate( abs( ( screenDepth501 - LinearEyeDepth( ScreenPosNorm.z,_ZBufferParams ) ) / ( _DepthFade ) ) );
				#ifdef _INVERTDEPTHFADE_ON
				float staticSwitch505 = ( 1.0 - distanceDepth501 );
				#else
				float staticSwitch505 = distanceDepth501;
				#endif
				float temp_output_20_0_g665 = staticSwitch505;
				float temp_output_4_0_g665 = _DepthFadePower;
				float smoothstepResult22_g665 = smoothstep( temp_output_7_0_g665 , temp_output_23_0_g665 , pow( temp_output_20_0_g665 , temp_output_4_0_g665 ));
				float temp_output_7_0_g666 = 0.0;
				float temp_output_23_0_g666 = 1.0;
				float screenDepth503 = LinearEyeDepth(SampleCameraDepth( ScreenPosNorm.xy ),_ZBufferParams);
				float distanceDepth503 = saturate( abs( ( screenDepth503 - LinearEyeDepth( ScreenPosNorm.z,_ZBufferParams ) ) / ( _SubtractiveDepthFade ) ) );
				float temp_output_20_0_g666 = ( 1.0 - distanceDepth503 );
				float temp_output_4_0_g666 = _SubtractiveDepthFadePower;
				float smoothstepResult22_g666 = smoothstep( temp_output_7_0_g666 , temp_output_23_0_g666 , pow( temp_output_20_0_g666 , temp_output_4_0_g666 ));
				float Depth_Fade528 = saturate( ( smoothstepResult22_g665 - smoothstepResult22_g666 ) );
				float temp_output_7_0_g667 = 0.0;
				float temp_output_23_0_g667 = 1.0;
				float eyeDepth = packedInput.ase_texcoord5.w;
				float cameraDepthFade511 = (( eyeDepth -_ProjectionParams.y - _CameraDepthFadeOffset ) / _CameraDepthFadeLength);
				float temp_output_20_0_g667 = saturate( cameraDepthFade511 );
				float temp_output_4_0_g667 = _CameraDepthFadePower;
				float smoothstepResult22_g667 = smoothstep( temp_output_7_0_g667 , temp_output_23_0_g667 , pow( temp_output_20_0_g667 , temp_output_4_0_g667 ));
				float Camera_Depth_Fade526 = smoothstepResult22_g667;
				float temp_output_7_0_g691 = _IntersectionHighlightRemapMin;
				float temp_output_23_0_g691 = _IntersectionHighlightRemapMax;
				float screenDepth518 = LinearEyeDepth(SampleCameraDepth( ScreenPosNorm.xy ),_ZBufferParams);
				float distanceDepth518 = saturate( abs( ( screenDepth518 - LinearEyeDepth( ScreenPosNorm.z,_ZBufferParams ) ) / ( _IntersectionHighlight ) ) );
				float temp_output_20_0_g691 = ( 1.0 - distanceDepth518 );
				float temp_output_4_0_g691 = _IntersectionHighlightPower;
				float smoothstepResult22_g691 = smoothstep( temp_output_7_0_g691 , temp_output_23_0_g691 , pow( temp_output_20_0_g691 , temp_output_4_0_g691 ));
				float Intersection_Highlight527 = smoothstepResult22_g691;
				float Intersection_Highlight_Alpha593 = _IntersectionHighlightColour.a;
				float temp_output_679_0 = saturate( ( ( saturate( ( Noise158 - staticSwitch655 ) ) * Fresnel_Mask592 * (packedInput.ase_color).a * Depth_Fade528 * Camera_Depth_Fade526 * _Alpha ) + ( Intersection_Highlight527 * Intersection_Highlight_Alpha593 ) ) );
				#ifdef _RADIALMASKSUBTRACTIVE_ON
				float staticSwitch683 = temp_output_679_0;
				#else
				float staticSwitch683 = ( temp_output_679_0 * ( 1.0 - Radial_Mask583 ) );
				#endif
				float Alpha697 = staticSwitch683;
				

				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				surfaceDescription.Alpha = Alpha697;

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
			
            Name "ScenePickingPass"
            Tags { "LightMode"="Picking" }

            Cull [_CullMode]

			HLSLPROGRAM

			#define ASE_PHONG_TESSELLATION
			#define _CONSERVATIVE_DEPTH_OFFSET
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define _DEPTHOFFSET_ON
			#define ASE_FIXED_TESSELLATION
			#pragma shader_feature_local_fragment _ENABLE_FOG_ON_TRANSPARENT
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#define ASE_TESSELLATION 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
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
			float4 _NoiseOffset;
			float4 _RadialMaskDistortionAnimation;
			float4 _VertexNoiseAnimation;
			float4 _VertexNoiseParticleAnimation;
			float4 _VertexNoiseOffset;
			float4 _VerticalColourB;
			float4 _NoiseAnimation;
			float4 _NoiseParticleAnimation;
			float4 _RadialMaskDistortionParticleAnimation;
			float4 _VerticalColourA;
			float4 _RadialMaskDistortionOffset;
			float4 _ColourA;
			float4 _IntersectionHighlightColour;
			float4 _NoiseDistortionOffset;
			float4 _ColourB;
			float4 _NoiseDistortionParticleAnimation;
			float4 _NoiseDistortionAnimation;
			float3 _VertexOffsetOverCircularY;
			float3 _NoiseTiling1;
			float3 _VertexOffsetOverY2;
			float3 _VertexOffsetOverY1;
			float3 _RadialMaskDistortionTiling;
			float3 _NoiseDistortionTiling;
			float3 _VertexNoiseTiling;
			float2 _RadialMaskTiling;
			float2 _RadialMaskOffset;
			float2 _SpherizeNoiseOffset;
			float _VerticalColourSaturationShift;
			float _VerticalColourHueShift;
			float _ColourSaturationShift;
			float _ColourValueMultiplier;
			float _StartFoldoutVertexNoise;
			float _ColourPower;
			float _Noise1;
			float _ParticleSubtractNoiseoverLifetime;
			float _VerticalColourValueMultiplier;
			float _NoisePower1;
			float _NoiseDilation1;
			float _NoiseOctaves;
			float _NoiseScale1;
			float _NoiseDistortion;
			float _NoiseDistortionPower;
			float _NoiseDistortionDilation;
			float _NoiseDistortionOctaves;
			float _ColourHueShift;
			float _VerticalColourMaskRemapMin;
			float _IntersectionHighlightColourSaturationShift;
			float _VerticalColourMaskPower;
			float _VerticalMask1Power;
			float _VerticalMask2RemapMin;
			float _VerticalMask2RemapMax;
			float _VerticalMask2ObjectSpaceOffset;
			float _VerticalMask2ObjectSpaceScale;
			float _VerticalMask2Power;
			float _FresnelMaskRemapMin;
			float _VerticalMask1ObjectSpaceScale;
			float _FresnelMaskRemapMax;
			float _FresnelMask;
			float _DepthFade;
			float _DepthFadePower;
			float _SubtractiveDepthFade;
			float _SubtractiveDepthFadePower;
			float _CameraDepthFadeLength;
			float _CameraDepthFadeOffset;
			float _FresnelMaskPower;
			float _VerticalColourMaskRemapMax;
			float _VerticalMask1ObjectSpaceOffset;
			float _VerticalMask1RemapMax;
			float _PulseSpeed;
			float _IntersectionHighlightColourHueShift;
			float _IntersectionHighlightColourValueMultiplier;
			float _IntersectionHighlightRemapMin;
			float _IntersectionHighlightRemapMax;
			float _IntersectionHighlight;
			float _IntersectionHighlightPower;
			float _VerticalMask1RemapMin;
			float _RadialMaskRadius;
			float _RadialMaskFeather;
			float _RadialMaskDistortionScale;
			float _RadialMaskDistortionOctaves;
			float _RadialMaskDistortionDilation;
			float _RadialMaskDistortionPower;
			float _RadialMaskDistortion;
			float _RadialMaskPower;
			float _RadialMaskRadiusOverParticleLifetime;
			float _NoiseDistortionScale;
			float _NoiseXZTwist;
			float _NoiseUVYPrePower;
			float _EndFoldoutRadialMask;
			float _StartFoldoutRadialMaskDistortion;
			float _EndFoldoutRadialMaskDistortion;
			float _StartFoldoutVerticalMasks;
			float _EndFoldoutVerticalMasks;
			float _StartFoldoutSpherizeNoise;
			float _EndFoldoutSpherizeNoise;
			float _StartFoldoutFresnelMask;
			float _EndFoldoutFresnelMask;
			float _StartFoldoutDepthFade;
			float _EndFoldoutDepthFade;
			float _StartFoldoutIntersectionHighlight;
			float _EndFoldoutIntersectionHighlight;
			float _StartFoldoutVertexUVOffset;
			float _EndFoldoutVertexOffsetoverY;
			float _StartFoldoutRadialMask;
			float _StartFoldoutParticleSettings;
			float _EndFoldoutNoiseDistortion;
			float _EndFoldoutNoise;
			float _EndFoldoutVertexNoise;
			float _EndFoldoutVertexWaveNoiseVerticalMask;
			float _StartFoldoutVertexOffsetoverY;
			float _StartFoldoutVertexWaveNoiseVerticalMask;
			float _EndFoldoutVertexUVOffset;
			float _StartFoldoutVertexNormalOffset;
			float _EndFoldoutVertexNormalOffset;
			float _StartFoldoutVertexWave;
			float _EndFoldoutVertexWave;
			float _StartFoldoutLighting;
			float _EndFoldoutBaseUVs;
			float _StartFoldoutColour;
			float _EndFoldoutColour;
			float _StartFoldoutVerticalColour;
			float _EndFoldoutVerticalColour;
			float _StartFoldoutNoiseDistortion;
			float _EndFoldoutLighting;
			float _StartFoldoutNoise;
			float _StartFoldoutBaseUVs;
			float _VertexUVOffsetTopPower;
			float _VertexUVOffsetTop;
			float _VertexUVOffsetBottomPower;
			float _VertexUVOffsetBottom;
			float _VertexTwist;
			float _VertexOffsetOverY1Power;
			float _VertexOffsetOverY2Power;
			float _VertexOffsetOverCircularYPower;
			float _NoiseRemapMin;
			float _NoiseRemapMax;
			float _SpherizeNoiseRadius;
			float _SpherizeNoiseStrength;
			float _CameraDepthFadePower;
			float _NoiseUVYPreOffset;
			float _NoiseUVYPreScale;
			float _VertexNoise;
			float _VertexNoiseTwist;
			float _VertexNoiseDilation;
			float _VertexNoiseOctaves;
			float _EndFoldoutParticleSettings;
			float _Tessellation;
			float _VertexNormalOffset;
			float _VertexNormalOffsetTopPower;
			float _VertexNormalOffsetTop;
			float _VertexNormalOffsetBottomPower;
			float _VertexNormalOffsetBottom;
			float _NoiseParallaxOffset;
			float _VertexWaveScale;
			float _VertexWaveOffset;
			float _VertexWave;
			float _VertexWaveNoiseVerticalMaskRemapMin;
			float _VertexWaveNoiseVerticalMaskRemapMax;
			float _VertexWaveNoiseVerticalMaskPower;
			float _VertexNoiseScale;
			float _ParticleRandomization;
			float _VertexWaveAnimation;
			float _Alpha;
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

			#include "VFXToolkit/Shaders/_Includes/Math.cginc"
			#include "VFXToolkit/Shaders/_Includes/Noise.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_TEXTURE_COORDINATES0
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_TEXTURE_COORDINATES2
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES2
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#define ASE_NEEDS_TEXTURE_COORDINATES1
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES1
			#define ASE_NEEDS_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#pragma shader_feature_local _SWAPUVXY_ON
			#pragma shader_feature_local _VERTEXWAVEENABLED_ON
			#pragma shader_feature_local _VERTEXNOISEENABLED_ON
			#pragma shader_feature_local _VERTEXNOISEDILATIONENABLED_ON
			#pragma shader_feature_local _RADIALMASKSUBTRACTIVE_ON
			#pragma shader_feature_local _NOISEDILATIONENABLED_ON
			#pragma shader_feature_local _NOISEXZTWISTENABLED_ON
			#pragma shader_feature_local _SPHERIZENOISE_ON
			#pragma shader_feature_local _WORLDSPACEUVS_ON
			#pragma shader_feature_local _OBJECTSPACEUVS_ON
			#pragma shader_feature_local _NOISEDISTORTIONENABLED_ON
			#pragma shader_feature_local _NOISEDISTORTIONDILATIONENABLED_ON
			#pragma shader_feature_local _VERTICALMASK2_ON
			#pragma shader_feature_local _VERTICALMASK1_ON
			#pragma shader_feature_local _RADIALMASK_ON
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
				float4 ase_texcoord2 : TEXCOORD2;
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
				float4 ase_texcoord7 : TEXCOORD7;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			
            struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
				float DepthOffset;
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

				float localTwistXZ_float11_g696 = ( 0.0 );
				float2 texCoord383 = inputMesh.ase_texcoord * float2( 1,1 ) + float2( 0,0 );
				#ifdef _SWAPUVXY_ON
				float2 staticSwitch387 = (texCoord383).yx;
				#else
				float2 staticSwitch387 = texCoord383;
				#endif
				float UV_2D_Y397 = (staticSwitch387).y;
				float3 Vertex_Normal_Offset466 = ( ( inputMesh.normalOS * _VertexNormalOffset ) + ( pow( UV_2D_Y397 , _VertexNormalOffsetTopPower ) * inputMesh.normalOS * _VertexNormalOffsetTop ) + ( pow( ( 1.0 - UV_2D_Y397 ) , _VertexNormalOffsetBottomPower ) * inputMesh.normalOS * _VertexNormalOffsetBottom ) );
				float2 UV_2D389 = staticSwitch387;
				float mulTime741 = _TimeParameters.x * _VertexWaveAnimation;
				float temp_output_7_0_g690 = _VertexWaveNoiseVerticalMaskRemapMin;
				float temp_output_23_0_g690 = _VertexWaveNoiseVerticalMaskRemapMax;
				float temp_output_20_0_g690 = UV_2D_Y397;
				float temp_output_4_0_g690 = _VertexWaveNoiseVerticalMaskPower;
				float smoothstepResult22_g690 = smoothstep( temp_output_7_0_g690 , temp_output_23_0_g690 , pow( temp_output_20_0_g690 , temp_output_4_0_g690 ));
				float Vertex_WaveNoise_Vertical_Mask1242 = smoothstepResult22_g690;
				#ifdef _VERTEXWAVEENABLED_ON
				float3 staticSwitch783 = ( ( sin( ( ( UV_2D389.y * TWO_PI * _VertexWaveScale ) - ( mulTime741 + ( _VertexWaveOffset * TWO_PI ) ) ) ) * _VertexWave * Vertex_WaveNoise_Vertical_Mask1242 ) * inputMesh.normalOS );
				#else
				float3 staticSwitch783 = float3( 0,0,0 );
				#endif
				float3 Vertex_Sine787 = staticSwitch783;
				float localTwistXZ_float11_g694 = ( 0.0 );
				float localSimplexNoise_float2_g693 = ( 0.0 );
				#ifdef _SWAPUVXY_ON
				float3 staticSwitch386 = (inputMesh.positionOS).yxz;
				#else
				float3 staticSwitch386 = inputMesh.positionOS;
				#endif
				float3 UV_3D388 = staticSwitch386;
				float3 ase_positionWS = GetAbsolutePositionWS( TransformObjectToWorld( ( inputMesh.positionOS ).xyz ) );
				#ifdef _SWAPUVXY4_ON
				float3 staticSwitch370 = (ase_positionWS).yxz;
				#else
				float3 staticSwitch370 = ase_positionWS;
				#endif
				float3 UV_3D_World371 = staticSwitch370;
				#ifdef _WORLDSPACEUVS2_ON
				float3 staticSwitch732 = UV_3D_World371;
				#else
				float3 staticSwitch732 = UV_3D388;
				#endif
				float Particle_Stable_Random_X414 = ( ( inputMesh.ase_texcoord.w - 0.5 ) * 100.0 * _ParticleRandomization );
				float Particle_Age_Percent413 = inputMesh.ase_texcoord.z;
				float4 Vertex_Noise_Offset724 = ( _VertexNoiseOffset + Particle_Stable_Random_X414 + ( _VertexNoiseParticleAnimation * Particle_Age_Percent413 ) );
				float4 temp_output_10_0_g688 = ( float4( ( staticSwitch732 * _VertexNoiseScale * _VertexNoiseTiling ) , 0.0 ) - ( Vertex_Noise_Offset724 + ( _VertexNoiseAnimation * _TimeParameters.x ) ) );
				float3 temp_output_744_0 = (temp_output_10_0_g688).xyz;
				float3 position2_g693 = temp_output_744_0;
				float temp_output_744_15 = (temp_output_10_0_g688).w;
				float angle2_g693 = temp_output_744_15;
				float octaves2_g693 = _VertexNoiseOctaves;
				float noise2_g693 = 0.0;
				float3 gradient2_g693 = float3( 0,0,0 );
				SimplexNoise_float( position2_g693 , angle2_g693 , octaves2_g693 , noise2_g693 , gradient2_g693 );
				float localSimplexNoise_Caustics_float2_g692 = ( 0.0 );
				float3 position2_g692 = temp_output_744_0;
				float angle2_g692 = temp_output_744_15;
				float octaves2_g692 = _VertexNoiseOctaves;
				float gradientStrength2_g692 = _VertexNoiseDilation;
				float noise2_g692 = 0.0;
				float3 gradient2_g692 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g692 , angle2_g692 , octaves2_g692 , gradientStrength2_g692 , noise2_g692 , gradient2_g692 );
				#ifdef _VERTEXNOISEDILATIONENABLED_ON
				float3 staticSwitch759 = gradient2_g692;
				#else
				float3 staticSwitch759 = gradient2_g693;
				#endif
				float3 temp_output_10_0_g694 = staticSwitch759;
				float3 position11_g694 = temp_output_10_0_g694;
				float temp_output_9_0_g694 = _VertexNoiseTwist;
				float angle11_g694 = radians( temp_output_9_0_g694 );
				float3 output11_g694 = float3( 0,0,0 );
				TwistXZ_float( position11_g694 , angle11_g694 , output11_g694 );
				float3 temp_output_769_0 = output11_g694;
				#ifdef _VERTEXNOISEENABLED_ON
				float3 staticSwitch786 = ( temp_output_769_0 * _VertexNoise * Vertex_WaveNoise_Vertical_Mask1242 );
				#else
				float3 staticSwitch786 = float3( 0,0,0 );
				#endif
				float3 Vertex_Noise790 = staticSwitch786;
				float2 break749 = ( ( UV_2D389 * float2( 2,1 ) ) - float2( 1,0 ) );
				float temp_output_773_0 = ( ( break749.x * pow( break749.y , _VertexUVOffsetTopPower ) ) * ( _VertexUVOffsetTop * 0.5 ) );
				float3 appendResult779 = (float3(temp_output_773_0 , 0.0 , 0.0));
				float3 appendResult778 = (float3(0.0 , temp_output_773_0 , 0.0));
				#ifdef _SWAPUVXY_ON
				float3 staticSwitch784 = appendResult778;
				#else
				float3 staticSwitch784 = appendResult779;
				#endif
				float3 Vertex_Offset_Top788 = staticSwitch784;
				float2 break742 = ( ( UV_2D389 * float2( 2,1 ) ) - float2( 1,0 ) );
				float temp_output_772_0 = ( ( break742.x * pow( ( 1.0 - break742.y ) , _VertexUVOffsetBottomPower ) ) * ( _VertexUVOffsetBottom * 0.5 ) );
				float3 appendResult781 = (float3(temp_output_772_0 , 0.0 , 0.0));
				float3 appendResult780 = (float3(0.0 , temp_output_772_0 , 0.0));
				#ifdef _SWAPUVXY_ON
				float3 staticSwitch785 = appendResult780;
				#else
				float3 staticSwitch785 = appendResult781;
				#endif
				float3 Vertex_Offset_Bottom789 = staticSwitch785;
				float3 temp_output_10_0_g696 = ( ( Vertex_Normal_Offset466 + Vertex_Sine787 + Vertex_Noise790 + Vertex_Offset_Top788 + Vertex_Offset_Bottom789 ) + inputMesh.positionOS );
				float3 position11_g696 = temp_output_10_0_g696;
				float temp_output_9_0_g696 = -_VertexTwist;
				float angle11_g696 = radians( temp_output_9_0_g696 );
				float3 output11_g696 = float3( 0,0,0 );
				TwistXZ_float( position11_g696 , angle11_g696 , output11_g696 );
				float3 worldToObjDir467 = mul( GetWorldToObjectMatrix(), float4( _VertexOffsetOverY1, 0.0 ) ).xyz;
				float3 worldToObjDir469 = mul( GetWorldToObjectMatrix(), float4( _VertexOffsetOverY2, 0.0 ) ).xyz;
				float UV_2D_Circular_Y455 = sin( ( UV_2D_Y397 * PI ) );
				float3 Vertex_Offset_over_Y485 = ( ( worldToObjDir467 * pow( UV_2D_Y397 , _VertexOffsetOverY1Power ) ) + ( worldToObjDir469 * pow( UV_2D_Y397 , _VertexOffsetOverY2Power ) ) + ( _VertexOffsetOverCircularY * pow( UV_2D_Circular_Y455 , _VertexOffsetOverCircularYPower ) ) );
				float3 Vertex_Offset1398 = ( output11_g696 + Vertex_Offset_over_Y485 );
				
				o.ase_texcoord4.xyz = ase_positionWS;
				float4 ase_positionCS = TransformWorldToHClip( TransformObjectToWorld( ( inputMesh.positionOS ).xyz ) );
				float4 screenPos = ComputeScreenPos( ase_positionCS, _ProjectionParams.x );
				o.ase_texcoord7 = screenPos;
				float3 objectToViewPos = TransformWorldToView( TransformObjectToWorld( inputMesh.positionOS ) );
				float eyeDepth = -objectToViewPos.z;
				o.ase_texcoord4.w = eyeDepth;
				
				o.ase_texcoord2 = inputMesh.ase_texcoord;
				o.ase_texcoord3 = float4(inputMesh.positionOS,1);
				o.ase_texcoord5 = inputMesh.ase_texcoord2;
				o.ase_texcoord6 = inputMesh.ase_texcoord1;
				o.ase_color = inputMesh.ase_color;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =  Vertex_Offset1398;
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
				float4 ase_texcoord2 : TEXCOORD2;
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
				o.ase_texcoord2 = v.ase_texcoord2;
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
				o.ase_texcoord2 = patch[0].ase_texcoord2 * bary.x + patch[1].ase_texcoord2 * bary.y + patch[2].ase_texcoord2 * bary.z;
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

				float temp_output_7_0_g664 = _NoiseRemapMin;
				float temp_output_23_0_g664 = _NoiseRemapMax;
				float localSimplexNoise_float2_g661 = ( 0.0 );
				float2 texCoord383 = packedInput.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				#ifdef _SWAPUVXY_ON
				float2 staticSwitch387 = (texCoord383).yx;
				#else
				float2 staticSwitch387 = texCoord383;
				#endif
				float2 UV_2D389 = staticSwitch387;
				#ifdef _SWAPUVXY_ON
				float3 staticSwitch386 = (packedInput.ase_texcoord3.xyz).yxz;
				#else
				float3 staticSwitch386 = packedInput.ase_texcoord3.xyz;
				#endif
				float3 UV_3D388 = staticSwitch386;
				#ifdef _OBJECTSPACEUVS_ON
				float3 staticSwitch291 = UV_3D388;
				#else
				float3 staticSwitch291 = float3( UV_2D389 ,  0.0 );
				#endif
				float3 ase_positionWS = packedInput.ase_texcoord4.xyz;
				#ifdef _SWAPUVXY4_ON
				float3 staticSwitch370 = (ase_positionWS).yxz;
				#else
				float3 staticSwitch370 = ase_positionWS;
				#endif
				float3 UV_3D_World371 = staticSwitch370;
				#ifdef _WORLDSPACEUVS_ON
				float3 staticSwitch293 = UV_3D_World371;
				#else
				float3 staticSwitch293 = staticSwitch291;
				#endif
				float3 appendResult1244 = (float3(packedInput.ase_texcoord5.y , packedInput.ase_texcoord5.z , packedInput.ase_texcoord5.w));
				float3 Particle_Rotation_3D1248 = appendResult1244;
				float3 Noise_Base_UV296 = ( staticSwitch293 + Particle_Rotation_3D1248 );
				float localSpherize_float5_g631 = ( 0.0 );
				float2 uv5_g631 = (Noise_Base_UV296).xy;
				float2 center5_g631 = ( _SpherizeNoiseOffset + float2( 0.5,0.5 ) );
				float radius5_g631 = _SpherizeNoiseRadius;
				float strength5_g631 = _SpherizeNoiseStrength;
				float2 output5_g631 = float2( 0,0 );
				Spherize_float( uv5_g631 , center5_g631 , radius5_g631 , strength5_g631 , output5_g631 );
				float3 appendResult219 = (float3(output5_g631 , (Noise_Base_UV296).z));
				#ifdef _SPHERIZENOISE_ON
				float3 staticSwitch221 = appendResult219;
				#else
				float3 staticSwitch221 = Noise_Base_UV296;
				#endif
				float localTwistXZ_float11_g638 = ( 0.0 );
				float3 temp_output_10_0_g638 = staticSwitch221;
				float3 position11_g638 = temp_output_10_0_g638;
				float temp_output_9_0_g638 = _NoiseXZTwist;
				float angle11_g638 = radians( temp_output_9_0_g638 );
				float3 output11_g638 = float3( 0,0,0 );
				TwistXZ_float( position11_g638 , angle11_g638 , output11_g638 );
				#ifdef _NOISEXZTWISTENABLED_ON
				float3 staticSwitch224 = output11_g638;
				#else
				float3 staticSwitch224 = staticSwitch221;
				#endif
				float3 break225 = staticSwitch224;
				float temp_output_230_0 = ( ( break225.y - _NoiseUVYPreOffset ) * _NoiseUVYPreScale );
				float temp_output_7_0_g643 = abs( temp_output_230_0 );
				float temp_output_232_14 = ( pow( temp_output_7_0_g643 , _NoiseUVYPrePower ) * sign( temp_output_230_0 ) );
				float3 appendResult234 = (float3(break225.x , temp_output_232_14 , break225.z));
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_positionWS );
				float3 ase_viewDirWS = normalize( ase_viewVectorWS );
				float3 temp_output_363_0 = ( -ase_viewDirWS * _NoiseParallaxOffset );
				#ifdef _SWAPUVXY3_ON
				float3 staticSwitch365 = (temp_output_363_0).yxz;
				#else
				float3 staticSwitch365 = temp_output_363_0;
				#endif
				float3 Parallax_Offset366 = staticSwitch365;
				float localSimplexNoise_float2_g637 = ( 0.0 );
				float Particle_Stable_Random_X414 = ( ( packedInput.ase_texcoord2.w - 0.5 ) * 100.0 * _ParticleRandomization );
				float Particle_Age_Percent413 = packedInput.ase_texcoord2.z;
				float4 Distortion_Noise_Offset360 = ( _NoiseDistortionOffset + Particle_Stable_Random_X414 + ( _NoiseDistortionParticleAnimation * Particle_Age_Percent413 ) );
				float4 temp_output_10_0_g632 = ( float4( ( ( Noise_Base_UV296 + Parallax_Offset366 ) * _NoiseDistortionScale * _NoiseDistortionTiling ) , 0.0 ) - ( Distortion_Noise_Offset360 + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 temp_output_341_0 = (temp_output_10_0_g632).xyz;
				float3 position2_g637 = temp_output_341_0;
				float temp_output_341_15 = (temp_output_10_0_g632).w;
				float angle2_g637 = temp_output_341_15;
				float octaves2_g637 = _NoiseDistortionOctaves;
				float noise2_g637 = 0.0;
				float3 gradient2_g637 = float3( 0,0,0 );
				SimplexNoise_float( position2_g637 , angle2_g637 , octaves2_g637 , noise2_g637 , gradient2_g637 );
				float localSimplexNoise_Caustics_float2_g636 = ( 0.0 );
				float3 position2_g636 = temp_output_341_0;
				float angle2_g636 = temp_output_341_15;
				float octaves2_g636 = _NoiseDistortionOctaves;
				float gradientStrength2_g636 = _NoiseDistortionDilation;
				float noise2_g636 = 0.0;
				float3 gradient2_g636 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g636 , angle2_g636 , octaves2_g636 , gradientStrength2_g636 , noise2_g636 , gradient2_g636 );
				#ifdef _NOISEDISTORTIONDILATIONENABLED_ON
				float3 staticSwitch346 = gradient2_g636;
				#else
				float3 staticSwitch346 = gradient2_g637;
				#endif
				float3 temp_output_7_0_g641 = abs( staticSwitch346 );
				float3 temp_cast_2 = (_NoiseDistortionPower).xxx;
				#ifdef _NOISEDISTORTIONENABLED_ON
				float3 staticSwitch351 = ( ( pow( temp_output_7_0_g641 , temp_cast_2 ) * sign( staticSwitch346 ) ) * _NoiseDistortion );
				#else
				float3 staticSwitch351 = float3( 0,0,0 );
				#endif
				float3 Noise_Distortion352 = staticSwitch351;
				float3 Noise_UV238 = ( appendResult234 + Parallax_Offset366 + Noise_Distortion352 );
				float4 Noise_Offset210 = ( _NoiseOffset + Particle_Stable_Random_X414 + ( _NoiseParticleAnimation * Particle_Age_Percent413 ) );
				float4 temp_output_10_0_g655 = ( float4( ( Noise_UV238 * _NoiseScale1 * _NoiseTiling1 ) , 0.0 ) - ( Noise_Offset210 + ( _NoiseAnimation * _TimeParameters.x ) ) );
				float3 temp_output_145_0 = (temp_output_10_0_g655).xyz;
				float3 position2_g661 = temp_output_145_0;
				float temp_output_145_15 = (temp_output_10_0_g655).w;
				float angle2_g661 = temp_output_145_15;
				float octaves2_g661 = _NoiseOctaves;
				float noise2_g661 = 0.0;
				float3 gradient2_g661 = float3( 0,0,0 );
				SimplexNoise_float( position2_g661 , angle2_g661 , octaves2_g661 , noise2_g661 , gradient2_g661 );
				float localSimplexNoise_Caustics_float2_g660 = ( 0.0 );
				float3 position2_g660 = temp_output_145_0;
				float angle2_g660 = temp_output_145_15;
				float octaves2_g660 = _NoiseOctaves;
				float gradientStrength2_g660 = _NoiseDilation1;
				float noise2_g660 = 0.0;
				float3 gradient2_g660 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g660 , angle2_g660 , octaves2_g660 , gradientStrength2_g660 , noise2_g660 , gradient2_g660 );
				#ifdef _NOISEDILATIONENABLED_ON
				float staticSwitch148 = noise2_g660;
				#else
				float staticSwitch148 = noise2_g661;
				#endif
				float temp_output_20_0_g664 = staticSwitch148;
				float temp_output_4_0_g664 = _NoisePower1;
				float smoothstepResult22_g664 = smoothstep( temp_output_7_0_g664 , temp_output_23_0_g664 , pow( temp_output_20_0_g664 , temp_output_4_0_g664 ));
				float Particle_Subtract_Noise_over_Lifetime419 = ( packedInput.ase_texcoord6.y * _ParticleSubtractNoiseoverLifetime );
				float temp_output_154_0 = ( smoothstepResult22_g664 - Particle_Subtract_Noise_over_Lifetime419 );
				float lerpResult157 = lerp( 1.0 , temp_output_154_0 , _Noise1);
				float Noise158 = lerpResult157;
				float Particle_Mask_Radius_over_Lifetime416 = packedInput.ase_texcoord6.x;
				float lerpResult571 = lerp( 1.0 , Particle_Mask_Radius_over_Lifetime416 , _RadialMaskRadiusOverParticleLifetime);
				float temp_output_6_0_g657 = ( 1.0 - ( _RadialMaskRadius * lerpResult571 ) );
				float lerpResult5_g657 = lerp( temp_output_6_0_g657 , 1.0 , _RadialMaskFeather);
				float2 texCoord390 = packedInput.ase_texcoord2.xy * float2( 2,2 ) + float2( -1,-1 );
				#ifdef _SWAPUVXY_ON
				float2 staticSwitch392 = (texCoord390).yx;
				#else
				float2 staticSwitch392 = texCoord390;
				#endif
				float2 UV_2D_Centered393 = staticSwitch392;
				float localSimplexNoise_float2_g634 = ( 0.0 );
				float4 Mask_Distortion_Noise_Offset285 = ( _RadialMaskDistortionOffset + Particle_Stable_Random_X414 + ( _RadialMaskDistortionParticleAnimation * Particle_Age_Percent413 ) );
				float4 temp_output_10_0_g625 = ( float4( ( Noise_Base_UV296 * _RadialMaskDistortionScale * _RadialMaskDistortionTiling ) , 0.0 ) - ( Mask_Distortion_Noise_Offset285 + ( _RadialMaskDistortionAnimation * _TimeParameters.x ) ) );
				float3 temp_output_262_0 = (temp_output_10_0_g625).xyz;
				float3 position2_g634 = temp_output_262_0;
				float temp_output_262_15 = (temp_output_10_0_g625).w;
				float angle2_g634 = temp_output_262_15;
				float octaves2_g634 = _RadialMaskDistortionOctaves;
				float noise2_g634 = 0.0;
				float3 gradient2_g634 = float3( 0,0,0 );
				SimplexNoise_float( position2_g634 , angle2_g634 , octaves2_g634 , noise2_g634 , gradient2_g634 );
				float localSimplexNoise_Caustics_float2_g635 = ( 0.0 );
				float3 position2_g635 = temp_output_262_0;
				float angle2_g635 = temp_output_262_15;
				float octaves2_g635 = _RadialMaskDistortionOctaves;
				float gradientStrength2_g635 = _RadialMaskDistortionDilation;
				float noise2_g635 = 0.0;
				float3 gradient2_g635 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g635 , angle2_g635 , octaves2_g635 , gradientStrength2_g635 , noise2_g635 , gradient2_g635 );
				#ifdef _RADIALMASKDISTORTIONDILATIONENABLED_ON
				float3 staticSwitch267 = gradient2_g635;
				#else
				float3 staticSwitch267 = gradient2_g634;
				#endif
				float3 temp_output_7_0_g640 = abs( staticSwitch267 );
				float3 temp_cast_5 = (_RadialMaskDistortionPower).xxx;
				#ifdef _RADIALMASKDISTORTIONENABLED_ON
				float3 staticSwitch272 = ( ( pow( temp_output_7_0_g640 , temp_cast_5 ) * sign( staticSwitch267 ) ) * _RadialMaskDistortion );
				#else
				float3 staticSwitch272 = float3( 0,0,0 );
				#endif
				float3 Mask_Distortion273 = staticSwitch272;
				float temp_output_7_0_g657 = ( 1.0 - length( ( ( ( UV_2D_Centered393 + (Mask_Distortion273).xy ) - _RadialMaskOffset ) * _RadialMaskTiling ) ) );
				float smoothstepResult4_g657 = smoothstep( temp_output_6_0_g657 , lerpResult5_g657 , temp_output_7_0_g657);
				#ifdef _RADIALMASK_ON
				float staticSwitch582 = ( 1.0 - pow( smoothstepResult4_g657 , _RadialMaskPower ) );
				#else
				float staticSwitch582 = 0.0;
				#endif
				float Radial_Mask583 = staticSwitch582;
				#ifdef _RADIALMASKSUBTRACTIVE_ON
				float staticSwitch644 = Radial_Mask583;
				#else
				float staticSwitch644 = 0.0;
				#endif
				float temp_output_7_0_g662 = _VerticalMask1RemapMax;
				float temp_output_23_0_g662 = _VerticalMask1RemapMin;
				float UV_2D_Y397 = (staticSwitch387).y;
				float UV_3D_Y395 = (staticSwitch386).y;
				#ifdef _VERTICALMASKSOBJECTSPACE_ON
				float staticSwitch1257 = ( ( UV_3D_Y395 - _VerticalMask1ObjectSpaceOffset ) / _VerticalMask1ObjectSpaceScale );
				#else
				float staticSwitch1257 = UV_2D_Y397;
				#endif
				float temp_output_20_0_g662 = staticSwitch1257;
				float smoothstepResult25_g662 = smoothstep( temp_output_7_0_g662 , temp_output_23_0_g662 , temp_output_20_0_g662);
				float temp_output_4_0_g662 = _VerticalMask1Power;
				float temp_output_1265_0 = pow( smoothstepResult25_g662 , temp_output_4_0_g662 );
				#ifdef _VERTICALMASK1SUBTRACTIVE_ON
				float staticSwitch1269 = ( 1.0 - temp_output_1265_0 );
				#else
				float staticSwitch1269 = temp_output_1265_0;
				#endif
				float Vertical_Mask_11278 = staticSwitch1269;
				#ifdef _VERTICALMASK1SUBTRACTIVE_ON
				float staticSwitch646 = ( staticSwitch644 + Vertical_Mask_11278 );
				#else
				float staticSwitch646 = staticSwitch644;
				#endif
				#ifdef _VERTICALMASK1_ON
				float staticSwitch648 = staticSwitch646;
				#else
				float staticSwitch648 = staticSwitch644;
				#endif
				float temp_output_7_0_g663 = _VerticalMask2RemapMin;
				float temp_output_23_0_g663 = _VerticalMask2RemapMax;
				#ifdef _VERTICALMASKSOBJECTSPACE_ON
				float staticSwitch1273 = ( ( UV_3D_Y395 - _VerticalMask2ObjectSpaceOffset ) / _VerticalMask2ObjectSpaceScale );
				#else
				float staticSwitch1273 = UV_2D_Y397;
				#endif
				float temp_output_20_0_g663 = staticSwitch1273;
				float smoothstepResult25_g663 = smoothstep( temp_output_7_0_g663 , temp_output_23_0_g663 , temp_output_20_0_g663);
				float temp_output_4_0_g663 = _VerticalMask2Power;
				float temp_output_1274_0 = pow( smoothstepResult25_g663 , temp_output_4_0_g663 );
				#ifdef _VERTICALMASK2SUBTRACTIVE_ON
				float staticSwitch1276 = ( 1.0 - temp_output_1274_0 );
				#else
				float staticSwitch1276 = temp_output_1274_0;
				#endif
				float Vertical_Mask_21277 = staticSwitch1276;
				#ifdef _VERTICALMASK2SUBTRACTIVE_ON
				float staticSwitch650 = ( staticSwitch648 + Vertical_Mask_21277 );
				#else
				float staticSwitch650 = staticSwitch648;
				#endif
				#ifdef _VERTICALMASK2_ON
				float staticSwitch655 = staticSwitch650;
				#else
				float staticSwitch655 = staticSwitch648;
				#endif
				float fresnelNdotV585 = dot( packedInput.normalWS, ase_viewDirWS );
				float fresnelNode585 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV585, _FresnelMaskPower ) );
				float smoothstepResult588 = smoothstep( _FresnelMaskRemapMin , _FresnelMaskRemapMax , fresnelNode585);
				float lerpResult590 = lerp( 1.0 , smoothstepResult588 , _FresnelMask);
				float Fresnel_Mask592 = lerpResult590;
				float temp_output_7_0_g665 = 0.0;
				float temp_output_23_0_g665 = 1.0;
				float4 screenPos = packedInput.ase_texcoord7;
				float4 ase_positionSSNorm = screenPos / screenPos.w;
				ase_positionSSNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_positionSSNorm.z : ase_positionSSNorm.z * 0.5 + 0.5;
				float screenDepth501 = LinearEyeDepth(SampleCameraDepth( ase_positionSSNorm.xy ),_ZBufferParams);
				float distanceDepth501 = saturate( abs( ( screenDepth501 - LinearEyeDepth( ase_positionSSNorm.z,_ZBufferParams ) ) / ( _DepthFade ) ) );
				#ifdef _INVERTDEPTHFADE_ON
				float staticSwitch505 = ( 1.0 - distanceDepth501 );
				#else
				float staticSwitch505 = distanceDepth501;
				#endif
				float temp_output_20_0_g665 = staticSwitch505;
				float temp_output_4_0_g665 = _DepthFadePower;
				float smoothstepResult22_g665 = smoothstep( temp_output_7_0_g665 , temp_output_23_0_g665 , pow( temp_output_20_0_g665 , temp_output_4_0_g665 ));
				float temp_output_7_0_g666 = 0.0;
				float temp_output_23_0_g666 = 1.0;
				float screenDepth503 = LinearEyeDepth(SampleCameraDepth( ase_positionSSNorm.xy ),_ZBufferParams);
				float distanceDepth503 = saturate( abs( ( screenDepth503 - LinearEyeDepth( ase_positionSSNorm.z,_ZBufferParams ) ) / ( _SubtractiveDepthFade ) ) );
				float temp_output_20_0_g666 = ( 1.0 - distanceDepth503 );
				float temp_output_4_0_g666 = _SubtractiveDepthFadePower;
				float smoothstepResult22_g666 = smoothstep( temp_output_7_0_g666 , temp_output_23_0_g666 , pow( temp_output_20_0_g666 , temp_output_4_0_g666 ));
				float Depth_Fade528 = saturate( ( smoothstepResult22_g665 - smoothstepResult22_g666 ) );
				float temp_output_7_0_g667 = 0.0;
				float temp_output_23_0_g667 = 1.0;
				float eyeDepth = packedInput.ase_texcoord4.w;
				float cameraDepthFade511 = (( eyeDepth -_ProjectionParams.y - _CameraDepthFadeOffset ) / _CameraDepthFadeLength);
				float temp_output_20_0_g667 = saturate( cameraDepthFade511 );
				float temp_output_4_0_g667 = _CameraDepthFadePower;
				float smoothstepResult22_g667 = smoothstep( temp_output_7_0_g667 , temp_output_23_0_g667 , pow( temp_output_20_0_g667 , temp_output_4_0_g667 ));
				float Camera_Depth_Fade526 = smoothstepResult22_g667;
				float temp_output_7_0_g691 = _IntersectionHighlightRemapMin;
				float temp_output_23_0_g691 = _IntersectionHighlightRemapMax;
				float screenDepth518 = LinearEyeDepth(SampleCameraDepth( ase_positionSSNorm.xy ),_ZBufferParams);
				float distanceDepth518 = saturate( abs( ( screenDepth518 - LinearEyeDepth( ase_positionSSNorm.z,_ZBufferParams ) ) / ( _IntersectionHighlight ) ) );
				float temp_output_20_0_g691 = ( 1.0 - distanceDepth518 );
				float temp_output_4_0_g691 = _IntersectionHighlightPower;
				float smoothstepResult22_g691 = smoothstep( temp_output_7_0_g691 , temp_output_23_0_g691 , pow( temp_output_20_0_g691 , temp_output_4_0_g691 ));
				float Intersection_Highlight527 = smoothstepResult22_g691;
				float Intersection_Highlight_Alpha593 = _IntersectionHighlightColour.a;
				float temp_output_679_0 = saturate( ( ( saturate( ( Noise158 - staticSwitch655 ) ) * Fresnel_Mask592 * (packedInput.ase_color).a * Depth_Fade528 * Camera_Depth_Fade526 * _Alpha ) + ( Intersection_Highlight527 * Intersection_Highlight_Alpha593 ) ) );
				#ifdef _RADIALMASKSUBTRACTIVE_ON
				float staticSwitch683 = temp_output_679_0;
				#else
				float staticSwitch683 = ( temp_output_679_0 * ( 1.0 - Radial_Mask583 ) );
				#endif
				float Alpha697 = staticSwitch683;
				

				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				surfaceDescription.Alpha = Alpha697;

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
	Fallback Off
	
}
/*ASEBEGIN
Version=19905
Node;AmplifyShaderEditor.TextureCoordinatesNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;383;4336,-4064;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexCoordVertexDataNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;409;160,-4128;Inherit;False;0;4;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SwizzleNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;385;4576,-3984;Inherit;False;FLOAT2;1;0;2;3;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.PosVertexDataNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;382;4352,-3024;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SwizzleNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;384;4560,-2944;Inherit;False;FLOAT3;1;0;2;3;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1230;-4752,2032;Inherit;False;792.3848;400.7481;Unsed.;6;1247;1248;1243;1244;1245;1246;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;410;368,-3968;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;411;96,-3888;Inherit;False;Property;_ParticleRandomization;Particle Randomization;12;0;Create;True;0;0;0;False;2;Header(Particle Settings);Space(5);False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;387;4736,-4064;Inherit;False;Property;_SwapUVXY;Swap UV XY;6;0;Create;True;0;0;0;False;2;Header(Base UVs);Space(5);False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;386;4720,-3024;Inherit;False;Property;_SwapUVXY2;Swap UV XY;6;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;387;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldPosInputsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;368;6112,-4096;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SwizzleNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;369;6304,-4016;Inherit;False;FLOAT3;1;0;2;3;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;413;720,-4048;Inherit;False;Particle Age Percent;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;412;528,-3968;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;100;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;389;4992,-4160;Inherit;False;UV 2D;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;388;4960,-3104;Inherit;False;UV 3D;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;370;6464,-4096;Inherit;False;Property;_SwapUVXY4;Swap UV XY;50;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;-1;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TexCoordVertexDataNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1246;-4704,2256;Inherit;False;2;4;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;281;-3344,176;Inherit;False;Property;_RadialMaskDistortionParticleAnimation;Radial Mask Distortion Particle Animation;92;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1451;-3280,352;Inherit;False;413;Particle Age Percent;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;414;688,-3968;Inherit;False;Particle Stable Random X;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;371;6720,-4096;Inherit;False;UV 3D World;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1456;6080,-3472;Inherit;False;388;UV 3D;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1457;6080,-3552;Inherit;False;389;UV 2D;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1244;-4416,2272;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;355;-6400,176;Inherit;False;Property;_NoiseDistortionParticleAnimation;Noise Distortion Particle Animation;69;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1459;-6352,368;Inherit;False;413;Particle Age Percent;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;283;-3312,-80;Inherit;False;Property;_RadialMaskDistortionOffset;Radial Mask Distortion Offset;93;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;282;-3008,176;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1450;-3312,96;Inherit;False;414;Particle Stable Random X;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1455;6368,-3456;Inherit;False;371;UV 3D World;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;291;6272,-3552;Inherit;False;Property;_ObjectSpaceUVs;Object Space UVs;8;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1248;-4224,2224;Inherit;False;Particle Rotation 3D;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;358;-6352,-96;Inherit;False;Property;_NoiseDistortionOffset;Noise Distortion Offset;70;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;357;-6064,176;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1458;-6384,96;Inherit;False;414;Particle Stable Random X;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;284;-2800,80;Inherit;False;3;3;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1454;6608,-3440;Inherit;False;1248;Particle Rotation 3D;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;293;6576,-3552;Inherit;False;Property;_WorldSpaceUVs;World Space UVs;7;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;359;-5856,80;Inherit;False;3;3;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;285;-2656,80;Inherit;False;Mask Distortion Noise Offset;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.Vector2Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;212;2880,-544;Inherit;False;Property;_SpherizeNoiseOffset;Spherize Noise Offset;120;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;250;2816,-592;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;335;-3536,-4208;Inherit;False;296;Noise Base UV;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1448;-3536,-4128;Inherit;False;366;Parallax Offset;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1429;-3424,-3184;Inherit;False;296;Noise Base UV;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;259;-3488,-3088;Inherit;False;Property;_RadialMaskDistortionScale;Radial Mask Distortion Scale;89;0;Create;True;0;0;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;260;-3488,-3008;Inherit;False;Property;_RadialMaskDistortionTiling;Radial Mask Distortion Tiling;90;0;Create;True;0;0;0;False;0;False;1.5,1,1;1.5,1,1;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;261;-3520,-2848;Inherit;False;Property;_RadialMaskDistortionAnimation;Radial Mask Distortion Animation;91;0;Create;True;0;0;0;False;0;False;0,2,0,0;0,2,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1430;-3504,-2672;Inherit;False;285;Mask Distortion Noise Offset;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;295;6864,-3552;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;360;-5712,80;Inherit;False;Distortion Noise Offset;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;215;3136,-544;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;216;3008,-400;Inherit;False;Property;_SpherizeNoiseRadius;Spherize Noise Radius;118;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;249;3008,-320;Inherit;False;Property;_SpherizeNoiseStrength;Spherize Noise Strength;119;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;213;2912,-688;Inherit;False;True;True;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ComponentMaskNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;214;3024,-240;Inherit;False;False;False;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;338;-3568,-4048;Inherit;False;Property;_NoiseDistortionScale;Noise Distortion Scale;66;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;339;-3568,-3968;Inherit;False;Property;_NoiseDistortionTiling;Noise Distortion Tiling;67;0;Create;True;0;0;0;False;0;False;1.5,1,1;1,1,1;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;336;-3280,-4208;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;340;-3600,-3808;Inherit;False;Property;_NoiseDistortionAnimation;Noise Distortion Animation;68;0;Create;True;0;0;0;False;0;False;0,1,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1449;-3568,-3632;Inherit;False;360;Distortion Noise Offset;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;262;-3152,-3104;Inherit;False;Scale Tiling Offset Animation;-1;;625;650501f4d90f3194eb72a847e06cc2e3;1,21,0;6;4;FLOAT3;0,0,0;False;7;FLOAT;1;False;8;FLOAT3;1,1,1;False;9;FLOAT4;0,0,0,0;False;19;INT;0;False;12;FLOAT4;0,0,0,0;False;2;FLOAT3;0;FLOAT;15
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;263;-3152,-2928;Inherit;False;Property;_RadialMaskDistortionOctaves;Radial Mask Distortion Octaves;94;1;[IntRange];Create;True;0;0;0;False;0;False;1;1;1;8;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;264;-3152,-2848;Inherit;False;Property;_RadialMaskDistortionDilation;Radial Mask Distortion Dilation;95;0;Create;True;0;0;0;False;0;False;0.004;0.004;0;0.1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;296;6992,-3552;Inherit;False;Noise Base UV;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;217;3456,-400;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;218;3344,-640;Inherit;False;Spherize;-1;;631;dce7577f44cbfeb4c822afd6b5c80507;0;4;7;FLOAT2;0,0;False;6;FLOAT2;0,0;False;8;FLOAT;1;False;9;FLOAT;0.5;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1439;2640,-688;Inherit;False;296;Noise Base UV;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;341;-3152,-4064;Inherit;False;Scale Tiling Offset Animation;-1;;632;650501f4d90f3194eb72a847e06cc2e3;1,21,0;6;4;FLOAT3;0,0,0;False;7;FLOAT;1;False;8;FLOAT3;1,1,1;False;9;FLOAT4;0,0,0,0;False;19;INT;0;False;12;FLOAT4;0,0,0,0;False;2;FLOAT3;0;FLOAT;15
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;342;-3152,-3888;Inherit;False;Property;_NoiseDistortionOctaves;Noise Distortion Octaves;71;1;[IntRange];Create;True;0;0;0;False;0;False;1;1;1;8;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;343;-3152,-3808;Inherit;False;Property;_NoiseDistortionDilation;Noise Distortion Dilation;72;0;Create;True;0;0;0;False;0;False;0.004;0.002;0;0.1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;266;-2656,-3136;Inherit;False;Simplex Noise;-1;;634;c68ae2e20c00ec54aaecd9d04797372e;0;3;4;FLOAT3;0,0,0;False;6;FLOAT;0;False;7;FLOAT;1;False;2;FLOAT;0;FLOAT3;3
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;265;-2656,-2992;Inherit;False;Simplex Noise Caustics;-1;;635;477e7c249263854458b4f42934448d42;0;4;4;FLOAT3;0,0,0;False;6;FLOAT;0;False;7;FLOAT;1;False;9;FLOAT;0.01;False;2;FLOAT;0;FLOAT3;3
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;219;3632,-640;Inherit;False;FLOAT3;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;222;3936,-640;Inherit;False;Property;_NoiseXZTwist;Noise XZ Twist;54;0;Create;True;0;0;0;False;1;Space(5);False;0;0;-360;360;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;251;2928,-752;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;344;-2736,-3936;Inherit;False;Simplex Noise Caustics;-1;;636;477e7c249263854458b4f42934448d42;0;4;4;FLOAT3;0,0,0;False;6;FLOAT;0;False;7;FLOAT;1;False;9;FLOAT;0.01;False;2;FLOAT;0;FLOAT3;3
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;345;-2736,-4064;Inherit;False;Simplex Noise;-1;;637;c68ae2e20c00ec54aaecd9d04797372e;0;3;4;FLOAT3;0,0,0;False;6;FLOAT;0;False;7;FLOAT;1;False;2;FLOAT;0;FLOAT3;3
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;267;-2352,-3104;Inherit;False;Property;_RadialMaskDistortionDilationEnabled;Radial Mask Distortion Dilation Enabled;96;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;268;-2256,-2976;Inherit;False;Property;_RadialMaskDistortionPower;Radial Mask Distortion Power;97;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;221;3984,-768;Inherit;False;Property;_SpherizeNoise;Spherize Noise;117;0;Create;True;0;0;0;False;2;Header(Spherize Noise);Space(5);False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;223;4240,-656;Inherit;False;TwistXZ;-1;;638;9581222175ed3d74faf64569d7d97396;1,12,0;2;10;FLOAT3;0,0,0;False;9;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;346;-2416,-4032;Inherit;False;Property;_NoiseDistortionDilationEnabled;Noise Distortion Dilation Enabled;73;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;347;-2288,-3920;Inherit;False;Property;_NoiseDistortionPower;Noise Distortion Power;74;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;269;-1920,-3104;Inherit;False;Signed Power Smoothstep;-1;;640;3654d4d5f7b612d4085eb90cd7a60668;3,3,2,20,1,15,0;7;2;FLOAT;0;False;4;FLOAT2;0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT4;0,0,0,0;False;12;FLOAT;1;False;17;FLOAT;0;False;18;FLOAT;1;False;1;FLOAT3;14
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;270;-1904,-2976;Inherit;False;Property;_RadialMaskDistortion;Radial Mask Distortion;87;0;Create;True;0;0;0;False;2;Header(Radial Mask Distortion);Space(5);False;0.05;0.05;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;224;4480,-768;Inherit;False;Property;_NoiseXZTwistEnabled;Noise XZ Twist Enabled;55;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;226;5040,-704;Inherit;False;Property;_NoiseUVYPreOffset;Noise UV Y Pre-Offset;56;0;Create;True;0;0;0;False;1;Space(5);False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;348;-1984,-3904;Inherit;False;Property;_NoiseDistortion;Noise Distortion;64;1;[Header];Create;True;0;0;0;False;2;Header(Noise Distortion);Space(5);False;0.05;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;349;-1984,-4032;Inherit;False;Signed Power Smoothstep;-1;;641;3654d4d5f7b612d4085eb90cd7a60668;3,3,2,20,1,15,0;7;2;FLOAT;0;False;4;FLOAT2;0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT4;0,0,0,0;False;12;FLOAT;1;False;17;FLOAT;0;False;18;FLOAT;1;False;1;FLOAT3;14
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;271;-1616,-3104;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TextureCoordinatesNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;390;4368,-3584;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;2,2;False;1;FLOAT2;-1,-1;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;362;512,2864;Inherit;False;Property;_NoiseParallaxOffset;Noise Parallax Offset;51;0;Create;True;0;0;0;False;1;Space(5);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;225;4864,-768;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;228;5280,-832;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;227;5200,-624;Inherit;False;Property;_NoiseUVYPreScale;Noise UV Y Pre-Scale;57;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;350;-1680,-4032;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;272;-1456,-3120;Inherit;False;Property;_RadialMaskDistortionEnabled;Radial Mask Distortion Enabled;88;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SwizzleNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;391;4592,-3504;Inherit;False;FLOAT2;1;0;2;3;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SwizzleNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;364;960,2944;Inherit;False;FLOAT3;1;0;2;3;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;363;736,2864;Inherit;False;Parallax Offset;-1;;642;66d259709a71255489a93d3df825942b;3,20,0,16,1,9,1;1;13;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;233;5280,-880;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;230;5488,-832;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;229;5200,-544;Inherit;False;Property;_NoiseUVYPrePower;Noise UV Y Pre-Power;58;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;231;5136,-304;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;351;-1504,-4048;Inherit;False;Property;_NoiseDistortionEnabled;Noise Distortion Enabled;65;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;273;-1072,-3120;Inherit;False;Mask Distortion;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;392;4752,-3584;Inherit;False;Property;_SwapUVXY1;Swap UV XY;6;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;387;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;365;1136,2864;Inherit;False;Property;_SwapUVXY3;Swap UV XY;26;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;-1;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;254;5904,-896;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;205;3008,368;Inherit;False;Property;_NoiseParticleAnimation;Noise Particle Animation;43;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1441;3008,560;Inherit;False;413;Particle Age Percent;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;232;5696,-832;Inherit;False;Signed Power Smoothstep;-1;;643;3654d4d5f7b612d4085eb90cd7a60668;3,3,0,20,1,15,0;7;2;FLOAT;0;False;4;FLOAT2;0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT4;0,0,0,0;False;12;FLOAT;1;False;17;FLOAT;0;False;18;FLOAT;1;False;1;FLOAT;14
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;255;6224,-624;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;352;-1168,-4048;Inherit;False;Noise Distortion;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;563;-6192,-3152;Inherit;False;273;Mask Distortion;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;393;4992,-3584;Inherit;False;UV 2D Centered;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ComponentMaskNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;394;4960,-3024;Inherit;False;False;True;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;366;1408,2864;Inherit;False;Parallax Offset;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;206;3008,112;Inherit;False;Property;_NoiseOffset;Noise Offset;44;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;208;3296,432;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1440;2992,288;Inherit;False;414;Particle Stable Random X;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;234;6352,-848;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1438;6304,-704;Inherit;False;366;Parallax Offset;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1437;6304,-624;Inherit;False;352;Noise Distortion;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;565;-5952,-3152;Inherit;False;True;True;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;564;-5952,-3280;Inherit;False;393;UV 2D Centered;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;395;5184,-3024;Inherit;False;UV 3D Y;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;416;1696,-4112;Inherit;False;Particle Mask Radius over Lifetime;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;209;3472,256;Inherit;False;3;3;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;237;6608,-816;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector2Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;568;-5568,-3152;Inherit;False;Property;_RadialMaskOffset;Radial Mask Offset;84;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;566;-5712,-3216;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;567;-5664,-2880;Inherit;False;416;Particle Mask Radius over Lifetime;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;569;-5664,-2800;Inherit;False;Property;_RadialMaskRadiusOverParticleLifetime;Radial Mask Radius over Particle Lifetime;80;0;Create;False;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1252;-5872,-2176;Inherit;False;Property;_VerticalMask1ObjectSpaceOffset;Vertical Mask 1 Object Space Offset;107;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1251;-5744,-2256;Inherit;False;395;UV 3D Y;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;396;5024,-4064;Inherit;False;False;True;True;True;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;210;3648,256;Inherit;False;Noise Offset;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;238;6736,-816;Inherit;False;Noise UV;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector2Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;573;-5344,-3104;Inherit;False;Property;_RadialMaskTiling;Radial Mask Tiling;83;0;Create;True;0;0;0;False;0;False;1.5,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;570;-5280,-3216;Inherit;False;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;574;-5408,-2976;Inherit;False;Property;_RadialMaskRadius;Radial Mask Radius;79;0;Create;True;0;0;0;False;1;Space(10);False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;571;-5280,-2896;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1262;-3104,-2160;Inherit;False;Property;_VerticalMask2ObjectSpaceOffset;Vertical Mask 2 Object Space Offset;114;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1261;-2976,-2240;Inherit;False;395;UV 3D Y;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1253;-5536,-2224;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1254;-5696,-2096;Inherit;False;Property;_VerticalMask1ObjectSpaceScale;Vertical Mask 1 Object Space Scale;106;0;Create;True;0;0;0;False;0;False;2;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;397;5248,-4064;Inherit;False;UV 2D Y;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;142;4336,224;Inherit;False;Property;_NoiseScale1;Noise Scale;40;0;Create;True;0;0;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;139;4336,304;Inherit;False;Property;_NoiseTiling1;Noise Tiling;41;0;Create;True;0;0;0;False;0;False;1.5,1,1;1,1,1;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;138;4288,464;Inherit;False;Property;_NoiseAnimation;Noise Animation;42;0;Create;True;0;0;0;False;0;False;0,4,1,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1433;4336,144;Inherit;False;238;Noise UV;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1434;4336,640;Inherit;False;210;Noise Offset;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;575;-5120,-3216;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;576;-5120,-2976;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;572;-5248,-2752;Inherit;False;Property;_RadialMaskFeather;Radial Mask Feather;81;0;Create;True;0;0;0;False;0;False;1;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1263;-2768,-2208;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1264;-2928,-2080;Inherit;False;Property;_VerticalMask2ObjectSpaceScale;Vertical Mask 2 Object Space Scale;113;0;Create;True;0;0;0;False;0;False;2;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1256;-5360,-2224;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1255;-5392,-2336;Inherit;False;397;UV 2D Y;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;143;4576,528;Inherit;False;Property;_NoiseOctaves;Noise Octaves;45;1;[IntRange];Create;True;0;0;0;False;0;False;1;1;1;8;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;144;4576,608;Inherit;False;Property;_NoiseDilation1;Noise Dilation;46;0;Create;True;0;0;0;False;0;False;0.004;0.002;0;0.1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;145;4576,352;Inherit;False;Scale Tiling Offset Animation;-1;;655;650501f4d90f3194eb72a847e06cc2e3;1,21,0;6;4;FLOAT3;0,0,0;False;7;FLOAT;1;False;8;FLOAT3;1,1,1;False;9;FLOAT4;0,0,0,0;False;19;INT;0;False;12;FLOAT4;0,0,0,0;False;2;FLOAT3;0;FLOAT;15
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;578;-4928,-2992;Inherit;True;Radial Gradient 2;-1;;657;969db7e12a1ad8c4c8b8d89670372700;1,12,1;3;10;FLOAT2;0,0;False;8;FLOAT;1;False;9;FLOAT;0.2;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;579;-4896,-2752;Inherit;False;Property;_RadialMaskPower;Radial Mask Power;82;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1268;-2592,-2208;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1267;-2624,-2304;Inherit;False;397;UV 2D Y;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1257;-5184,-2336;Inherit;False;Property;_VerticalMasksObjectSpace;Vertical Masks Object Space;100;0;Create;True;0;0;0;False;2;Header(Vertical Masks);Space(5);False;0;1;1;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1259;-5120,-2144;Inherit;False;Property;_VerticalMask1RemapMax;Vertical Mask 1 Remap Max;105;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1258;-5120,-2064;Inherit;False;Property;_VerticalMask1RemapMin;Vertical Mask 1 Remap Min;104;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1260;-5088,-2224;Inherit;False;Property;_VerticalMask1Power;Vertical Mask 1 Power;103;0;Create;True;0;0;0;False;2;;Space(5);False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexCoordVertexDataNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;415;1344,-4144;Inherit;False;1;4;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;417;1248,-3968;Inherit;False;Property;_ParticleSubtractNoiseoverLifetime;Particle Subtract Noise over Lifetime;13;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;146;4944,384;Inherit;False;Simplex Noise Caustics;-1;;660;477e7c249263854458b4f42934448d42;0;4;4;FLOAT3;0,0,0;False;6;FLOAT;0;False;7;FLOAT;1;False;9;FLOAT;0.01;False;2;FLOAT;0;FLOAT3;3
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;147;4992,240;Inherit;False;Simplex Noise;-1;;661;c68ae2e20c00ec54aaecd9d04797372e;0;3;4;FLOAT3;0,0,0;False;6;FLOAT;0;False;7;FLOAT;1;False;2;FLOAT;0;FLOAT3;3
Node;AmplifyShaderEditor.PowerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;580;-4672,-2992;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1273;-2432,-2304;Inherit;False;Property;_VerticalMaskObjectSpace1;Vertical Mask Object Space;100;0;Create;True;0;0;0;False;1;Space(5);False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;1257;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1271;-2368,-2112;Inherit;False;Property;_VerticalMask2RemapMin;Vertical Mask 2 Remap Min;111;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1272;-2368,-2032;Inherit;False;Property;_VerticalMask2RemapMax;Vertical Mask 2 Remap Max;112;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1270;-2336,-2192;Inherit;False;Property;_VerticalMask2Power;Vertical Mask 2 Power;110;0;Create;True;0;0;0;False;2;;Space(5);False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1265;-4784,-2240;Inherit;True;Power Smoothstep;-1;;662;eaa8bfb6a4986cb418a1675cea297eed;1,24,1;4;20;FLOAT;1;False;4;FLOAT;1;False;7;FLOAT;0;False;23;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1266;-4432,-2176;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;418;1552,-4032;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;148;5312,352;Inherit;False;Property;_NoiseDilationEnabled;Noise Dilation Enabled;47;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;149;5440,464;Inherit;False;Property;_NoisePower1;Noise Power;48;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;151;5344,560;Inherit;False;Property;_NoiseRemapMin;Noise Remap Min;49;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;150;5344,640;Inherit;False;Property;_NoiseRemapMax;Noise Remap Max;50;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;581;-4480,-2992;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1274;-2032,-2208;Inherit;True;Power Smoothstep;-1;;663;eaa8bfb6a4986cb418a1675cea297eed;1,24,1;4;20;FLOAT;1;False;4;FLOAT;1;False;7;FLOAT;0;False;23;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1275;-1648,-2144;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1269;-4272,-2240;Inherit;False;Property;_VerticalMask1Subtractive;Vertical Mask 1 Subtractive;102;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;419;1696,-4032;Inherit;False;Particle Subtract Noise over Lifetime;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;500;112,-3184;Inherit;False;Property;_DepthFade;Depth Fade;129;0;Create;True;0;0;0;False;2;Header(Depth Fade);Space(5);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;502;48,-2848;Inherit;False;Property;_SubtractiveDepthFade;Subtractive Depth Fade;132;0;Create;True;0;0;0;False;1;Space(5);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;153;5776,352;Inherit;False;Power Smoothstep;-1;;664;eaa8bfb6a4986cb418a1675cea297eed;1,24,0;4;20;FLOAT;1;False;4;FLOAT;1;False;7;FLOAT;0;False;23;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1435;5744,512;Inherit;False;419;Particle Subtract Noise over Lifetime;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;582;-4288,-2992;Inherit;False;Property;_RadialMask;Radial Mask;77;0;Create;True;0;0;0;False;2;Header(Radial Mask);Space(5);False;0;1;1;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1276;-1472,-2208;Inherit;False;Property;_VerticalMask2Subtractive;Vertical Mask 2 Subtractive;109;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1278;-3920,-2240;Inherit;False;Vertical Mask 1;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DepthFade, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;501;320,-3200;Inherit;False;True;True;True;2;1;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;504;592,-3120;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DepthFade, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;503;304,-2864;Inherit;False;True;True;True;2;1;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;714;-4976,368;Inherit;False;413;Particle Age Percent;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;715;-5040,192;Inherit;False;Property;_VertexNoiseParticleAnimation;Vertex Noise Particle Animation;176;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;154;6176,352;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;583;-4032,-2992;Inherit;False;Radial Mask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1277;-1120,-2208;Inherit;False;Vertical Mask 2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;505;768,-3200;Inherit;False;Property;_InvertDepthFade;Invert Depth Fade;131;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;506;832,-3024;Inherit;False;Property;_DepthFadePower;Depth Fade Power;130;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;507;592,-2864;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;508;464,-2768;Inherit;False;Property;_SubtractiveDepthFadePower;Subtractive Depth Fade Power;133;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;509;2112,-3168;Inherit;False;Property;_CameraDepthFadeOffset;Camera Depth Fade Offset;135;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;510;2112,-3248;Inherit;False;Property;_CameraDepthFadeLength;Camera Depth Fade Length;134;0;Create;True;0;0;0;False;2;Header(Camera Depth Fade);Space(5);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1431;-304,3712;Inherit;False;1278;Vertical Mask 1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;717;-4992,112;Inherit;False;414;Particle Stable Random X;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;718;-4704,256;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;716;-4944,-64;Inherit;False;Property;_VertexNoiseOffset;Vertex Noise Offset;177;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;156;6512,624;Inherit;False;Property;_Noise1;Noise;39;0;Create;True;0;0;0;False;2;Header(Noise);Space(5);False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;155;6736,448;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;584;-4976,-4144;Inherit;False;Property;_FresnelMaskPower;Fresnel Mask Power;124;0;Create;True;0;0;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;513;1056,-3120;Inherit;False;Power Smoothstep;-1;;665;eaa8bfb6a4986cb418a1675cea297eed;1,24,0;4;20;FLOAT;1;False;4;FLOAT;1;False;7;FLOAT;0;False;23;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;512;1056,-2928;Inherit;False;Power Smoothstep;-1;;666;eaa8bfb6a4986cb418a1675cea297eed;1,24,0;4;20;FLOAT;1;False;4;FLOAT;1;False;7;FLOAT;0;False;23;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.CameraDepthFade, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;511;2416,-3248;Inherit;False;3;2;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;719;1312,2240;Inherit;False;389;UV 2D;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;514;-2800,2784;Inherit;False;Property;_IntersectionHighlight;Intersection Highlight;139;0;Create;True;0;0;0;False;2;Header(Intersection Highlight);Space(5);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;645;-64,3680;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1432;352,3680;Inherit;False;1277;Vertical Mask 2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;642;-592,3568;Inherit;False;583;Radial Mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;720;-4512,80;Inherit;False;3;3;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;157;6800,496;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;586;-4736,-4000;Inherit;False;Property;_FresnelMaskRemapMin;Fresnel Mask Remap Min;125;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;587;-4736,-3920;Inherit;False;Property;_FresnelMaskRemapMax;Fresnel Mask Remap Max;126;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FresnelNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;585;-4736,-4240;Inherit;True;Standard;WorldNormal;ViewDir;False;False;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;515;1344,-3024;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;517;2688,-3248;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;516;2560,-3120;Inherit;False;Property;_CameraDepthFadePower;Camera Depth Fade Power;136;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TauNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;726;1824,-1776;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;729;1488,-2224;Inherit;False;389;UV 2D;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;728;1552,-1968;Inherit;False;Property;_VertexWaveAnimation;Vertex Wave Animation;167;0;Create;True;0;0;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;727;1520,-1872;Inherit;False;Property;_VertexWaveOffset;Vertex Wave Offset;168;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;722;-832,2304;Inherit;False;389;UV 2D;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;721;1520,2240;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;2,1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DepthFade, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;518;-2544,2768;Inherit;False;True;True;True;2;1;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;644;-400,3536;Inherit;False;Property;_RadialMaskSubtractive;Radial Mask Subtractive;78;0;Create;True;0;0;0;False;0;False;0;1;1;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;649;576,3648;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;646;48,3616;Inherit;False;Property;_Keyword2;Keyword 2;102;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;1269;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;723;-6416,-992;Inherit;False;371;UV 3D World;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;725;-6416,-1072;Inherit;False;388;UV 3D;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;724;-4368,80;Inherit;False;Vertex Noise Offset;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;158;6976,496;Inherit;False;Noise;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;588;-4416,-4080;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;589;-4512,-3824;Inherit;False;Property;_FresnelMask;Fresnel Mask;123;0;Create;True;0;0;0;False;2;Header(Fresnel Mask);Space(5);False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;519;1520,-3024;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;520;2864,-3216;Inherit;False;Power Smoothstep;-1;;667;eaa8bfb6a4986cb418a1675cea297eed;1,24,0;4;20;FLOAT;1;False;4;FLOAT;1;False;7;FLOAT;0;False;23;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;739;1680,-2224;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.TauNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;737;1680,-2128;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;738;1584,-2048;Inherit;False;Property;_VertexWaveScale;Vertex Wave Scale;166;0;Create;True;0;0;0;False;0;False;2;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;741;1856,-2032;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;740;1888,-1936;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;731;-640,2304;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;2,1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;752;2000,2304;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;730;1680,2240;Inherit;False;2;0;FLOAT2;0,0;False;1;FLOAT2;1,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;750;1648,2384;Inherit;False;Property;_VertexUVOffsetBottomPower;Vertex UV Offset Bottom Power;153;0;Create;True;0;0;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;521;-2288,2768;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;522;-2416,2864;Inherit;False;Property;_IntersectionHighlightPower;Intersection Highlight Power;141;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;523;-2448,2960;Inherit;False;Property;_IntersectionHighlightRemapMin;Intersection Highlight Remap Min;142;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;524;-2448,3040;Inherit;False;Property;_IntersectionHighlightRemapMax;Intersection Highlight Remap Max;143;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;648;336,3536;Inherit;False;Property;_VerticalMask1;Vertical Mask 1;101;0;Create;True;0;0;0;False;2;Header(Vertical Mask 1);Space(5);False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;650;720,3600;Inherit;False;Property;_Keyword5;Keyword 2;109;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;1276;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;732;-6208,-1040;Inherit;False;Property;_WorldSpaceUVs2;World Space UVs;48;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;-1;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;736;-6144,-896;Inherit;False;Property;_VertexNoiseScale;Vertex Noise Scale;173;0;Create;True;0;0;0;False;1;Space(5);False;2;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;733;-6144,-816;Inherit;False;Property;_VertexNoiseTiling;Vertex Noise Tiling;174;0;Create;True;0;0;0;False;0;False;1,1,1;1,1,1;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;734;-6176,-656;Inherit;False;Property;_VertexNoiseAnimation;Vertex Noise Animation;175;0;Create;True;0;0;0;False;0;False;0,2,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;735;-6176,-480;Inherit;False;724;Vertex Noise Offset;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1237;-3280,-848;Inherit;False;Property;_VertexWaveNoiseVerticalMaskRemapMin;Vertex Wave-Noise Vertical Mask Remap Min;186;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1238;-3280,-768;Inherit;False;Property;_VertexWaveNoiseVerticalMaskRemapMax;Vertex Wave-Noise Vertical Mask Remap Max;187;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1239;-3280,-928;Inherit;False;Property;_VertexWaveNoiseVerticalMaskPower;Vertex Wave-Noise Vertical Mask Power;185;0;Create;True;0;0;0;False;2;Header(Vertex Wave Noise Vertical Mask);Space(5);False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1240;-3152,-1056;Inherit;False;397;UV 2D Y;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;590;-4192,-3936;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;528;1680,-3024;Inherit;False;Depth Fade;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;526;3152,-3216;Inherit;False;Camera Depth Fade;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;747;1888,-2192;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;16.13;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;748;2160,-2096;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;591;5552,3936;Inherit;False;Property;_IntersectionHighlightColour;Intersection Highlight Colour;144;0;Create;True;0;0;0;False;2;Header(Intersection Highlight Colour);Space(5);False;1,1,1,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;743;-480,2304;Inherit;False;2;0;FLOAT2;0,0;False;1;FLOAT2;1,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.PowerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;756;2160,2352;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;742;1840,2240;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;751;-480,2432;Inherit;False;Property;_VertexUVOffsetTopPower;Vertex UV Offset Top Power;151;0;Create;True;0;0;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;761;2032,2480;Inherit;False;Property;_VertexUVOffsetBottom;Vertex UV Offset Bottom;152;0;Create;True;0;0;0;True;2;;Space(5);False;0;-0.93;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;525;-2048,2848;Inherit;False;Power Smoothstep;-1;;691;eaa8bfb6a4986cb418a1675cea297eed;1,24,0;4;20;FLOAT;1;False;4;FLOAT;1;False;7;FLOAT;0;False;23;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;655;976,3520;Inherit;False;Property;_VerticalMask2;Vertical Mask 2;108;0;Create;True;0;0;0;False;2;Header(Vertical Mask 2);Space(5);False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;654;1040,3440;Inherit;False;158;Noise;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;744;-5872,-800;Inherit;False;Scale Tiling Offset Animation;-1;;688;650501f4d90f3194eb72a847e06cc2e3;1,21,0;6;4;FLOAT3;0,0,0;False;7;FLOAT;1;False;8;FLOAT3;1,1,1;False;9;FLOAT4;0,0,0,0;False;19;INT;0;False;12;FLOAT4;0,0,0,0;False;2;FLOAT3;0;FLOAT;15
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;745;-5872,-608;Inherit;False;Property;_VertexNoiseOctaves;Vertex Noise Octaves;178;1;[IntRange];Create;True;0;0;0;False;0;False;1;0;1;4;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;746;-5872,-528;Inherit;False;Property;_VertexNoiseDilation;Vertex Noise Dilation;179;0;Create;True;0;0;0;False;1;Space(5);False;0;0;-0.2;0.2;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1241;-2928,-960;Inherit;True;Power Smoothstep;-1;;690;eaa8bfb6a4986cb418a1675cea297eed;1,24,0;4;20;FLOAT;1;False;4;FLOAT;1;False;7;FLOAT;0;False;23;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;436;-800,-304;Inherit;False;397;UV 2D Y;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;592;-4000,-3936;Inherit;False;Fresnel Mask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;437;6512,-2944;Inherit;False;397;UV 2D Y;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;755;2304,-2192;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;593;5872,4128;Inherit;False;Intersection Highlight Alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;765;2320,2240;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;757;-160,2384;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;749;-320,2304;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;766;2384,2480;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;758;-288,2528;Inherit;False;Property;_VertexUVOffsetTop;Vertex UV Offset Top;150;0;Create;True;0;0;0;True;2;Header(Vertex UV Offset);Space(5);False;0;-0.41;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;527;-1760,2848;Inherit;False;Intersection Highlight;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;661;1216,3440;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;658;1344,3664;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;662;1344,3840;Inherit;False;528;Depth Fade;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;659;1280,3920;Inherit;False;526;Camera Depth Fade;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;660;1248,4016;Inherit;True;Property;_Alpha;Alpha;24;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;753;-5488,-672;Inherit;False;Simplex Noise Caustics;-1;;692;477e7c249263854458b4f42934448d42;0;4;4;FLOAT3;0,0,0;False;6;FLOAT;0;False;7;FLOAT;1;False;9;FLOAT;0.01;False;2;FLOAT;0;FLOAT3;3
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;754;-5424,-800;Inherit;False;Simplex Noise;-1;;693;c68ae2e20c00ec54aaecd9d04797372e;0;3;4;FLOAT3;0,0,0;False;6;FLOAT;0;False;7;FLOAT;1;False;2;FLOAT;0;FLOAT3;3
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1242;-2592,-960;Inherit;False;Vertex WaveNoise Vertical Mask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;441;-448,-608;Inherit;False;Property;_VertexNormalOffsetTopPower;Vertex Normal Offset Top Power;158;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;440;-320,-704;Inherit;False;397;UV 2D Y;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;439;-608,-304;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;438;-768,-224;Inherit;False;Property;_VertexNormalOffsetBottomPower;Vertex Normal Offset Bottom Power;160;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;442;6688,-2960;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;762;2480,-2192;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;764;2416,-2080;Inherit;False;Property;_VertexWave;Vertex Wave;164;0;Create;True;0;0;0;False;2;Header(Vertex Wave);Space(5);False;0.1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1453;2288,-2000;Inherit;False;1242;Vertex WaveNoise Vertical Mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;767;0,2304;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;772;2560,2352;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;768;48,2528;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;669;1376,3440;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;670;1760,3712;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;665;1760,3744;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;668;1760,3792;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;666;1312,3552;Inherit;False;592;Fresnel Mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;673;1840,3760;Inherit;False;527;Intersection Highlight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;672;1808,3840;Inherit;False;593;Intersection Highlight Alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;667;1552,3664;Inherit;False;False;False;False;True;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;759;-5168,-720;Inherit;False;Property;_VertexNoiseDilationEnabled;Vertex Noise Dilation Enabled;180;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;760;-5104,-560;Inherit;False;Property;_VertexNoiseTwist;Vertex Noise Twist;181;0;Create;True;0;0;0;False;1;Space(5);False;0;0;-180;180;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;449;-112,-768;Inherit;False;Property;_VertexNormalOffset;Vertex Normal Offset;156;0;Create;True;0;0;0;False;2;Header(Vertex Normal Offset);Space(5);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;443;-80,-928;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PowerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;447;-48,-672;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;444;-320,-528;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;450;-384,-368;Inherit;False;Property;_VertexNormalOffsetTop;Vertex Normal Offset Top;157;0;Create;True;0;0;0;False;1;Space(5);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;448;-288,-272;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;445;-320,-160;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;446;-432,0;Inherit;False;Property;_VertexNormalOffsetBottom;Vertex Normal Offset Bottom;159;0;Create;True;0;0;0;False;1;Space(5);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;451;6880,-2944;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;770;2672,-2112;Inherit;False;3;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;771;2640,-1968;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;773;224,2304;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;780;2736,2416;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;781;2736,2288;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;674;1936,3440;Inherit;False;6;6;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;675;2112,3776;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;769;-4800,-640;Inherit;False;TwistXZ;-1;;694;9581222175ed3d74faf64569d7d97396;1,12,0;2;10;FLOAT3;0,0,0;False;9;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;774;-4768,-512;Inherit;False;Property;_VertexNoise;Vertex Noise;171;0;Create;True;0;0;0;False;2;Header(Vertex Noise);Space(5);False;0.02;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1452;-4896,-432;Inherit;False;1242;Vertex WaveNoise Vertical Mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;453;128,-240;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;454;144,-560;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;452;144,-848;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;455;7008,-2944;Inherit;False;UV 2D Circular Y;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;777;2848,-2064;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;779;400,2224;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;778;400,2352;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;785;2912,2352;Inherit;False;Property;_Keyword1;Keyword 0;6;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;387;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;677;2272,3632;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;782;-4336,-592;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;456;336,-592;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;457;1008,-928;Inherit;False;Property;_VertexOffsetOverY1;Vertex Offset over Y 1;190;0;Create;False;0;0;0;False;2;Header(Vertex Offset over Y);Space(5);False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;459;1072,-752;Inherit;False;397;UV 2D Y;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;458;976,-672;Inherit;False;Property;_VertexOffsetOverY1Power;Vertex Offset over Y 1 Power;191;0;Create;False;0;0;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;463;1008,-576;Inherit;False;Property;_VertexOffsetOverY2;Vertex Offset over Y 2;192;0;Create;False;0;0;0;False;1;Space(5);False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.Vector3Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;465;960,-208;Inherit;False;Property;_VertexOffsetOverCircularY;Vertex Offset over Circular Y;194;0;Create;False;0;0;0;False;2;Header(Vertex Offset over Circular Y);Space(5);False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;462;960,-304;Inherit;False;Property;_VertexOffsetOverY2Power;Vertex Offset over Y 2 Power;193;0;Create;False;0;0;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;460;1056,-384;Inherit;False;397;UV 2D Y;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;461;1024,-32;Inherit;False;455;UV 2D Circular Y;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;464;928,64;Inherit;False;Property;_VertexOffsetOverCircularYPower;Vertex Offset over Circular Y Power;195;0;Create;False;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;783;3008,-2080;Inherit;False;Property;_VertexWaveEnabled;Vertex Wave Enabled;165;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;784;560,2272;Inherit;False;Property;_Keyword0;Keyword 0;6;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;387;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;789;3168,2352;Inherit;False;Vertex Offset Bottom;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;679;2448,3632;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;786;-4160,-608;Inherit;False;Property;_VertexNoiseEnabled;Vertex Noise Enabled;172;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;466;464,-592;Inherit;False;Vertex Normal Offset;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PowerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;470;1344,-384;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;468;1328,-752;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.TransformDirectionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;467;1264,-912;Inherit;False;World;Object;False;Fast;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.TransformDirectionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;469;1280,-576;Inherit;False;World;Object;False;Fast;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;493;1248,-128;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PowerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;471;1344,-16;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1389;-592,800;Inherit;False;789;Vertex Offset Bottom;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;787;3312,-2080;Inherit;False;Vertex Sine;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;788;848,2272;Inherit;False;Vertex Offset Top;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;700;2576,3616;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;790;-3840,-608;Inherit;False;Vertex Noise;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;478;1520,-480;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;477;1520,-160;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;476;1520,-832;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1387;-528,640;Inherit;False;790;Vertex Noise;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1388;-560,720;Inherit;False;788;Vertex Offset Top;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1399;-352,800;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1386;-528,560;Inherit;False;787;Vertex Sine;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1385;-576,480;Inherit;False;466;Vertex Normal Offset;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;699;2288,3568;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;481;1728,-496;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1391;-304,752;Inherit;False;Property;_VertexTwist;Vertex Twist;162;0;Create;True;0;0;0;False;2;Header(Vertex Twist);Space(5);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1390;-240,576;Inherit;False;5;5;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PosVertexDataNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1392;-304,832;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;698;2304,3472;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;676;2320,3504;Inherit;False;583;Radial Mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;485;1856,-496;Inherit;False;Vertex Offset over Y;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NegateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1394;-96,752;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1393;-64,576;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;678;2512,3504;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;701;2624,3472;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1395;64,768;Inherit;False;485;Vertex Offset over Y;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1396;96,640;Inherit;False;TwistXZ;-1;;696;9581222175ed3d74faf64569d7d97396;1,12,0;2;10;FLOAT3;0,0,0;False;9;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;680;2688,3472;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1397;320,688;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;683;2880,3472;Inherit;False;Property;_Keyword8;Keyword 2;78;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;644;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1229;-3760,2032;Inherit;False;785.4507;495.5983;Unsed.;6;1233;1232;1231;1236;1235;1234;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1398;448,688;Inherit;False;Vertex Offset;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;697;3200,3472;Inherit;False;Alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;165;4240,16;Inherit;False;2952.493;737.7006;Main Noise Generation;Main Noise Generation;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;198;4096,1488;Inherit;False;2607.1;997.9791;Color Gradients;Color Gradients;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;203;5072,2880;Inherit;False;594.9065;220.5988;Colour Power;Colour Power;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;211;2976,48;Inherit;False;892.1738;597.5776;Noise Offset;Noise Offset;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;256;2656,-976;Inherit;False;4316.276;836.4023;Spherize/Twist/Y-Adjust;Noise UV Processing;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;274;-3552,-3280;Inherit;False;2702.9;695.9971;Radial Distortion Mask;Radial Distortion Mask;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;288;-3376,-128;Inherit;False;997.3223;566.136;Particle Animation;Radial Mask Distortion Noise Offset;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;297;6048,-3600;Inherit;False;1152.611;233.9696;UV Mode Selection;Noise Base UV;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;353;-3648,-4272;Inherit;False;2693.363;740.1082;Radial Distortion ;Radial Parallax Distortion Mask;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;361;-6432,-144;Inherit;False;976.5;648.087;Noise Distortion Offset;Noise Distortion Offset;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;367;496,2816;Inherit;False;1131.443;202.0964;Parallax Offset Generation;Parallax Offset Generation;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;374;6096,-4144;Inherit;False;822.8916;238.817;3D;World Space UV;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;404;-2288,0;Inherit;False;1146.751;302.5247;Sample Noise;Sample Noise (Hash33);0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;405;4320,-3152;Inherit;False;1069.1;314.5;UV 3D Y Extract;UV 3D Y Extract;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;406;4352,-3632;Inherit;False;850.6997;235.2002;UV 2D Centered;UV 2D Centered;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;407;4320,-4208;Inherit;False;1136.7;348.2998;UV 2D Y Extract;UV 2D Y Extract;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;408;4272,-4368;Inherit;False;3007.201;2408.19;UV Sampling System;UV Sampling System;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;423;2256,-4192;Inherit;False;520;249;Texture Sampling;Texture Sampling;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;424;48,-4208;Inherit;False;919.4392;413.1421;Particle Age & Random;Particle Age & Random;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;425;1232,-4192;Inherit;False;766;293;Particle Lifetime Data;Particle Lifetime Data;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;426;-32,-4432;Inherit;False;3078.846;730.1522;Particle Data & Texture Inputs;Particle Data & Texture Inputs;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;433;3904,2880;Inherit;False;897.0391;393.3989;Vertical Colour Mask;Vertical Colour Mask;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;434;3792,1344;Inherit;False;3565.254;2976.617;Color System;Color System;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;435;2624,-1248;Inherit;False;4724.457;2124.686;UV Noise Processing System;UV Noise Processing System;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;492;6496,-2992;Inherit;False;714;125;UV 2D Circular Y;UV 2D Circular Y;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;495;-832,-992;Inherit;False;1533.338;1069.983;Vertex Normal Offset;Vertex Normal Offset;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;496;896,-976;Inherit;False;1201.479;1120.976;Vertex Offset Over Y;Vertex Offset Over Y;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;497;-624,416;Inherit;False;1333.06;573.627;Vertex Twist + Final Vertex Offset;Vertex Twist + Final Vertex Offset;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;498;-864,-1248;Inherit;False;3191.823;2362.984;New Note;Vertex Offset System;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;531;48,-3296;Inherit;False;1845.413;621.9583;Depth Fade;Depth Fade;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;532;2096,-3296;Inherit;False;1292.975;275.2563;Camera Depth Fade;Camera Depth Fade;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;533;-2832,2720;Inherit;False;1338.694;416.2231;Intersection Highlight;Intersection Highlight;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;633;5888,2880;Inherit;False;1383.247;423.957;Vertex Color Processing;Vertex Color Processing;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;634;4672,3552;Inherit;False;2622.052;673.6069;Intersection Highlight Color;Intersection Highlight Color;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;635;-6192,-3328;Inherit;False;2377.207;666.9253;Radial Mask (Main);Radial Mask (Main);0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;636;-4992,-4304;Inherit;False;1210.224;574.8921;Fresnal Mask;Fresnal Mask;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;637;4608,4032;Inherit;False;380.646;119.8213;New Note;;1,1,1,1;Processes intersection highlight with HSV hue/saturation/value shifts, blends with vertex color, and creates "Colour" local var. Also creates "Intersection Highlight Alpha" local var.;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;638;-6160,-3040;Inherit;False;641.792;140.8254;New Note;;1,1,1,1;Processes intersection highlight with HSV hue/saturation/value shifts, blends with vertex color, and creates "Colour" local var. Also creates "Intersection Highlight Alpha" local var.;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;639;-4224,-4240;Inherit;False;401.3965;119.128;New Note;;1,1,1,1;Creates "Fresnel Mask" local var with power, remap min/max, and blend control. Perfect for edge glow effects! ❤️🔥;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;712;-608,3408;Inherit;False;4116.031;881.1412;Alpha Assembly;Alpha Assembly;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;713;1952,3968;Inherit;False;1378.711;102.6001;New Note;;1,1,1,1;Creates final "Alpha" local var by combining noise/vertical masks with fresnel mask, vertex color alpha, depth fades, alpha property, intersection highlight (with its alpha), and optional radial mask subtractive mode.;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;792;1440,-2272;Inherit;False;2113.461;556.5396;Vertex Sine Wave;Vertex Sine Wave;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;793;2848,-1840;Inherit;False;697.5044;100;New Note;;1,1,1,1;Creates "Vertex Sine" local var using sinusoidal wave animation with scale, offset, animation speed, and vertical mask modulation. Applies wave motion along normals for organic movement.;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;794;-5072,-128;Inherit;False;969.0596;630.439;Vertex Noise Offset (Particle Setup);Vertex Noise Offset (Particle Setup;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;795;-4480,240;Inherit;False;350.8916;217.1641;New Note;;1,1,1,1;Creates "Vertex Noise Offset" local var by combining base offset with particle stable random and particle age animation. This feeds into the main vertex noise system.;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;796;-6448,-1104;Inherit;False;2817.992;770.3047;Vertex Noise (Main System);Vertex Noise (Main System);0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;797;-4336,-944;Inherit;False;653.144;227.509;New Note;;1,1,1,1;Creates "Vertex Noise" local var using simplex noise generation with:$$Object/World space UV toggle$Scale, tiling, animation controls$Octaves and dilation options$Optional twist effect$Noise multiplier and vertical mask modulation$Enable/disable toggle;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;798;1280,2192;Inherit;False;2124.958;451.2109;Vertex Offset Bottom;Vertex Offset Bottom;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;799;2896,2480;Inherit;False;497.249;140.7031;New Note;;1,1,1,1;Creates "Vertex Offset Bottom" local var - inverted Y-gradient based vertex offset that pushes vertices downward with power control. Mirror of top offset system.;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;800;560,2416;Inherit;False;497.249;140.7031;New Note;;1,1,1,1;Creates "Vertex Offset Top" local var - Y-gradient based vertex offset that pushes vertices upward with power control. Uses UV2D Y coordinate for gradient mask.;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;801;-864,2176;Inherit;False;1949.332;488.6738;Vertex Offset Top;Vertex Offset Top;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1225;4304,-2464;Inherit;False;1075.689;456.9813;Screen UV/Position Setup;Screen UV/Position Setup;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1226;-2832,1968;Inherit;False;1304.649;449.5956;Normal from Height (Front & Back);Normal from Height (Front & Back);0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1227;5024,-2144;Inherit;False;337.1079;100;New Note;;1,1,1,1;Creates: "Screen UV", "Screen Resolution", "Screen Position";0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1228;-1888,2144;Inherit;False;346.9551;100;New Note;;1,1,1,1;Uses Noise to generate normal maps for lighting;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1249;-4848,1968;Inherit;False;1914.924;967.7441;New Note;UNUSED BUT COULD BE USED;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1250;-4720,2592;Inherit;False;1519.277;266.5339;New Note;;1,1,1,1;Particle Center:$Provides the center position of each particle from Unity's Particle System. Stored in UV1 (channels 3,4) and UV2 (channel 1). Can be used for effects that radiate from particle centers, distance-based calculations, or custom pivot points for particle effects.$Particle Rotation 3D:$Provides 3D rotation data for each particle from Unity's Particle System. Stored in UV2 (channels 2,3,4). Can be used to apply per-particle rotation to vertex positions, normals, or UVs. Example rotation nodes (X/Y/Z axis) are included but disconnected - connect them to vertex offset if needed.$Usage Notes:$$These features are currently unused but available for future particle effects$Only relevant when using Unity's built-in Particle System (not VFX Graph)$To activate: Connect "Particle Center" or "Particle Rotation 3D" local vars to your desired effects$Zero performance cost when unused (just stored as local variables);0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1279;-3312,-1104;Inherit;False;1268.988;429.6683;Vertex Wave Noise Vertical Mask;Vertex Wave Noise Vertical Mask;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1280;-5888,-2384;Inherit;False;2179.9;398.1929;Vertical Mask 1;Vertical Mask 1;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1281;-3136,-2352;Inherit;False;2226.408;420.0786;Vertical Mask 2;Vertical Mask 2;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1461;-6256,-4448;Inherit;False;5527.361;2652.995;Various Masks;Various Masks;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1462;-48,-3488;Inherit;False;3562.63;894.4482;Depth Fade;Depth Fade;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1463;-6521.294,-1344;Inherit;False;5599.032;2476.078;Noise System;Noise System;0,0,0,1;;0;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1464;-912,1968;Inherit;False;4435.583;1128.542;Offset;Offset;0,0,0,1;;0;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;242;5696,-688;Inherit;False;Signed Power Smoothstep;-1;;711;3654d4d5f7b612d4085eb90cd7a60668;3,3,0,20,1,15,1;7;2;FLOAT;0;False;4;FLOAT2;0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT4;0,0,0,0;False;12;FLOAT;1;False;17;FLOAT;0;False;18;FLOAT;1;False;1;FLOAT;14
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;241;6000,-720;Inherit;False;Property;_NoiseUVPreRemap;Noise UV Pre-Remap;59;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;239;5168,-464;Inherit;False;Property;_NoiseUVYPreRemapMin;Noise UV Y Pre-Remap Min;60;0;Create;True;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;240;5168,-384;Inherit;False;Property;_NoiseUVYPreRemapMax;Noise UV Y Pre-Remap Max;61;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;245;4016,-544;Inherit;False;Twirl;-1;;712;90936742ac32db8449cd21ab6dd337c8;0;4;1;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;244;3552,-496;Inherit;False;Property;_NoiseXYTwistOffset;Noise XY Twist Offset;53;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;246;3808,-496;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;243;3552,-352;Inherit;False;Property;_NoiseXYTwist;Noise XY Twist;52;0;Create;True;0;0;0;False;1;Space(5);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RadiansOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;247;3808,-352;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;164;5344,240;Inherit;False;Property;_NoiseDilationEnabled1;Noise Dilation Enabled;1;0;Create;True;0;0;0;False;0;False;0;1;1;True;;Toggle;2;Key0;Key1;Reference;148;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;163;5776,192;Inherit;False;Signed Power Smoothstep;-1;;713;3654d4d5f7b612d4085eb90cd7a60668;3,3,2,20,1,15,1;7;2;FLOAT;0;False;4;FLOAT2;0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT4;0,0,0,0;False;12;FLOAT;1;False;17;FLOAT;0;False;18;FLOAT;1;False;1;FLOAT3;14
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;162;6128,192;Inherit;False;Noise Gradient;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;159;6320,576;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;160;6496,496;Inherit;False;Property;_TextureEnabled;Texture Enabled;4;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1436;6128,496;Inherit;False;421;Texture A;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TransformDirectionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;491;1280,-272;Inherit;False;World;Object;False;Fast;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;613;-4192,-4080;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;403;4992,-3968;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;399;4752,-3472;Inherit;False;379;Sample Noise;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;398;4720,-2912;Inherit;False;379;Sample Noise;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;401;4960,-2944;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1222;4576,-2400;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1219;4752,-2400;Inherit;False;Screen UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ScreenPosInputsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1223;4336,-2416;Float;False;0;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1221;4560,-2176;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1220;4736,-2176;Inherit;False;Screen Resolution;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ScreenParams, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1224;4352,-2192;Inherit;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1218;4992,-2304;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1217;5168,-2304;Inherit;False;Screen Position;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;402;4992,-3504;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;400;4768,-3936;Inherit;False;379;Sample Noise;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;372;6528,-3984;Inherit;False;-1;;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;373;6720,-4000;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;421;2576,-4016;Inherit;False;Texture A;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;422;2576,-4096;Inherit;False;Texture R;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;420;2272,-4144;Inherit;True;Property;_Texture;Texture;3;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;599;5504,4160;Inherit;False;Property;_IntersectionHighlightAlpha;Intersection Highlight Alpha;140;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;186;4128,2192;Inherit;False;Property;_VerticalColourA;Vertical Colour A;29;2;[HDR];[Header];Create;True;0;0;0;False;0;False;0,0.5019608,1,1;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;178;4128,1984;Inherit;False;Property;_VerticalColourB;Vertical Colour B;30;1;[HDR];Create;True;0;0;0;False;0;False;0,0,1,1;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;175;4384,1984;Inherit;False;Colour RGB x A;-1;;706;034d6205f93eb7e4f9100dabf18de7c4;0;1;22;COLOR;1,1,1,0.5019608;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;176;4384,2192;Inherit;False;Colour RGB x A;-1;;707;034d6205f93eb7e4f9100dabf18de7c4;0;1;22;COLOR;1,1,1,0.5019608;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1443;4384,2288;Inherit;False;202;Colour Power;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;171;4128,1776;Inherit;False;Property;_ColourA;Colour A;18;2;[HDR];[Header];Create;True;0;0;0;False;2;Header(Colour);Space(5);False;1,0.1254902,0,1;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;169;4128,1552;Inherit;False;Property;_ColourB;Colour B;19;1;[HDR];Create;True;0;0;0;False;0;False;1,0.02745098,0,1;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;167;4384,1760;Inherit;False;Colour RGB x A;-1;;708;034d6205f93eb7e4f9100dabf18de7c4;0;1;22;COLOR;1,1,1,0.5019608;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;166;4384,1552;Inherit;False;Colour RGB x A;-1;;709;034d6205f93eb7e4f9100dabf18de7c4;0;1;22;COLOR;1,1,1,0.5019608;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;177;4672,2096;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1442;4384,1840;Inherit;False;202;Colour Power;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;168;4672,1648;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RGBToHSVNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;188;4864,2096;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RGBToHSVNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;191;4864,1648;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;183;5184,2144;Inherit;False;Property;_VerticalColourHueShift;Vertical Colour Hue Shift;31;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;280;5120,2192;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;278;5120,2112;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;184;5184,2256;Inherit;False;Property;_VerticalColourSaturationShift;Vertical Colour Saturation Shift;32;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;279;5120,2304;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;185;5184,2400;Inherit;False;Property;_VerticalColourValueMultiplier;Vertical Colour Value Multiplier;33;0;Create;True;0;0;0;False;0;False;5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;275;5120,1744;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;277;5120,1856;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;193;5168,1808;Inherit;False;Property;_ColourSaturationShift;Colour Saturation Shift;22;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;276;5120,1664;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;190;5200,1936;Inherit;False;Property;_ColourValueMultiplier;Colour Value Multiplier;23;0;Create;True;0;0;0;False;0;False;5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;179;5488,2064;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;180;5488,2176;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;181;5456,2320;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;194;5168,1696;Inherit;False;Property;_ColourHueShift;Colour Hue Shift;21;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;196;5472,1632;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;195;5472,1744;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;192;5440,1872;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.HSVToRGBNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;189;5648,2112;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1444;5632,2272;Inherit;False;432;Vertical Colour Mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RGBToHSVNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;602;4832,3648;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.HSVToRGBNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;172;5648,1728;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;174;5936,1952;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;627;5056,3648;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;173;6080,1792;Inherit;False;Property;_VerticalColour;Vertical Colour;28;0;Create;True;0;0;0;False;2;Header(Vertical Colour);Space(5);False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;629;5040,3888;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;628;5344,3648;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;606;5072,3840;Inherit;False;Property;_IntersectionHighlightColourSaturationShift;Intersection Highlight Colour Saturation Shift;146;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;607;5072,4000;Inherit;False;Property;_IntersectionHighlightColourValueMultiplier;Intersection Highlight Colour Value Multiplier;147;0;Create;True;0;0;0;False;0;False;5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;605;5072,3680;Inherit;False;Property;_IntersectionHighlightColourHueShift;Intersection Highlight Colour Hue Shift;145;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;608;5392,3920;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;603;5424,3808;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;604;5424,3664;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1475;4608,3584;Inherit;False;197;Colour Input;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;601;6000,3712;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;610;5904,4048;Inherit;False;527;Intersection Highlight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;611;6160,4048;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;0.0001;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;612;6160,3936;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.HSVToRGBNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;609;5568,3776;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;614;5792,3776;Inherit;False;595;Vertex Colour;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleTimeNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1478;6160,3776;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1480;6368,3792;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1479;6080,3856;Inherit;False;Property;_PulseSpeed;Pulse Speed;25;0;Create;True;0;0;0;False;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1481;6544,3792;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;621;6896,3920;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;620;7072,3920;Inherit;False;Colour;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1482;6656,3792;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.3;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1477;6816,3712;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;197;6368,1792;Inherit;False;Colour Input;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.VertexColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;594;5936,2944;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;595;6144,2944;Inherit;False;Vertex Colour;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RGBToHSVNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;596;6144,3040;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;618;6384,3056;Inherit;False;Property;_VertexColourHueShift;Vertex Colour Hue Shift;14;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;623;6368,3024;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;625;6368,3248;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;616;6656,3104;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;615;6384,3184;Inherit;False;Property;_VertexColourSaturationShift;Vertex Colour Saturation Shift;15;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.HSVToRGBNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;598;6816,3088;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;626;6624,3248;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;617;6656,2992;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;597;7056,3088;Inherit;False;True;True;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;201;5104,2944;Inherit;False;158;Noise;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;200;5104,3024;Inherit;False;Property;_ColourPower;Colour Power;20;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;199;5296,2960;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;202;5456,2960;Inherit;False;Colour Power;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;428;3952,3024;Inherit;False;Property;_VerticalColourMaskPower;Vertical Colour Mask Power;34;0;Create;True;0;0;0;False;2;Header(Vertical Colour Mask);Space(5);False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;427;4048,2944;Inherit;False;397;UV 2D Y;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;429;3920,3104;Inherit;False;Property;_VerticalColourMaskRemapMin;Vertical Colour Mask Remap Min;35;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;430;3920,3184;Inherit;False;Property;_VerticalColourMaskRemapMax;Vertical Colour Mask Remap Max;36;0;Create;True;0;0;0;False;0;False;0.1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;431;4240,3024;Inherit;True;Power Smoothstep;-1;;710;eaa8bfb6a4986cb418a1675cea297eed;1,24,0;4;20;FLOAT;1;False;4;FLOAT;1;False;7;FLOAT;0;False;23;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;432;4560,3024;Inherit;False;Vertical Colour Mask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1211;-2256,2272;Inherit;False;Normal From Height;-1;;704;1942fe2c5f1a1f94881a33d532e4afeb;0;2;20;FLOAT;0;False;110;FLOAT;1;False;2;FLOAT3;40;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1212;-2256,2016;Inherit;False;Normal From Height;-1;;705;1942fe2c5f1a1f94881a33d532e4afeb;0;2;20;FLOAT;0;False;110;FLOAT;1;False;2;FLOAT3;40;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1214;-2592,2144;Inherit;False;Property;_LambertLightingNormalfromHeight;Lambert Lighting Normal from Height;1;0;Create;True;0;0;0;False;1;Space(5);False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1213;-2432,2272;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1215;-2592,2272;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1210;-1952,2288;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1209;-1792,2048;Inherit;False;Normal from Height Front;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1208;-1760,2288;Inherit;False;Normal from Height Back;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1216;-2816,2016;Inherit;False;158;Noise;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1341;7776,848;Inherit;False;Property;_Tessellation;Tessellation;197;0;Create;True;0;0;0;True;2;Header(Tessellation);Space(5);False;1;0;1;64;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1460;7824,736;Inherit;False;1398;Vertex Offset;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1342;7856,656;Inherit;False;697;Alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1344;7840,560;Inherit;False;620;Colour;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1474;7856,464;Inherit;False;197;Colour Input;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1378;-4464,3184;Inherit;False;Property;_StartFoldoutBaseUVs;Start Foldout Base UVs;5;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1367;-4016,3264;Inherit;False;Property;_EndFoldoutVerticalMasks;End Foldout Vertical Masks;115;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1369;-4016,3344;Inherit;False;Property;_StartFoldoutSpherizeNoise;Start Foldout Spherize Noise;116;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1377;-4432,3104;Inherit;False;Property;_EndFoldoutLighting;End Foldout Lighting;2;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1376;-4464,3024;Inherit;False;Property;_StartFoldoutLighting;Start Foldout Lighting;0;1;[HideInInspector];Create;True;0;0;0;True;1;Tooltip(Allow lighting to affect the surface, from a single directional light and any number of additional lights.);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1357;-4464,3264;Inherit;False;Property;_EndFoldoutBaseUVs;End Foldout Base UVs;10;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1379;-4496,3344;Inherit;False;Property;_StartFoldoutParticleSettings;Start Foldout Particle Settings;11;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1380;-4496,3424;Inherit;False;Property;_EndFoldoutParticleSettings;End Foldout Particle Settings;16;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1358;-4432,3504;Inherit;False;Property;_StartFoldoutColour;Start Foldout Colour;17;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1373;-4432,3584;Inherit;False;Property;_EndFoldoutColour;End Foldout Colour;26;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1363;-4464,4144;Inherit;False;Property;_StartFoldoutRadialMask;Start Foldout Radial Mask;76;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1364;-4464,4224;Inherit;False;Property;_EndFoldoutRadialMask;End Foldout Radial Mask;85;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1374;-4496,3664;Inherit;False;Property;_StartFoldoutVerticalColour;Start Foldout Vertical Colour;27;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1375;-4496,3744;Inherit;False;Property;_EndFoldoutVerticalColour;End Foldout Vertical Colour;37;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1359;-4432,3824;Inherit;False;Property;_StartFoldoutNoise;Start Foldout Noise;38;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1360;-4432,3904;Inherit;False;Property;_EndFoldoutNoise;End Foldout Noise;62;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1361;-4496,3984;Inherit;False;Property;_StartFoldoutNoiseDistortion;Start Foldout Noise Distortion;63;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1362;-4496,4064;Inherit;False;Property;_EndFoldoutNoiseDistortion;End Foldout Noise Distortion;75;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1365;-4048,3024;Inherit;False;Property;_StartFoldoutRadialMaskDistortion;Start Foldout Radial Mask Distortion;86;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1366;-4048,3104;Inherit;False;Property;_EndFoldoutRadialMaskDistortion;End Foldout Radial Mask Distortion;98;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1368;-4016,3184;Inherit;False;Property;_StartFoldoutVerticalMasks;Start Foldout Vertical Masks;99;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1370;-4016,3424;Inherit;False;Property;_EndFoldoutSpherizeNoise;End Foldout Spherize Noise;121;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1371;-4016,3504;Inherit;False;Property;_StartFoldoutFresnelMask;Start Foldout Fresnel Mask;122;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1372;-3984,3584;Inherit;False;Property;_EndFoldoutFresnelMask;End Foldout Fresnel Mask;127;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1381;-3984,3664;Inherit;False;Property;_StartFoldoutDepthFade;Start Foldout Depth Fade;128;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1382;-3984,3744;Inherit;False;Property;_EndFoldoutDepthFade;End Foldout Depth Fade;137;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1383;-4048,3824;Inherit;False;Property;_StartFoldoutIntersectionHighlight;Start Foldout Intersection Highlight;138;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1384;-4048,3904;Inherit;False;Property;_EndFoldoutIntersectionHighlight;End Foldout Intersection Highlight;148;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1347;-4048,4144;Inherit;False;Property;_StartFoldoutVertexNormalOffset;Start Foldout Vertex Normal Offset;155;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1348;-4048,4224;Inherit;False;Property;_EndFoldoutVertexNormalOffset;End Foldout Vertex Normal Offset;161;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1345;-4016,3984;Inherit;False;Property;_StartFoldoutVertexUVOffset;Start Foldout Vertex UV Offset;149;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1346;-4016,4064;Inherit;False;Property;_EndFoldoutVertexUVOffset;End Foldout Vertex UV Offset;154;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1356;-3632,3360;Inherit;False;Property;_StartFoldoutVertexWaveNoiseVerticalMask;Start Foldout Vertex Wave-Noise Vertical Mask;184;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1353;-3632,3440;Inherit;False;Property;_EndFoldoutVertexWaveNoiseVerticalMask;End Foldout Vertex Wave-Noise Vertical Mask;188;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1354;-3632,3520;Inherit;False;Property;_StartFoldoutVertexOffsetoverY;Start Foldout Vertex Offset over Y;189;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1355;-3632,3600;Inherit;False;Property;_EndFoldoutVertexOffsetoverY;End Foldout Vertex Offset over Y;196;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1349;-3568,3040;Inherit;False;Property;_StartFoldoutVertexWave;Start Foldout Vertex Wave;163;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1351;-3568,3200;Inherit;False;Property;_StartFoldoutVertexNoise;Start Foldout Vertex Noise;170;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1350;-3568,3120;Inherit;False;Property;_EndFoldoutVertexWave;End Foldout Vertex Wave;169;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1352;-3568,3280;Inherit;False;Property;_EndFoldoutVertexNoise;End Foldout Vertex Noise;183;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1234;-3456,2208;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1235;-3712,2208;Inherit;False;1248;Particle Rotation 3D;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TexCoordVertexDataNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1245;-4704,2080;Inherit;False;1;4;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1236;-3552,2128;Inherit;False;1247;Particle Center;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1243;-4416,2096;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1247;-4192,2096;Inherit;False;Particle Center;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RotateAboutAxisNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1231;-3264,2080;Inherit;False;False;4;0;FLOAT3;1,0,0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RotateAboutAxisNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1232;-3264,2224;Inherit;False;False;4;0;FLOAT3;0,1,0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RotateAboutAxisNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1233;-3264,2368;Inherit;False;False;4;0;FLOAT3;0,0,1;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;791;-4528,-704;Inherit;False;Property;_VertexNoiseTwistEnabled;Vertex Noise Twist Enabled;182;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleTimeNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;375;-2256,176;Inherit;False;1;0;FLOAT;60;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1445;-2272,64;Inherit;False;1217;Screen Position;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;376;-1776,80;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT;2;False;2;FLOAT;-1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;378;-1536,128;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;380;-2048,80;Inherit;False; ;3;File;2;True;screenPosition;FLOAT2;0,0;In;;Inherit;False;True;time;FLOAT;0;In;;Inherit;False;Hash33;False;False;0;9532a1bcd02c31b48b68b44041ab9502;False;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;377;-1824,224;Inherit;False;Property;_UVSampleNoise;UV Sample Noise;9;0;Create;True;0;0;0;False;1;Space(5);False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;379;-1344,128;Inherit;False;Sample Noise;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1467;8256,1888;Float;False;False;-1;3;Rendering.HighDefinition.HDUnlitGUI;0;13;New Amplify Shader;7f5cb9c3ea6481f469fdd856555439ef;True;ShadowCaster;0;1;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_CullMode;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;False;False;True;1;LightMode=ShadowCaster;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1468;8256,1888;Float;False;False;-1;3;Rendering.HighDefinition.HDUnlitGUI;0;13;New Amplify Shader;7f5cb9c3ea6481f469fdd856555439ef;True;META;0;2;META;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1469;8256,1888;Float;False;False;-1;3;Rendering.HighDefinition.HDUnlitGUI;0;13;New Amplify Shader;7f5cb9c3ea6481f469fdd856555439ef;True;SceneSelectionPass;0;3;SceneSelectionPass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=SceneSelectionPass;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1470;8256,1888;Float;False;False;-1;3;Rendering.HighDefinition.HDUnlitGUI;0;13;New Amplify Shader;7f5cb9c3ea6481f469fdd856555439ef;True;DepthForwardOnly;0;4;DepthForwardOnly;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_CullMode;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;True;True;0;True;_StencilRefDepth;255;False;;255;True;_StencilWriteMaskDepth;7;False;;3;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;False;False;True;1;LightMode=DepthForwardOnly;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1471;8256,1888;Float;False;False;-1;3;Rendering.HighDefinition.HDUnlitGUI;0;13;New Amplify Shader;7f5cb9c3ea6481f469fdd856555439ef;True;MotionVectors;0;5;MotionVectors;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_CullMode;False;False;False;False;False;False;False;False;False;True;True;0;True;_StencilRefMV;255;False;;255;True;_StencilWriteMaskMV;7;False;;3;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;False;False;True;1;LightMode=MotionVectors;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1472;8256,1888;Float;False;False;-1;3;Rendering.HighDefinition.HDUnlitGUI;0;13;New Amplify Shader;7f5cb9c3ea6481f469fdd856555439ef;True;DistortionVectors;0;6;DistortionVectors;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;True;4;2;False;;0;False;;1;7;False;;0;False;;True;1;False;;1;False;;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_CullMode;False;False;False;False;False;False;False;False;False;True;True;0;True;_StencilRefDistortionVec;255;False;;255;True;_StencilWriteMaskDistortionVec;7;False;;3;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;2;False;;True;7;False;;False;True;1;LightMode=DistortionVectors;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1473;8256,1888;Float;False;False;-1;3;Rendering.HighDefinition.HDUnlitGUI;0;13;New Amplify Shader;7f5cb9c3ea6481f469fdd856555439ef;True;ScenePickingPass;0;7;ScenePickingPass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_CullMode;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;True;3;False;;False;True;1;LightMode=Picking;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1466;8112,640;Float;False;True;-1;3;Rendering.HighDefinition.HDUnlitGUI;0;13;Solaris-FlameThrower;7f5cb9c3ea6481f469fdd856555439ef;True;Forward Unlit;0;0;Forward Unlit;12;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;True;3;True;1;d3d11;0;False;False;False;True;True;0;1;False;;10;False;;0;1;False;;0;False;;False;True;True;0;1;False;;0;True;_DstBlend2;0;1;False;;0;False;;False;True;True;0;1;False;;0;True;_DstBlend2;0;1;False;;0;False;;False;False;False;True;0;True;_CullModeForward;False;False;False;True;True;True;True;True;0;True;_ColorMaskTransparentVel;False;False;False;False;False;True;False;0;True;_StencilRef;255;False;;255;True;_StencilWriteMask;7;False;;3;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;True;True;2;False;_ZWrite;True;3;False;_ZTestDepthEqualForOpaque;False;True;1;LightMode=ForwardOnly;False;False;0;;0;0;Standard;34;Surface Type;1;639008127824358817;  Rendering Pass ;0;639008127801440417;  Rendering Pass;1;0;  Blending Mode;0;639008083371003804;  Receive Fog;1;639008130235431828;  Distortion;0;639008128726626795;    Distortion Mode;1;639008119330204180;    Distortion Only;0;639008054329716782;  Depth Write;0;639008259264715915;  Cull Mode;0;639008120291749439;  Depth Test;4;639008261662521746;Double-Sided;0;639008129235748720;Alpha Clipping;0;639008071281845352;  Use Shadow Threshold;1;639008054764259347;Receive Decals;1;639008568640348119;Motion Vectors;0;639008130338678426;  Add Precomputed Velocity;1;639008120036543093;Shadow Matte;0;639008129083194872;Cast Shadows;1;639008130365646765;Write Depth;0;639008127406323735;  Depth Offset;1;639008127219446067;  Conservative;1;639008061201360017;GPU Instancing;1;639008130397262925;Tessellation;1;639008130431600131;  Phong;1;639008057989550525;  Strength;0.5,False,;639008120724338967;  Type;0;639008128188944478;  Tess;16,False,;639008128869381740;  Min;10,False,;0;  Max;25,False,;0;  Edge Length;16,False,;0;  Max Displacement;25,False,;0;Vertex Position;0;639008120747873342;LOD CrossFade;0;639008130538987148;0;8;True;True;True;True;True;False;False;True;False;;False;0
WireConnection;385;0;383;0
WireConnection;384;0;382;0
WireConnection;410;0;409;4
WireConnection;387;1;383;0
WireConnection;387;0;385;0
WireConnection;386;1;382;0
WireConnection;386;0;384;0
WireConnection;369;0;368;0
WireConnection;413;0;409;3
WireConnection;412;0;410;0
WireConnection;412;2;411;0
WireConnection;389;0;387;0
WireConnection;388;0;386;0
WireConnection;370;1;368;0
WireConnection;370;0;369;0
WireConnection;414;0;412;0
WireConnection;371;0;370;0
WireConnection;1244;0;1246;2
WireConnection;1244;1;1246;3
WireConnection;1244;2;1246;4
WireConnection;282;0;281;0
WireConnection;282;1;1451;0
WireConnection;291;1;1457;0
WireConnection;291;0;1456;0
WireConnection;1248;0;1244;0
WireConnection;357;0;355;0
WireConnection;357;1;1459;0
WireConnection;284;0;283;0
WireConnection;284;1;1450;0
WireConnection;284;2;282;0
WireConnection;293;1;291;0
WireConnection;293;0;1455;0
WireConnection;359;0;358;0
WireConnection;359;1;1458;0
WireConnection;359;2;357;0
WireConnection;285;0;284;0
WireConnection;250;0;1439;0
WireConnection;295;0;293;0
WireConnection;295;1;1454;0
WireConnection;360;0;359;0
WireConnection;215;0;212;0
WireConnection;213;0;1439;0
WireConnection;214;0;250;0
WireConnection;336;0;335;0
WireConnection;336;1;1448;0
WireConnection;262;4;1429;0
WireConnection;262;7;259;0
WireConnection;262;8;260;0
WireConnection;262;9;261;0
WireConnection;262;12;1430;0
WireConnection;296;0;295;0
WireConnection;217;0;214;0
WireConnection;218;7;213;0
WireConnection;218;6;215;0
WireConnection;218;8;216;0
WireConnection;218;9;249;0
WireConnection;341;4;336;0
WireConnection;341;7;338;0
WireConnection;341;8;339;0
WireConnection;341;9;340;0
WireConnection;341;12;1449;0
WireConnection;266;4;262;0
WireConnection;266;6;262;15
WireConnection;266;7;263;0
WireConnection;265;4;262;0
WireConnection;265;6;262;15
WireConnection;265;7;263;0
WireConnection;265;9;264;0
WireConnection;219;0;218;0
WireConnection;219;2;217;0
WireConnection;251;0;1439;0
WireConnection;344;4;341;0
WireConnection;344;6;341;15
WireConnection;344;7;342;0
WireConnection;344;9;343;0
WireConnection;345;4;341;0
WireConnection;345;6;341;15
WireConnection;345;7;342;0
WireConnection;267;1;266;3
WireConnection;267;0;265;3
WireConnection;221;1;251;0
WireConnection;221;0;219;0
WireConnection;223;10;221;0
WireConnection;223;9;222;0
WireConnection;346;1;345;3
WireConnection;346;0;344;3
WireConnection;269;5;267;0
WireConnection;269;12;268;0
WireConnection;224;1;221;0
WireConnection;224;0;223;0
WireConnection;349;5;346;0
WireConnection;349;12;347;0
WireConnection;271;0;269;14
WireConnection;271;1;270;0
WireConnection;225;0;224;0
WireConnection;228;0;225;1
WireConnection;228;1;226;0
WireConnection;350;0;349;14
WireConnection;350;1;348;0
WireConnection;272;0;271;0
WireConnection;391;0;390;0
WireConnection;364;0;363;0
WireConnection;363;13;362;0
WireConnection;233;0;225;0
WireConnection;230;0;228;0
WireConnection;230;1;227;0
WireConnection;231;0;225;2
WireConnection;351;0;350;0
WireConnection;273;0;272;0
WireConnection;392;1;390;0
WireConnection;392;0;391;0
WireConnection;365;1;363;0
WireConnection;365;0;364;0
WireConnection;254;0;233;0
WireConnection;232;2;230;0
WireConnection;232;12;229;0
WireConnection;255;0;231;0
WireConnection;352;0;351;0
WireConnection;393;0;392;0
WireConnection;394;0;386;0
WireConnection;366;0;365;0
WireConnection;208;0;205;0
WireConnection;208;1;1441;0
WireConnection;234;0;254;0
WireConnection;234;1;232;14
WireConnection;234;2;255;0
WireConnection;565;0;563;0
WireConnection;395;0;394;0
WireConnection;416;0;415;1
WireConnection;209;0;206;0
WireConnection;209;1;1440;0
WireConnection;209;2;208;0
WireConnection;237;0;234;0
WireConnection;237;1;1438;0
WireConnection;237;2;1437;0
WireConnection;566;0;564;0
WireConnection;566;1;565;0
WireConnection;396;0;387;0
WireConnection;210;0;209;0
WireConnection;238;0;237;0
WireConnection;570;0;566;0
WireConnection;570;1;568;0
WireConnection;571;1;567;0
WireConnection;571;2;569;0
WireConnection;1253;0;1251;0
WireConnection;1253;1;1252;0
WireConnection;397;0;396;0
WireConnection;575;0;570;0
WireConnection;575;1;573;0
WireConnection;576;0;574;0
WireConnection;576;1;571;0
WireConnection;1263;0;1261;0
WireConnection;1263;1;1262;0
WireConnection;1256;0;1253;0
WireConnection;1256;1;1254;0
WireConnection;145;4;1433;0
WireConnection;145;7;142;0
WireConnection;145;8;139;0
WireConnection;145;9;138;0
WireConnection;145;12;1434;0
WireConnection;578;10;575;0
WireConnection;578;8;576;0
WireConnection;578;9;572;0
WireConnection;1268;0;1263;0
WireConnection;1268;1;1264;0
WireConnection;1257;1;1255;0
WireConnection;1257;0;1256;0
WireConnection;146;4;145;0
WireConnection;146;6;145;15
WireConnection;146;7;143;0
WireConnection;146;9;144;0
WireConnection;147;4;145;0
WireConnection;147;6;145;15
WireConnection;147;7;143;0
WireConnection;580;0;578;0
WireConnection;580;1;579;0
WireConnection;1273;1;1267;0
WireConnection;1273;0;1268;0
WireConnection;1265;20;1257;0
WireConnection;1265;4;1260;0
WireConnection;1265;7;1259;0
WireConnection;1265;23;1258;0
WireConnection;1266;0;1265;0
WireConnection;418;0;415;2
WireConnection;418;1;417;0
WireConnection;148;1;147;0
WireConnection;148;0;146;0
WireConnection;581;0;580;0
WireConnection;1274;20;1273;0
WireConnection;1274;4;1270;0
WireConnection;1274;7;1271;0
WireConnection;1274;23;1272;0
WireConnection;1275;0;1274;0
WireConnection;1269;1;1265;0
WireConnection;1269;0;1266;0
WireConnection;419;0;418;0
WireConnection;153;20;148;0
WireConnection;153;4;149;0
WireConnection;153;7;151;0
WireConnection;153;23;150;0
WireConnection;582;0;581;0
WireConnection;1276;1;1274;0
WireConnection;1276;0;1275;0
WireConnection;1278;0;1269;0
WireConnection;501;0;500;0
WireConnection;504;0;501;0
WireConnection;503;0;502;0
WireConnection;154;0;153;0
WireConnection;154;1;1435;0
WireConnection;583;0;582;0
WireConnection;1277;0;1276;0
WireConnection;505;1;501;0
WireConnection;505;0;504;0
WireConnection;507;0;503;0
WireConnection;718;0;715;0
WireConnection;718;1;714;0
WireConnection;155;0;154;0
WireConnection;513;20;505;0
WireConnection;513;4;506;0
WireConnection;512;20;507;0
WireConnection;512;4;508;0
WireConnection;511;0;510;0
WireConnection;511;1;509;0
WireConnection;645;0;644;0
WireConnection;645;1;1431;0
WireConnection;720;0;716;0
WireConnection;720;1;717;0
WireConnection;720;2;718;0
WireConnection;157;1;155;0
WireConnection;157;2;156;0
WireConnection;585;3;584;0
WireConnection;515;0;513;0
WireConnection;515;1;512;0
WireConnection;517;0;511;0
WireConnection;721;0;719;0
WireConnection;518;0;514;0
WireConnection;644;0;642;0
WireConnection;649;0;648;0
WireConnection;649;1;1432;0
WireConnection;646;1;644;0
WireConnection;646;0;645;0
WireConnection;724;0;720;0
WireConnection;158;0;157;0
WireConnection;588;0;585;0
WireConnection;588;1;586;0
WireConnection;588;2;587;0
WireConnection;519;0;515;0
WireConnection;520;20;517;0
WireConnection;520;4;516;0
WireConnection;739;0;729;0
WireConnection;741;0;728;0
WireConnection;740;0;727;0
WireConnection;740;1;726;0
WireConnection;731;0;722;0
WireConnection;752;0;742;1
WireConnection;730;0;721;0
WireConnection;521;0;518;0
WireConnection;648;1;644;0
WireConnection;648;0;646;0
WireConnection;650;1;648;0
WireConnection;650;0;649;0
WireConnection;732;1;725;0
WireConnection;732;0;723;0
WireConnection;590;1;588;0
WireConnection;590;2;589;0
WireConnection;528;0;519;0
WireConnection;526;0;520;0
WireConnection;747;0;739;1
WireConnection;747;1;737;0
WireConnection;747;2;738;0
WireConnection;748;0;741;0
WireConnection;748;1;740;0
WireConnection;743;0;731;0
WireConnection;756;0;752;0
WireConnection;756;1;750;0
WireConnection;742;0;730;0
WireConnection;525;20;521;0
WireConnection;525;4;522;0
WireConnection;525;7;523;0
WireConnection;525;23;524;0
WireConnection;655;1;648;0
WireConnection;655;0;650;0
WireConnection;744;4;732;0
WireConnection;744;7;736;0
WireConnection;744;8;733;0
WireConnection;744;9;734;0
WireConnection;744;12;735;0
WireConnection;1241;20;1240;0
WireConnection;1241;4;1239;0
WireConnection;1241;7;1237;0
WireConnection;1241;23;1238;0
WireConnection;592;0;590;0
WireConnection;755;0;747;0
WireConnection;755;1;748;0
WireConnection;593;0;591;4
WireConnection;765;0;742;0
WireConnection;765;1;756;0
WireConnection;757;0;749;1
WireConnection;757;1;751;0
WireConnection;749;0;743;0
WireConnection;766;0;761;0
WireConnection;527;0;525;0
WireConnection;661;0;654;0
WireConnection;661;1;655;0
WireConnection;753;4;744;0
WireConnection;753;6;744;15
WireConnection;753;7;745;0
WireConnection;753;9;746;0
WireConnection;754;4;744;0
WireConnection;754;6;744;15
WireConnection;754;7;745;0
WireConnection;1242;0;1241;0
WireConnection;439;0;436;0
WireConnection;442;0;437;0
WireConnection;762;0;755;0
WireConnection;767;0;749;0
WireConnection;767;1;757;0
WireConnection;772;0;765;0
WireConnection;772;1;766;0
WireConnection;768;0;758;0
WireConnection;669;0;661;0
WireConnection;670;0;662;0
WireConnection;665;0;659;0
WireConnection;668;0;660;0
WireConnection;667;0;658;0
WireConnection;759;1;754;3
WireConnection;759;0;753;3
WireConnection;447;0;440;0
WireConnection;447;1;441;0
WireConnection;448;0;439;0
WireConnection;448;1;438;0
WireConnection;451;0;442;0
WireConnection;770;0;762;0
WireConnection;770;1;764;0
WireConnection;770;2;1453;0
WireConnection;773;0;767;0
WireConnection;773;1;768;0
WireConnection;780;1;772;0
WireConnection;781;0;772;0
WireConnection;674;0;669;0
WireConnection;674;1;666;0
WireConnection;674;2;667;0
WireConnection;674;3;670;0
WireConnection;674;4;665;0
WireConnection;674;5;668;0
WireConnection;675;0;673;0
WireConnection;675;1;672;0
WireConnection;769;10;759;0
WireConnection;769;9;760;0
WireConnection;453;0;448;0
WireConnection;453;1;445;0
WireConnection;453;2;446;0
WireConnection;454;0;447;0
WireConnection;454;1;444;0
WireConnection;454;2;450;0
WireConnection;452;0;443;0
WireConnection;452;1;449;0
WireConnection;455;0;451;0
WireConnection;777;0;770;0
WireConnection;777;1;771;0
WireConnection;779;0;773;0
WireConnection;778;1;773;0
WireConnection;785;1;781;0
WireConnection;785;0;780;0
WireConnection;677;0;674;0
WireConnection;677;1;675;0
WireConnection;782;0;769;0
WireConnection;782;1;774;0
WireConnection;782;2;1452;0
WireConnection;456;0;452;0
WireConnection;456;1;454;0
WireConnection;456;2;453;0
WireConnection;783;0;777;0
WireConnection;784;1;779;0
WireConnection;784;0;778;0
WireConnection;789;0;785;0
WireConnection;679;0;677;0
WireConnection;786;0;782;0
WireConnection;466;0;456;0
WireConnection;470;0;460;0
WireConnection;470;1;462;0
WireConnection;468;0;459;0
WireConnection;468;1;458;0
WireConnection;467;0;457;0
WireConnection;469;0;463;0
WireConnection;493;0;465;0
WireConnection;471;0;461;0
WireConnection;471;1;464;0
WireConnection;787;0;783;0
WireConnection;788;0;784;0
WireConnection;700;0;679;0
WireConnection;790;0;786;0
WireConnection;478;0;469;0
WireConnection;478;1;470;0
WireConnection;477;0;493;0
WireConnection;477;1;471;0
WireConnection;476;0;467;0
WireConnection;476;1;468;0
WireConnection;1399;0;1389;0
WireConnection;699;0;700;0
WireConnection;481;0;476;0
WireConnection;481;1;478;0
WireConnection;481;2;477;0
WireConnection;1390;0;1385;0
WireConnection;1390;1;1386;0
WireConnection;1390;2;1387;0
WireConnection;1390;3;1388;0
WireConnection;1390;4;1399;0
WireConnection;698;0;699;0
WireConnection;485;0;481;0
WireConnection;1394;0;1391;0
WireConnection;1393;0;1390;0
WireConnection;1393;1;1392;0
WireConnection;678;0;676;0
WireConnection;701;0;698;0
WireConnection;1396;10;1393;0
WireConnection;1396;9;1394;0
WireConnection;680;0;701;0
WireConnection;680;1;678;0
WireConnection;1397;0;1396;0
WireConnection;1397;1;1395;0
WireConnection;683;1;680;0
WireConnection;683;0;679;0
WireConnection;1398;0;1397;0
WireConnection;697;0;683;0
WireConnection;242;2;230;0
WireConnection;242;12;229;0
WireConnection;242;17;239;0
WireConnection;242;18;240;0
WireConnection;241;1;232;14
WireConnection;241;0;242;14
WireConnection;245;1;219;0
WireConnection;245;2;246;0
WireConnection;245;3;247;0
WireConnection;246;0;244;0
WireConnection;247;0;243;0
WireConnection;164;1;147;3
WireConnection;164;0;146;3
WireConnection;163;5;164;0
WireConnection;163;12;149;0
WireConnection;163;17;151;0
WireConnection;163;18;150;0
WireConnection;162;0;163;14
WireConnection;159;0;1436;0
WireConnection;159;1;1435;0
WireConnection;160;1;154;0
WireConnection;160;0;159;0
WireConnection;491;0;465;0
WireConnection;613;0;588;0
WireConnection;403;0;387;0
WireConnection;403;1;400;0
WireConnection;401;0;386;0
WireConnection;401;1;398;0
WireConnection;1222;0;1223;1
WireConnection;1222;1;1223;2
WireConnection;1219;0;1222;0
WireConnection;1221;0;1224;1
WireConnection;1221;1;1224;2
WireConnection;1220;0;1221;0
WireConnection;1218;0;1219;0
WireConnection;1218;1;1220;0
WireConnection;1217;0;1218;0
WireConnection;402;0;392;0
WireConnection;402;1;399;0
WireConnection;373;0;370;0
WireConnection;373;1;372;0
WireConnection;421;0;420;4
WireConnection;422;0;420;1
WireConnection;175;22;178;5
WireConnection;176;22;186;5
WireConnection;167;22;171;5
WireConnection;166;22;169;5
WireConnection;177;0;175;0
WireConnection;177;1;176;0
WireConnection;177;2;1443;0
WireConnection;168;0;166;0
WireConnection;168;1;167;0
WireConnection;168;2;1442;0
WireConnection;188;0;177;0
WireConnection;191;0;168;0
WireConnection;280;0;188;2
WireConnection;278;0;188;1
WireConnection;279;0;188;3
WireConnection;275;0;191;2
WireConnection;277;0;191;3
WireConnection;276;0;191;1
WireConnection;179;0;278;0
WireConnection;179;1;183;0
WireConnection;180;0;280;0
WireConnection;180;1;184;0
WireConnection;181;0;279;0
WireConnection;181;1;185;0
WireConnection;196;0;276;0
WireConnection;196;1;194;0
WireConnection;195;0;275;0
WireConnection;195;1;193;0
WireConnection;192;0;277;0
WireConnection;192;1;190;0
WireConnection;189;0;179;0
WireConnection;189;1;180;0
WireConnection;189;2;181;0
WireConnection;602;0;1475;0
WireConnection;172;0;196;0
WireConnection;172;1;195;0
WireConnection;172;2;192;0
WireConnection;174;0;172;0
WireConnection;174;1;189;0
WireConnection;174;2;1444;0
WireConnection;627;0;602;1
WireConnection;173;1;172;0
WireConnection;173;0;174;0
WireConnection;629;0;602;3
WireConnection;628;0;627;0
WireConnection;608;0;629;0
WireConnection;608;1;607;0
WireConnection;603;0;602;2
WireConnection;603;1;606;0
WireConnection;604;0;628;0
WireConnection;604;1;605;0
WireConnection;601;0;1475;0
WireConnection;601;1;614;0
WireConnection;611;0;610;0
WireConnection;611;1;593;0
WireConnection;612;0;609;0
WireConnection;612;1;591;5
WireConnection;609;0;604;0
WireConnection;609;1;603;0
WireConnection;609;2;608;0
WireConnection;1480;0;1478;0
WireConnection;1480;1;1479;0
WireConnection;1481;0;1480;0
WireConnection;621;0;1477;0
WireConnection;621;1;612;0
WireConnection;621;2;611;0
WireConnection;620;0;621;0
WireConnection;1482;0;1481;0
WireConnection;1477;0;601;0
WireConnection;1477;1;1482;0
WireConnection;197;0;173;0
WireConnection;595;0;594;0
WireConnection;596;0;594;0
WireConnection;623;0;596;1
WireConnection;625;0;596;3
WireConnection;616;0;596;2
WireConnection;616;1;615;0
WireConnection;598;0;617;0
WireConnection;598;1;616;0
WireConnection;598;2;626;0
WireConnection;626;0;625;0
WireConnection;617;0;623;0
WireConnection;617;1;618;0
WireConnection;597;0;598;0
WireConnection;199;0;201;0
WireConnection;199;1;200;0
WireConnection;202;0;199;0
WireConnection;431;20;427;0
WireConnection;431;4;428;0
WireConnection;431;7;429;0
WireConnection;431;23;430;0
WireConnection;432;0;431;0
WireConnection;1211;20;1213;0
WireConnection;1211;110;1214;0
WireConnection;1212;20;1216;0
WireConnection;1212;110;1214;0
WireConnection;1213;0;1215;0
WireConnection;1215;0;1216;0
WireConnection;1210;0;1211;0
WireConnection;1209;0;1212;0
WireConnection;1208;0;1210;0
WireConnection;1234;0;1235;0
WireConnection;1243;0;1245;3
WireConnection;1243;1;1245;4
WireConnection;1243;2;1246;1
WireConnection;1247;0;1243;0
WireConnection;1231;1;1234;0
WireConnection;1231;3;1236;0
WireConnection;1232;1;1234;0
WireConnection;1232;3;1231;0
WireConnection;1233;1;1234;0
WireConnection;1233;3;1232;0
WireConnection;791;1;759;0
WireConnection;791;0;769;0
WireConnection;376;0;380;0
WireConnection;378;0;376;0
WireConnection;378;1;377;0
WireConnection;380;0;1445;0
WireConnection;380;1;375;0
WireConnection;379;0;378;0
WireConnection;1466;0;1344;0
WireConnection;1466;1;1474;0
WireConnection;1466;2;1342;0
WireConnection;1466;6;1460;0
ASEEND*/
//CHKSM=7AE0DED48C4ABC6520462F9337E52458A8226E65