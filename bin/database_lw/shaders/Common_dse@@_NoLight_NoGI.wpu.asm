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
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampSpe;
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
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   mrgEyeLight_Diffuse      c58      1
//   mrgEyeLight_Specular     c59      1
//   mrgEyeLight_Range        c60      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_GIModeParam            c69      1
//   g_aLightField            c77      6
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampEnv                  s5       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 0.5, 10, 4, 1
    def c1, 0.25, 0, 0, 0
    def c2, -1, 1, 0, 0.5
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord5 v3.xy
    dcl_color_pp v4
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s5
    dcl_2d s9
    dcl_2d s11
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v4.w
    add_pp r1, c22.xyzx, -v1.xyzx
    dp3_pp r0.w, r1.yzww, r1.yzww
    rsq_pp r0.w, r0.w
    rcp r2.x, r0.w
    mad_sat_pp r2.x, -r2.x, c60.z, c60.w
    mul_pp r2.yzw, r2.x, c59.xxyz
    mul r3.xyz, r2.x, c58
    mov r4.y, c0.y
    mul_pp r2.x, r4.y, c20.y
    exp_pp r2.x, r2.x
    mul_pp r2.x, r2.x, c0.z
    mul r4, r0.w, r1
    mad_pp r1.xyz, r1, r0.w, -c10
    nrm_pp r5.xyz, r1
    add_pp r1.xyz, r4.wyzw, r4.wyzw
    nrm_pp r6.xyz, r1
    nrm r1, v2.xyzx
    dp3_sat_pp r0.w, r6, r1
    pow_pp r3.w, r0.w, r2.x
    mul_pp r0.w, r3.w, c20.z
    mul_pp r2.yzw, r2, r0.w
    dp3_sat_pp r0.w, r5, r1
    pow_pp r3.w, r0.w, r2.x
    mov r5, c77
    mul_pp r0.w, r5.w, c20.z
    mul_pp r0.w, r3.w, r0.w
    mad_pp r2.xyz, r0.w, c37, r2.yzww
    dp3_pp r0.w, r1.yzww, r4.yzww
    add r2.w, r0.w, r0.w
    mov_sat_pp r0.w, r0.w
    mul_pp r3.xyz, r3, r0.w
    mad r4, r2.w, r1, -r4
    mul r6, r4.wyzw, c2.xxyz
    mad r7, r4, c2.yxxz, c2.zzzw
    cmp r4, r4.z, r6, r7
    add r0.w, r4.z, c0.w
    rcp r0.w, r0.w
    mad r4.xy, r4.yxzw, r0.w, c0.w
    mad_pp r6.x, r4.y, c1.x, r4.w
    mul_pp r6.y, r4.x, c0.x
    texld_pp r4, r6, s5
    mul r0.w, c64.z, c64.x
    mov r6.xz, c64
    mad r1.x, r6.x, -r6.z, r6.z
    mad_pp r0.w, c77.w, r1.x, r0.w
    texld r6, v0, s1
    mul r1.x, r6.w, c63.x
    mul r0.w, r0.w, r1.x
    mul_pp r4.xyz, r0.w, r4
    mad_pp r2.xyz, r2, c18, r4
    mul_pp r2.xyz, r6, r2
    mul_pp r2.xyz, r2, v2.w
    mad_pp r4.xyz, r1.wyzw, c0.x, c0.x
    mov r6.xyz, c80
    mad r6.xyz, r6, r4.y, c79
    mul_pp r7.xyz, r1.wyzw, r1.wyzw
    dp3_sat_pp r0.w, r1.wyzw, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r1.xyz, r0.w, c36, r3
    mul r3.xyz, r6, r7.y
    mad r4.xyw, c78.xyzz, r4.x, r5.xyzz
    mov r5.xyz, c82
    mad r5.xyz, r5, r4.z, c81
    mad_pp r3.xyz, r7.x, r4.xyww, r3
    mad_pp r3.xyz, r7.z, r5, r3
    mad_pp r1.xyz, r3, c17, r1
    mul_pp r1.xyz, r1, c16
    mad_pp r0.xyz, r1, r0, r2
    mul_pp r0.xyz, r0, v4
    texld_pp r1, v3.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v3.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 90 instruction slots used (5 texture, 85 arithmetic)
