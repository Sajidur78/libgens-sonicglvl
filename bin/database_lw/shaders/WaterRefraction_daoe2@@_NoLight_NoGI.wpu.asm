//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_FramebufferSampler;
//   float4 g_GIModeParam;
//   row_major float4x4 g_MtxView;
//   float4 g_OffsetParam;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float2 mrgFresnelParam;
//   float2 mrgGlassRefractionParam;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampAlpha;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   samplerCUBE sampEnv;
//   sampler2D sampOffset;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Ambient                c17      1
//   g_Specular               c18      1
//   g_PowerGlossLevel        c20      1
//   g_EyePosition            c22      1
//   g_ViewportSize           c24      1
//   mrgTexcoordIndex         c26      2
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   mrgEyeLight_Diffuse      c58      1
//   mrgEyeLight_Specular     c59      1
//   mrgEyeLight_Range        c60      1
//   mrgFresnelParam          c62      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_GIModeParam            c69      1
//   g_aLightField            c77      6
//   g_MtxView                c90      3
//   mrgGlassRefractionParam  c150     1
//   g_OffsetParam            c151     1
//   sampDif                  s0       1
//   sampEnv                  s1       1
//   sampOffset               s2       1
//   sampAlpha                s3       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 2, -1, 0.5, -2
    def c1, 4, -0.707106769, 0.5, -0.5
    def c2, 1, 0, -1, 10
    def c3, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord5 v4.xy
    dcl_color_pp v5
    dcl vPos.xy
    dcl_2d s0
    dcl_cube s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s9
    dcl_2d s11
    frc r0.xy, c26.xwzw
    cmp r0.zw, -r0.xyxy, c3.x, c3.y
    add r0.xy, -r0, c26.xwzw
    mov r1.xy, c3
    cmp r0.zw, c26.xyxw, r1.x, r0
    add r0.xy, r0.zwzw, r0
    add r2, r0.x, -c3
    add r0, r0.y, -c3
    cmp r1.zw, -r2_abs.x, v0.xyxy, c3.x
    cmp r1.zw, -r2_abs.y, v0, r1
    cmp r1.zw, -r2_abs.z, v1.xyxy, r1
    cmp r1.zw, -r2_abs.w, v1, r1
    cmp r2.xy, -r0_abs.x, v0, c3.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r2
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s2
    mad r0.xy, r0.wyzw, c0.x, c0.y
    mad r0.zw, r0.xyxy, c151.xyxy, r1
    texld_pp r2, r0.zwzw, s0
    mul_pp r0.z, r2.w, c16.w
    mul_pp r0.w, r0.z, v5.w
    mad r0.z, r0.z, -v5.w, c3.y
    mul r0.z, r0.z, c63.x
    add r1.zw, c0.z, vPos.xyxy
    mul r1.zw, r1, c24
    mov r3, c2
    mad r4, c24.zzww, r3.xyyz, r3.yxzy
    mad r3.xy, r1.zwzw, c0.xwzw, r4
    texld r5, r1.zwzw, s11
    add_pp r1.zw, r4, r3.xyxy
    mul r2.w, c150.x, c150.x
    nrm r3.xyz, v3
    mul_pp r4.xyz, r3.y, c91
    mad_pp r4.xyz, r3.x, c90, r4
    mad_pp r4.xyz, r3.z, c92, r4
    mad r4.w, r4.z, -r4.z, c3.y
    mad r2.w, r2.w, -r4.w, c3.y
    cmp r4.w, r2.w, c3.y, c3.x
    mul r2.w, r2.w, r4.w
    mul r4.w, r4.w, c150.x
    rsq r2.w, r2.w
    rcp r2.w, r2.w
    mad r2.w, r4.w, -r4.z, r2.w
    mul_pp r4.xy, r4, r2.w
    mad_pp r1.zw, r4.xyxy, c1.y, r1
    mad_pp r1.zw, r0.xyxy, c151.xyxy, r1
    mad r1.zw, r1, c1, c1.z
    texld_pp r4, r1.zwzw, s11
    mad_pp r6.xyz, r3, c0.z, c0.z
    mov r7.xyz, c80
    mad r7.xyz, r7, r6.y, c79
    mul_pp r8.xyz, r3, r3
    mul r7.xyz, r7, r8.y
    mov r9, c77
    mad r6.xyw, c78.xyzz, r6.x, r9.xyzz
    mov r9.xyz, c82
    mad r9.xyz, r9, r6.z, c81
    mad_pp r6.xyz, r8.x, r6.xyww, r7
    mad_pp r6.xyz, r8.z, r9, r6
    add_pp r7.xyz, c22, -v2
    dp3_pp r1.z, r7, r7
    rsq_pp r1.z, r1.z
    rcp r1.w, r1.z
    mad_sat_pp r1.w, -r1.w, c60.z, c60.w
    mul r8.xyz, r1.w, c58
    mul_pp r9.xyz, r1.w, c59
    mul r10.xyz, r1.z, r7
    mad_pp r7.xyz, r7, r1.z, -c10
    nrm_pp r11.xyz, r7
    dp3_sat_pp r1.z, r11, r3
    dp3_sat_pp r1.w, r3, r10
    mul_pp r7.xyz, r8, r1.w
    add_pp r1.w, -r1.w, c3.y
    dp3_sat_pp r2.w, r3, -c10
    mul r2.w, r2.w, c77.w
    mad_pp r7.xyz, r2.w, c36, r7
    mad_pp r6.xyz, r6, c17, r7
    mul_pp r6.xyz, r6, c16
    mul_pp r2.xyz, r2, r6
    mad r2.xyz, r2, v5, -r4
    mad_pp r2.xyz, r0.w, r2, r4
    dp3 r0.w, -r10, r3
    add r0.w, r0.w, r0.w
    mad_pp r4.xyz, r3, -r0.w, -r10
    add_pp r6.xyz, r10, r10
    nrm_pp r7.xyz, r6
    dp3_sat_pp r0.w, r7, r3
    mad_pp r3.xy, r0, c151, r4
    mov_pp r3.z, -r4.z
    texld_pp r4, r3, s1
    mul r0.x, c64.z, c64.x
    mov r3.xz, c64
    mad r0.y, r3.x, -r3.z, r3.z
    mad_pp r0.x, c77.w, r0.y, r0.x
    mul r0.x, r0.x, r0.z
    mul_pp r0.xyz, r0.x, r4
    mul_pp r2.w, r3.w, c20.y
    exp_pp r2.w, r2.w
    mul_pp r2.w, r2.w, c1.x
    pow_pp r3.x, r0.w, r2.w
    pow_pp r0.w, r1.z, r2.w
    mul_pp r1.z, r3.x, c20.z
    mul_pp r3.xyz, r9, r1.z
    mul_pp r1.z, r9.w, c20.z
    mul_pp r0.w, r0.w, r1.z
    mad_pp r3.xyz, r0.w, c37, r3
    mad_pp r0.xyz, r3, c18, r0
    mul_pp r0.w, r1.w, r1.w
    mul_pp r0.w, r0.w, r0.w
    mul_pp r0.w, r1.w, r0.w
    lrp_pp r2.w, r0.w, r1.y, c62.x
    mad_pp r0.xyz, r2.w, r0, r2
    texld_pp r2, v4.yxzw, s9
    mad_pp r0.xyz, r0, r2.w, r2
    add r1.yzw, -r0.xxyz, r5.xxyz
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1.yzww, r0
    frc r0.x, c27.x
    cmp r0.y, -r0.x, c3.x, c3.y
    add r0.x, -r0.x, c27.x
    cmp r0.y, c27.x, r1.x, r0.y
    add r0.x, r0.y, r0.x
    add r0, r0.x, -c3
    cmp r1.xy, -r0_abs.x, v0, c3.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r1
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s3
    mov_pp oC0.w, r0.y

// approximately 140 instruction slots used (7 texture, 133 arithmetic)
