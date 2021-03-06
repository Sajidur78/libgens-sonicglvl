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
//   float4 g_OpacityReflectionRefractionSpectype;
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
//   sampler2D sampDLScatter;
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
//   g_ViewportSize                        c24      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   g_GIModeParam                         c69      1
//   g_aLightField                         c77      6
//   sampDLScatter                         s9       1
//   g_FramebufferSampler                  s11      1
//

    ps_3_0
    def c0, 0.5, 10, 4, 0
    dcl_texcoord2 v0.xyz
    dcl_texcoord3_pp v1
    dcl_texcoord5 v2.xy
    dcl_color_pp v3.xyz
    dcl vPos.xy
    dcl_2d s9
    dcl_2d s11
    mov r0.w, c16.w
    mul_pp oC0.w, r0.w, c21.x
    mov r0.yz, c20
    mul_pp r1.xyz, r0.z, c59
    mul_pp r0.x, r0.y, c0.y
    exp_pp r0.x, r0.x
    mul_pp r0.x, r0.x, c0.z
    add_pp r2.xyz, c22, -v0
    dp3_pp r0.y, r2, r2
    rsq_pp r0.y, r0.y
    mul_pp r2.xyz, r0.y, r2
    rcp r0.y, r0.y
    mad_sat_pp r0.y, -r0.y, c60.z, c60.w
    nrm r3.xyz, v1
    dp3 r0.w, -r2, r3
    add r0.w, r0.w, r0.w
    mad_pp r4.xyz, r3, -r0.w, -r2
    dp3_sat_pp r0.w, r4, r2
    dp3_sat_pp r1.w, r3, r2
    dp3_sat_pp r2.x, r4, -c10
    pow_pp r3.w, r2.x, r0.x
    pow_pp r2.x, r0.w, r0.x
    mul_pp r1.xyz, r1, r2.x
    mul_pp r1.xyz, r0.y, r1
    mul r0.xyw, r0.y, c58.xyzz
    mul_pp r0.xyw, r0, r1.w
    mul_pp r2.xyz, r0.z, c37
    mad_pp r1.xyz, r2, r3.w, r1
    mul_pp r1.xyz, r1, c18
    mul_pp r1.xyz, r1, v1.w
    mad_pp r2.xyz, r3, c0.x, c0.x
    mov r4.xyz, c80
    mad r4.xyz, r4, r2.y, c79
    mul_pp r5.xyz, r3, r3
    dp3_sat_pp r0.z, r3, -c10
    mad_pp r0.xyz, r0.z, c36, r0.xyww
    mul r3.xyz, r4, r5.y
    mov r4.xyz, c78
    mad r2.xyw, r4.xyzz, r2.x, c77.xyzz
    mov r4.xyz, c82
    mad r4.xyz, r4, r2.z, c81
    mad_pp r2.xyz, r5.x, r2.xyww, r3
    mad_pp r2.xyz, r5.z, r4, r2
    mad_pp r0.xyz, r2, c17, r0
    mul_pp r0.xyz, r0, c16
    mad_pp r0.xyz, r0, v3, r1
    texld_pp r1, v2.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v2.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 60 instruction slots used (2 texture, 58 arithmetic)
