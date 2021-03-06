//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyeDirection;
//   float4 g_EyePosition;
//   float4 g_ForceAlphaColor;
//   float4 g_GI0Scale;
//   float4 g_GI1Scale;
//   sampler2D g_GISampler;
//   float4 g_LightScatteringColor;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 mrgEdgeEmissionParam;
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgLocalLight0_Color;
//   float4 mrgLocalLight0_Position;
//   float4 mrgLocalLight0_Range;
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   float4 mrgPlayableParam;
//   sampler2D sampDif;
//   sampler2D sampNrm;
//   sampler2D sampPow;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_Specular                            c18      1
//   g_PowerGlossLevel                     c20      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   g_EyeDirection                        c23      1
//   g_ViewportSize                        c24      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   mrgLocalLight0_Position               c38      1
//   mrgLocalLight0_Color                  c39      1
//   mrgLocalLight0_Range                  c40      1
//   mrgLocalLight1_Position               c42      1
//   mrgLocalLight1_Color                  c43      1
//   mrgLocalLight1_Range                  c44      1
//   mrgLocalLight2_Position               c46      1
//   mrgLocalLight2_Color                  c47      1
//   mrgLocalLight2_Range                  c48      1
//   mrgLocalLight3_Position               c50      1
//   mrgLocalLight3_Color                  c51      1
//   mrgLocalLight3_Range                  c52      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_GI1Scale                            c71      1
//   g_LightScatteringColor                c75      1
//   mrgPlayableParam                      c86      1
//   mrgEdgeEmissionParam                  c88      1
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampPow                               s2       1
//   sampNrm                               s3       1
//   g_GISampler                           s10      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.5, 2, -1, 1
    def c1, 0.298900008, 0.586600006, 0.114399999, 0
    def c2, -2, 3, 500, 5
    def c3, 1024, 4, 0, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord5_pp v4.xyz
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl vPos.y
    dcl_2d s0
    dcl_2d s2
    dcl_2d s3
    dcl_2d s10
    dcl_2d s13
    rcp r0.x, v3.w
    mul r0.xy, r0.x, v3
    mad r0.xy, r0, c0.y, c0.z
    abs_sat r0.xy, r0
    add_sat r0.xy, r0, -c65.x
    mul r0.xy, r0, c65.y
    max r1.x, r0.x, r0.y
    max r0.x, v3.z, c1.w
    add r0.y, r0.x, -v3.w
    cmp r0.z, r0.y, c1.w, r0.x
    mov r0.xyw, v3
    texldp_pp r0, r0, s13
    lrp_pp r1.y, v4.z, c0.w, r0.x
    lrp_pp r0.x, r1.x, c0.w, r1.y
    texld_pp r1, v0.zwzw, s10
    mul_pp r0.yzw, r1.xxyz, r1.xxyz
    dp3_pp r0.y, r0.yzww, c1
    mad_pp r1.xyz, r1, r1, -r0.y
    mad_sat_pp r0.yzw, r1.xxyz, c71.w, r0.y
    mul_pp r0.yzw, r0, c70.xxyz
    mul_pp r1.x, r0.x, r1.w
    mul_pp r1.yzw, r0, c17.xxyz
    mul r1.yzw, r1, c70.w
    mad r0.yzw, r0, c17.xxyz, -r1
    mad_pp r0.xyz, r0.x, r0.yzww, r1.yzww
    add_pp r0.w, -c61.z, c61.y
    rcp_pp r0.w, r0.w
    add r1.yzw, -c22.xxyz, v1.xxyz
    dp3 r2.x, r1.yzww, r1.yzww
    rsq r2.x, r2.x
    mul_pp r1.yzw, r1, r2.x
    rcp r2.x, r2.x
    add r2.x, r2.x, -c60.z
    dp3_pp r2.y, r1.yzww, c23
    add_pp r2.y, r2.y, -c61.z
    mul_sat_pp r0.w, r0.w, r2.y
    mad_pp r2.y, r0.w, c2.x, c2.y
    mul_pp r0.w, r0.w, r0.w
    mul_pp r0.w, r0.w, r2.y
    pow_sat_pp r2.y, r0.w, c61.w
    mov_pp r0.w, c0.w
    add r2.z, r0.w, -c61.x
    cmp_pp r2.y, r2.z, c0.w, r2.y
    add r2.z, -c60.z, c60.w
    rcp r2.z, r2.z
    mul_sat r2.x, r2.z, r2.x
    add_pp r2.x, -r2.x, c0.w
    cmp_pp r0.w, -c61.x, r0.w, r2.x
    mul_pp r0.w, r2.y, r0.w
    add r2.x, -c40.z, c40.w
    rcp r2.x, r2.x
    add r2.yzw, -c38.xxyz, v1.xxyz
    dp3 r3.x, r2.yzww, r2.yzww
    rsq r3.x, r3.x
    rcp r3.y, r3.x
    mul_pp r2.yzw, r2, r3.x
    add r3.x, r3.y, -c40.z
    mul_sat r2.x, r2.x, r3.x
    add_pp r2.x, -r2.x, c0.w
    add r3.x, -c44.z, c44.w
    rcp r3.x, r3.x
    add r3.yzw, -c42.xxyz, v1.xxyz
    dp3 r4.x, r3.yzww, r3.yzww
    rsq r4.x, r4.x
    rcp r4.y, r4.x
    mul_pp r3.yzw, r3, r4.x
    add r4.x, r4.y, -c44.z
    mul_sat r3.x, r3.x, r4.x
    add_pp r3.x, -r3.x, c0.w
    nrm_pp r4.xyz, v6
    texld_pp r5, v0, s3
    mul_pp r5.x, r5.w, r5.x
    mad_pp r5.xy, r5, c0.y, c0.z
    mul_pp r4.xyz, r4, r5.y
    nrm_pp r6.xyz, v5
    mad_pp r4.xyz, r5.x, r6, r4
    dp2add_pp r4.w, r5, -r5, c0.w
    rsq_pp r4.w, r4.w
    rcp_pp r4.w, r4.w
    nrm_pp r5.xyz, v2
    mad_pp r4.xyz, r4.w, r5, r4
    dp3_pp r4.w, r4, -r3.yzww
    mul_pp r5.xyz, r4.w, c43
    cmp_pp r5.xyz, r4.w, r5, c1.w
    mul_pp r5.xyz, r3.x, r5
    dp3_pp r4.w, r4, -r2.yzww
    mul_pp r6.xyz, r4.w, c39
    cmp_pp r6.xyz, r4.w, r6, c1.w
    mad_pp r5.xyz, r2.x, r6, r5
    add r4.w, -c48.z, c48.w
    rcp r4.w, r4.w
    add r6.xyz, -c46, v1
    dp3 r5.w, r6, r6
    rsq r5.w, r5.w
    rcp r6.w, r5.w
    mul_pp r6.xyz, r5.w, r6
    add r5.w, r6.w, -c48.z
    mul_sat r4.w, r4.w, r5.w
    add_pp r4.w, -r4.w, c0.w
    dp3_pp r5.w, r4, -r6
    mul_pp r7.xyz, r5.w, c47
    cmp_pp r7.xyz, r5.w, r7, c1.w
    mad_pp r5.xyz, r4.w, r7, r5
    add r5.w, -c52.z, c52.w
    rcp r5.w, r5.w
    add r7.xyz, -c50, v1
    dp3 r6.w, r7, r7
    rsq r6.w, r6.w
    rcp r7.w, r6.w
    mul_pp r7.xyz, r6.w, r7
    add r6.w, r7.w, -c52.z
    mul_sat r5.w, r5.w, r6.w
    add_pp r5.w, -r5.w, c0.w
    dp3_pp r6.w, r4, -r7
    mul_pp r8.xyz, r6.w, c51
    cmp_pp r8.xyz, r6.w, r8, c1.w
    mad_pp r5.xyz, r5.w, r8, r5
    dp3_pp r6.w, r4, -c10
    mul r8.xyz, r6.w, c36
    mul_pp r8.xyz, r1.x, r8
    cmp_pp r8.xyz, r6.w, r8, c1.w
    add_pp r5.xyz, r5, r8
    dp3_pp r6.w, r4, -r1.yzww
    mul_pp r8.xyz, c58.w, c58
    mul_pp r8.xyz, r6.w, r8
    cmp_pp r8.xyz, r6.w, r8, c1.w
    mad_pp r5.xyz, r0.w, r8, r5
    add_pp r0.xyz, r0, r5
    mul_pp r0.xyz, r0, c16
    add_pp r5.xyz, c22, -v1
    dp3_pp r6.w, r5, r5
    rsq_pp r6.w, r6.w
    mad_pp r3.yzw, r5.xxyz, r6.w, -r3
    nrm_pp r8.xyz, r3.yzww
    dp3_sat_pp r3.y, r8, r4
    texld_pp r8, v0, s2
    mul_pp r3.zw, r8.x, c20.xyyz
    mul_pp r3.zw, r3, c2
    max_pp r7.w, r3.z, c0.w
    min r3.z, r7.w, c3.x
    pow r7.w, r3.y, r3.z
    mul_pp r8.xyz, r3.w, c43
    mul_pp r8.xyz, r7.w, r8
    mul_pp r8.xyz, r3.x, r8
    mad_pp r2.yzw, r5.xxyz, r6.w, -r2
    nrm_pp r9.xyz, r2.yzww
    dp3_sat_pp r2.y, r9, r4
    pow r7.w, r2.y, r3.z
    mul_pp r2.yzw, r3.w, c39.xxyz
    mul_pp r2.yzw, r7.w, r2
    mad_pp r2.xyz, r2.x, r2.yzww, r8
    mad_pp r6.xyz, r5, r6.w, -r6
    nrm_pp r8.xyz, r6
    dp3_sat_pp r2.w, r8, r4
    pow r6.x, r2.w, r3.z
    mul_pp r8.xyz, r3.w, c47
    mul_pp r6.xyz, r6.x, r8
    mad_pp r2.xyz, r4.w, r6, r2
    mad_pp r6.xyz, r5, r6.w, -r7
    nrm_pp r7.xyz, r6
    dp3_sat_pp r2.w, r7, r4
    pow r4.w, r2.w, r3.z
    mul_pp r6.xyz, r3.w, c51
    mul_pp r6.xyz, r4.w, r6
    mad_pp r2.xyz, r5.w, r6, r2
    mul_pp r6.xyz, r3.w, c37
    mad_pp r7.xyz, r5, r6.w, -c10
    nrm_pp r8.xyz, r7
    dp3_sat_pp r2.w, r8, r4
    pow r4.w, r2.w, r3.z
    mul_pp r6.xyz, r4.w, r6
    mad_pp r2.xyz, r6, r1.x, r2
    mul_pp r6.xyz, c59.w, c59
    mul_pp r3.xyw, r3.w, r6.xyzz
    mad_pp r1.xyz, r5, r6.w, -r1.yzww
    mul_pp r5.xyz, r5, r6.w
    dp3_sat_pp r1.w, r5, r4
    rsq_pp r1.w, r1.w
    rcp_pp r1.w, r1.w
    add r1.w, -r1.w, c0.w
    mul r5.xyz, r1.w, c88
    nrm_pp r6.xyz, r1
    dp3_sat_pp r1.x, r6, r4
    pow r2.w, r1.x, r3.z
    mul_pp r1.xyz, r2.w, r3.xyww
    mad_pp r1.xyz, r0.w, r1, r2
    mul_pp r1.xyz, r1, c18
    mul_pp r1.xyz, r1, v2.w
    add r0.w, c0.x, vPos.y
    mov r2.x, c86.x
    mad r0.w, r0.w, c24.w, -r2.x
    mul_sat_pp r0.w, r0.w, c86.y
    texld_pp r2, v0, s0
    add_pp r2.xyz, r2, c0.z
    mul_pp r1.w, r2.w, c16.w
    mul_pp r1.w, r1.w, v7.w
    mul_pp r3.w, r1.w, c21.x
    mad_pp r2.xyz, r2, r0.w, c0.w
    mad_pp r0.xyz, r0, r2, r1
    mad_pp r3.xyz, r0, v7, r5
    mul_pp r0, r3, c89
    min_pp r1, r0, c3.y
    mul_pp r0.xyz, c75, v4.y
    mad_pp oC0.xyz, r1, v4.x, r0
    mov_pp oC0.w, r1.w

// approximately 238 instruction slots used (5 texture, 233 arithmetic)
