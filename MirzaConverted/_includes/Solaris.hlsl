#ifndef SOLARIS_HDRP_HLSL
#define SOLARIS_HDRP_HLSL

// HDRP Includes - Only need ShaderVariables for _Time
#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"

// Hash Functions - Pure math, pipeline-agnostic
// These are the ONLY functions used by the Solaris shader (in CustomExpressionNodes)

float3 hash33(float3 p3)
{
    p3 = frac(p3 * float3(.1031, .1030, .0973));
    p3 += dot(p3, p3.yxz + 33.33);
    return frac((p3.xxy + p3.yxx) * p3.zyx);
}

float3 Hash33(float2 screenPosition, float time)
{
    // XY, and Z
    return hash33(float3(screenPosition, time));
}

#endif