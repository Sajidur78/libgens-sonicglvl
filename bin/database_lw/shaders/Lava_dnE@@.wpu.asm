//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_FramebufferSampler;
//   float4 g_GIModeParam;
//   float4 g_HeightParam;
//   float4 g_OffsetParam;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEmit;
//   sampler2D sampNrm;
//   sampler2D sampOffset0;
//   sampler2D sampOffset1;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Specular                            c18      1
//   g_PowerGlossLevel                     c20      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   g_ViewportSize                        c24      1
//   mrgTexcoordIndex                      c26      2
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   g_GIModeParam                         c69      1
//   g_OffsetParam                         c150     1
//   g_HeightParam                         c151     1
//   sampDif                               s0       1
//   sampNrm                               s1       1
//   sampEmit                              s2       1
//   sampOffset0                           s3       1
//   sampOffset1                           s4       1
//   sampDLScatter                         s9       1
//   g_FramebufferSampler                  s11      1
//

    ps_3_0
    def c0, 2, -1, 500, 5
    def c1, -1024, 0.100000001, 4, 2.67628008e+031
    def c2, 0.5, 0, 0, 0
    def c3, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord4 v4.xyz
    dcl_texcoord5_pp v5
    dcl_texcoord6_pp v6.xyz
    dcl_texcoord7 v7.xy
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s4
    dcl_2d s9
    dcl_2d s11
    mov r0.w, c16.w
    mul_pp oC0.w, r0.w, c21.x
    frc r0.xy, c27.yxzw
    cmp r0.zw, -r0.xyxy, c3.x, c3.y
    add r0.xy, -r0, c27.yxzw
    mov r1.x, c3.x
    cmp r0.zw, c27.xyyx, r1.x, r0
    add r0.xy, r0.zwzw, r0
    add r2, r0.x, -c3
    add r0, r0.y, -c3
    cmp r1.yz, -r2_abs.x, v0.xxyw, c3.x
    cmp r1.yz, -r2_abs.y, v0.xzww, r1
    cmp r1.yz, -r2_abs.z, v1.xxyw, r1
    cmp r1.yz, -r2_abs.w, v1.xzww, r1
    texld_pp r2, r1.yzzw, s4
    frc r1.yzw, c26.xxzw
    cmp r3.xyz, -r1.yzww, c3.x, c3.y
    add r1.yzw, -r1, c26.xxzw
    cmp r3.xyz, c26.xzww, r1.x, r3
    add r1.xyz, r1.yzww, r3
    add r3, r1.x, -c3
    cmp r1.xw, -r3_abs.x, v0.xyzy, c3.x
    cmp r1.xw, -r3_abs.y, v0.zyzw, r1
    cmp r1.xw, -r3_abs.z, v1.xyzy, r1
    cmp r1.xw, -r3_abs.w, v1.zyzw, r1
    mad r2.xy, r2.wxzw, c150, r1.xwzw
    texld r2, r2, s0
    mad_pp r2.x, r2.w, c0.x, c0.y
    mad r2.x, r2.x, c151.y, c151.x
    add r3, r1.y, -c3
    add r4, r1.z, -c3
    cmp r1.yz, -r3_abs.x, v0.xxyw, c3.x
    cmp r1.yz, -r3_abs.y, v0.xzww, r1
    cmp r1.yz, -r3_abs.z, v1.xxyw, r1
    cmp r1.yz, -r3_abs.w, v1.xzww, r1
    dp3_pp r2.y, v6, v6
    rsq_pp r2.y, r2.y
    mul_pp r2.yz, r2.y, v6.xxyw
    mad r1.yz, r2, r2.x, r1
    mad r1.xw, r2.yyzz, r2.x, r1
    texld_pp r2, r1.xwzw, s0
    texld_pp r1, r1.yzzw, s1
    mul_pp r1.x, r1.w, r1.x
    mad_pp r1.xy, r1, c0.x, c0.y
    nrm_pp r3.xyz, v4
    mul_pp r3.xyz, r1.y, r3
    nrm_pp r5.xyz, v3
    mad_pp r3.xyz, r1.x, r5, r3
    dp2add_pp r1.x, r1, -r1, c3.y
    rsq_pp r1.x, r1.x
    rcp_pp r1.x, r1.x
    nrm_pp r5.xyz, v5
    mad_pp r1.xyz, r1.x, r5, r3
    add_pp r3.xyz, c22, -v2
    dp3_pp r1.w, r3, r3
    rsq_pp r1.w, r1.w
    mad_pp r3.xyz, r3, r1.w, -c10
    nrm_pp r5.xyz, r3
    dp3_sat_pp r1.w, r5, r1
    mul_pp r3.xy, r1.y, c20.yzzw
    dp3_sat_pp r1.x, r1, -c10
    mul_pp r1.xyz, r1.x, c36
    mul_pp r1.xyz, r1, c16
    mul_pp r3.xy, r3, c0.zwzw
    max_pp r5.x, r3.x, c3.y
    mul r3.x, r5.x, c1.y
    add r3.z, r5.x, c1.x
    exp r3.x, r3.x
    mul_pp r3.x, r3.x, c1.z
    cmp_pp r3.x, r3.z, c1.w, r3.x
    pow_pp r5.x, r1.w, r3.x
    mul_pp r1.w, r3.y, r5.x
    mul_pp r3.xyz, r1.w, c37
    mul_pp r3.xyz, r3, c18
    mul_pp r3.xyz, r3, v5.w
    mad_pp r1.xyz, r1, r2, r3
    mad_sat r1.w, r2.w, c0.x, c0.y
    cmp r2.xy, -r4_abs.x, v0, c3.x
    cmp r2.xy, -r4_abs.y, v0.zwzw, r2
    cmp r2.xy, -r4_abs.z, v1, r2
    cmp r2.xy, -r4_abs.w, v1.zwzw, r2
    cmp r2.zw, -r0_abs.x, v0.xyxy, c3.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r2.zwzw
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld r0, r0, s3
    mad r0.xy, r0.wxzw, c150.zwzw, r2
    texld_pp r0, r0, s2
    mad_pp r0.xyz, r0, r0.w, r0
    lrp_pp r2.xyz, r1.w, r1, r0
    texld_pp r0, v7.yxzw, s9
    mad_pp r0.xyz, r2, r0.w, r0
    add r1.xy, c2.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v7.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 109 instruction slots used (8 texture, 101 arithmetic)