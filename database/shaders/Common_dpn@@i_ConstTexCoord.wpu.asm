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
//   float4 g_LightScatteringColor;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
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
//   float4 mrgTexcoordIndex[4];
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
//   mrgTexcoordIndex                      c26      2
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
//   g_LightScatteringColor                c75      1
//   mrgPlayableParam                      c86      1
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampPow                               s2       1
//   sampNrm                               s3       1
//

    ps_3_0
    def c0, 0.5, 2, -1, -3
    def c1, 500, 5, 1024, 4
    def c2, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5_pp v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl vPos.y
    dcl_2d s0
    dcl_2d s2
    dcl_2d s3
    add_pp r0.x, -c61.z, c61.y
    rcp_pp r0.x, r0.x
    add r0.yzw, -c22.xxyz, v2.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r0.yzw, r0, r1.x
    rcp r1.x, r1.x
    add r1.x, r1.x, -c60.z
    dp3_pp r1.y, r0.yzww, c23
    add_pp r1.y, r1.y, -c61.z
    mul_sat_pp r0.x, r0.x, r1.y
    mad_pp r1.y, r0.x, -c0.y, -c0.w
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r2.xy, c2
    add r0.x, r2.y, -c61.x
    cmp_pp r0.x, r0.x, c2.y, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c2.y
    cmp_pp r1.x, -c61.x, r2.y, r1.x
    mul_pp r0.x, r0.x, r1.x
    add r1.x, -c48.z, c48.w
    rcp r1.x, r1.x
    add r1.yzw, -c46.xxyz, v2.xxyz
    dp3 r2.y, r1.yzww, r1.yzww
    rsq r2.y, r2.y
    rcp r2.z, r2.y
    mul_pp r1.yzw, r1, r2.y
    add r2.y, r2.z, -c48.z
    mul_sat r1.x, r1.x, r2.y
    add_pp r1.x, -r1.x, c2.y
    add r2.y, -c40.z, c40.w
    rcp r2.y, r2.y
    add r3.xyz, -c38, v2
    dp3 r2.z, r3, r3
    rsq r2.z, r2.z
    rcp r2.w, r2.z
    mul_pp r3.xyz, r2.z, r3
    add r2.z, r2.w, -c40.z
    mul_sat r2.y, r2.y, r2.z
    add r2.z, -c44.z, c44.w
    rcp r2.z, r2.z
    add r4.xyz, -c42, v2
    dp3 r2.w, r4, r4
    rsq r2.w, r2.w
    rcp r3.w, r2.w
    mul_pp r4.xyz, r2.w, r4
    add r2.w, r3.w, -c44.z
    mul_sat r2.z, r2.z, r2.w
    add_pp r2.yz, -r2, c2.y
    frc r5.xy, c26.xwzw
    cmp r5.zw, -r5.xyxy, c2.x, c2.y
    add r5.xy, -r5, c26.xwzw
    cmp r5.zw, c26.xyxw, r2.x, r5
    add r5.xy, r5.zwzw, r5
    add r6, r5.y, -c2
    add r5, r5.x, -c2
    cmp r7.xy, -r6_abs.x, v0, c2.x
    cmp r6.xy, -r6_abs.y, v0.zwzw, r7
    cmp r6.xy, -r6_abs.z, v1, r6
    cmp r6.xy, -r6_abs.w, v1.zwzw, r6
    texld_pp r6, r6, s2
    mul_pp r6.xy, r6.x, c20.yzzw
    mul_pp r6.xy, r6, c1
    mul_pp r7.xyz, r6.y, c43
    max_pp r2.w, r6.x, c2.y
    min r3.w, r2.w, c1.z
    frc r2.w, c27.x
    cmp r4.w, -r2.w, c2.x, c2.y
    add r2.w, -r2.w, c27.x
    cmp r2.x, c27.x, r2.x, r4.w
    add r2.x, r2.x, r2.w
    add r8, r2.x, -c2
    cmp r2.xw, -r8_abs.x, v0.xyzy, c2.x
    cmp r2.xw, -r8_abs.y, v0.zyzw, r2
    cmp r2.xw, -r8_abs.z, v1.xyzy, r2
    cmp r2.xw, -r8_abs.w, v1.zyzw, r2
    texld_pp r8, r2.xwzw, s3
    mul_pp r8.x, r8.w, r8.x
    mad_pp r2.xw, r8.xyzy, c0.y, c0.z
    nrm_pp r8.xyz, v6
    mul_pp r6.xzw, r2.w, r8.xyyz
    nrm_pp r8.xyz, v5
    mad_pp r6.xzw, r2.x, r8.xyyz, r6
    dp2add_pp r2.x, r2.xwzw, -r2.xwzw, c2.y
    rsq_pp r2.x, r2.x
    rcp_pp r2.x, r2.x
    nrm_pp r8.xyz, v3
    mad_pp r6.xzw, r2.x, r8.xyyz, r6
    add_pp r8.xyz, c22, -v2
    dp3_pp r2.x, r8, r8
    rsq_pp r2.x, r2.x
    mad_pp r9.xyz, r8, r2.x, -r4
    dp3_pp r2.w, r6.xzww, -r4
    nrm_pp r4.xyz, r9
    dp3_sat_pp r4.x, r4, r6.xzww
    pow r7.w, r4.x, r3.w
    mul_pp r4.xyz, r7.w, r7
    mul_pp r4.xyz, r2.z, r4
    mul_pp r7.xyz, r6.y, c39
    mad_pp r9.xyz, r8, r2.x, -r3
    dp3_pp r3.x, r6.xzww, -r3
    nrm_pp r10.xyz, r9
    dp3_sat_pp r3.y, r10, r6.xzww
    pow r4.w, r3.y, r3.w
    mul_pp r7.xyz, r4.w, r7
    mad_pp r4.xyz, r2.y, r7, r4
    mul_pp r7.xyz, r6.y, c47
    mad_pp r9.xyz, r8, r2.x, -r1.yzww
    dp3_pp r1.y, r6.xzww, -r1.yzww
    nrm_pp r10.xyz, r9
    dp3_sat_pp r1.z, r10, r6.xzww
    pow r4.w, r1.z, r3.w
    mul_pp r7.xyz, r4.w, r7
    mad_pp r4.xyz, r1.x, r7, r4
    add r1.z, -c52.z, c52.w
    rcp r1.z, r1.z
    add r7.xyz, -c50, v2
    dp3 r1.w, r7, r7
    rsq r1.w, r1.w
    rcp r3.y, r1.w
    mul_pp r7.xyz, r1.w, r7
    add r1.w, r3.y, -c52.z
    mul_sat r1.z, r1.z, r1.w
    add_pp r1.z, -r1.z, c2.y
    mul_pp r9.xyz, r6.y, c51
    mad_pp r10.xyz, r8, r2.x, -r7
    dp3_pp r1.w, r6.xzww, -r7
    nrm_pp r7.xyz, r10
    dp3_sat_pp r3.y, r7, r6.xzww
    pow r4.w, r3.y, r3.w
    mul_pp r7.xyz, r4.w, r9
    mad_pp r4.xyz, r1.z, r7, r4
    mul_pp r7.xyz, r6.y, c37
    mad_pp r9.xyz, r8, r2.x, -c10
    mad_pp r8.xyz, r8, r2.x, -r0.yzww
    dp3_pp r0.y, r6.xzww, -r0.yzww
    nrm_pp r10.xyz, r8
    dp3_sat_pp r0.z, r10, r6.xzww
    pow r2.x, r0.z, r3.w
    nrm_pp r8.xyz, r9
    dp3_sat_pp r0.z, r8, r6.xzww
    dp3_pp r0.w, r6.xzww, -c10
    pow r4.w, r0.z, r3.w
    mul_pp r3.yzw, r4.w, r7.xxyz
    mad_pp r3.yzw, r3, v1.w, r4.xxyz
    mul_pp r4.xyz, c59.w, c59
    mul_pp r4.xyz, r6.y, r4
    mul_pp r4.xyz, r2.x, r4
    mad_pp r3.yzw, r0.x, r4.xxyz, r3
    mul_pp r3.yzw, r3, c18.xxyz
    mul_pp r3.yzw, r3, v3.w
    mul_pp r4.xyz, r2.w, c43
    cmp_pp r4.xyz, r2.w, r4, c2.x
    mul_pp r2.xzw, r2.z, r4.xyyz
    mul_pp r4.xyz, r3.x, c39
    cmp_pp r4.xyz, r3.x, r4, c2.x
    mad_pp r2.xyz, r2.y, r4, r2.xzww
    mul_pp r4.xyz, r1.y, c47
    cmp_pp r4.xyz, r1.y, r4, c2.x
    mad_pp r2.xyz, r1.x, r4, r2
    mul_pp r4.xyz, r1.w, c51
    cmp_pp r1.xyw, r1.w, r4.xyzz, c2.x
    mad_pp r1.xyz, r1.z, r1.xyww, r2
    mul r2.xyz, r0.w, c36
    mul_pp r2.xyz, r2, v1.w
    cmp_pp r2.xyz, r0.w, r2, c2.x
    add_pp r1.xyz, r1, r2
    mul_pp r2.xyz, c58.w, c58
    mul_pp r2.xyz, r0.y, r2
    cmp_pp r0.yzw, r0.y, r2.xxyz, c2.x
    mad_pp r0.xyz, r0.x, r0.yzww, r1
    mad_pp r0.xyz, c17, v1, r0
    mul_pp r0.xyz, r0, c16
    cmp r1.xy, -r5_abs.x, v0, c2.x
    cmp r1.xy, -r5_abs.y, v0.zwzw, r1
    cmp r1.xy, -r5_abs.z, v1, r1
    cmp r1.xy, -r5_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s0
    mul_pp r0.w, r1.w, c16.w
    mul_pp r0.w, r0.w, v7.w
    mul_pp r2.w, r0.w, c21.x
    add r0.w, c0.x, vPos.y
    mov r3.x, c86.x
    mad r0.w, r0.w, c24.w, -r3.x
    mul_sat_pp r0.w, r0.w, c86.y
    lrp_pp r4.xyz, r0.w, r1, c2.y
    mad_pp r0.xyz, r0, r4, r3.yzww
    mul_pp r2.xyz, r0, v7
    mul_pp r0, r2, c89
    min_pp r1, r0, c1.w
    mul_pp r0.xyz, c75, v4.y
    mad_pp oC0.xyz, r1, v4.x, r0
    mov_pp oC0.w, r1.w

// approximately 230 instruction slots used (3 texture, 227 arithmetic)
