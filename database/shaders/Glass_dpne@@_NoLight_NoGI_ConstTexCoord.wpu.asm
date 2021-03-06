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
//   float4 g_LightScatteringColor;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float2 mrgFresnelParam;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampDif;
//   sampler2D sampEnv;
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
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   mrgFresnelParam                       c62      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampPow                               s2       1
//   sampNrm                               s3       1
//   sampEnv                               s5       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 2, -1, 1, 0.5
    def c1, 0, -2, 3, 1024
    def c2, 500, 5, 0.25, 4
    def c3, -1, 1, 0, 0.5
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3 v2.xyz
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_texcoord7 v6.xyz
    dcl_texcoord8 v7.xyz
    dcl_2d s0
    dcl_2d s2
    dcl_2d s3
    dcl_2d s5
    dcl_2d s7
    dcl_2d s13
    max r0.x, v3.z, c1.x
    add r0.y, r0.x, -v3.w
    cmp r0.z, r0.y, c1.x, r0.x
    mov r0.xyw, v3
    texldp_pp r0, r0, s13
    max r0.y, v4.z, c1.x
    add r0.z, r0.y, -v4.w
    cmp r1.z, r0.z, c1.x, r0.y
    mov r1.xyw, v4
    texldp_pp r1, r1, s7
    min_pp r2.x, r1.x, r0.x
    lrp_pp r0.x, v5.z, c0.z, r1.x
    lrp_pp r0.y, v5.z, c0.z, r2.x
    rcp r0.z, v3.w
    mul r0.zw, r0.z, v3.xyxy
    mad r0.zw, r0, c0.x, c0.y
    abs_sat r0.zw, r0
    add_sat r0.zw, r0, -c65.x
    mul r0.zw, r0, c65.y
    max r1.x, r0.z, r0.w
    lrp_pp r2.x, r1.x, c0.z, r0.y
    lrp_pp r2.y, r1.x, c0.z, r0.x
    mul r0.x, r2.x, c77.w
    add_pp r0.y, -c61.z, c61.y
    rcp_pp r0.y, r0.y
    add r1.xyz, -c22, v1
    dp3 r0.z, r1, r1
    rsq r0.z, r0.z
    mul_pp r1.xyz, r0.z, r1
    rcp r0.z, r0.z
    add r0.z, r0.z, -c60.z
    dp3_pp r0.w, r1, c23
    add_pp r0.w, r0.w, -c61.z
    mul_sat_pp r0.y, r0.y, r0.w
    mad_pp r0.w, r0.y, c1.y, c1.z
    mul_pp r0.y, r0.y, r0.y
    mul_pp r0.y, r0.y, r0.w
    pow_sat_pp r1.w, r0.y, c61.w
    mov r2.z, c0.z
    add r0.y, r2.z, -c61.x
    cmp_pp r0.y, r0.y, c0.z, r1.w
    add r0.w, -c60.z, c60.w
    rcp r0.w, r0.w
    mul_sat r0.z, r0.w, r0.z
    add_pp r0.z, -r0.z, c0.z
    cmp_pp r0.z, -c61.x, r2.z, r0.z
    mul_pp r0.y, r0.y, r0.z
    add_pp r3, c22.xyzx, -v1.xyzx
    dp3_pp r0.z, r3.yzww, r3.yzww
    rsq_pp r0.z, r0.z
    mad_pp r4.xyz, r3, r0.z, -r1
    nrm_pp r5.xyz, r4
    nrm_pp r4, v7.xyzx
    texld_pp r6, v0, s3
    mul_pp r6.x, r6.w, r6.x
    mad_pp r2.xw, r6.xyzy, c0.x, c0.y
    mul_pp r4, r4, r2.w
    nrm_pp r6, v6.xyzx
    mad_pp r4, r2.x, r6, r4
    dp2add_pp r0.w, r2.xwzw, -r2.xwzw, c0.z
    rsq_pp r0.w, r0.w
    rcp_pp r0.w, r0.w
    nrm_pp r6, v2.xyzx
    mad r4, r0.w, r6, r4
    dp3_sat_pp r0.w, r5, r4
    mov_pp r5.xy, c2
    mul_pp r2.xw, r5.xyzy, c20.yyzz
    max_pp r1.w, r2.x, c0.z
    min r2.x, r1.w, c1.w
    pow r1.w, r0.w, r2.x
    mul_pp r5.xyz, c59.w, c59
    mul_pp r5.xyz, r2.w, r5
    mul_pp r6.xyz, r2.w, c37
    mul_pp r5.xyz, r1.w, r5
    mul_pp r5.xyz, r0.y, r5
    mad_pp r7.xyz, r3, r0.z, -c10
    mul r3, r0.z, r3
    nrm_pp r8.xyz, r7
    dp3_sat_pp r0.z, r8, r4
    pow r1.w, r0.z, r2.x
    mul_pp r6.xyz, r1.w, r6
    mad_pp r5.xyz, r6, r0.x, r5
    mul r0.z, c64.z, c64.x
    mov r6.xz, c64
    mad r0.w, r6.x, -r6.z, r6.z
    mad_pp r0.z, r0.x, r0.w, r0.z
    dp3 r0.w, r3.yzww, r4.yzww
    add r1.w, r0.w, r0.w
    mov_sat_pp r0.w, r0.w
    add_pp r0.w, -r0.w, c0.z
    mad r3, r1.w, r4, -r3
    mad r6, r3.wyzw, c3.xxyz, c3.zzzw
    mul r7, r3, c3.yxxz
    cmp r3, r3.z, r6, r7
    add r1.w, r3.z, c0.z
    rcp r1.w, r1.w
    mad r2.xw, r3.yyzx, r1.w, c0.z
    mad_pp r3.x, r2.w, c2.z, r3.w
    mul_pp r3.y, r2.x, c0.w
    texld_pp r3, r3, s5
    mul r6.xyz, r3, c63.x
    mad_pp r3.xyz, r6, r3.w, r3
    texld_pp r6, v0, s2
    mul_pp r3.xyz, r3, r6.w
    mul_pp r3.xyz, r0.z, r3
    mad_pp r3.xyz, r5, c18, r3
    mul_pp r3.xyz, r6, r3
    mul_pp r0.z, r0.w, r0.w
    mul_pp r0.z, r0.z, r0.z
    mul_pp r0.z, r0.w, r0.z
    lrp_pp r1.w, r0.z, r2.z, c62.x
    mul_pp r0.z, r1.w, c62.y
    mul_pp r2.xzw, r0.z, r3.xyyz
    dp3_pp r0.z, r4.wyzw, -c10
    mul r3.xyz, r0.z, c36
    mul_pp r3.xyz, r0.x, r3
    cmp_pp r0.xzw, r0.z, r3.xyyz, c1.x
    dp3_pp r1.x, r4.wyzw, -r1
    mul_pp r1.yzw, c58.w, c58.xxyz
    mul_pp r1.yzw, r1.x, r1
    cmp_pp r1.xyz, r1.x, r1.yzww, c1.x
    mad_pp r0.xyz, r0.y, r1, r0.xzww
    mad_pp r1.xyz, r4.wyzw, c0.w, c0.w
    mul_pp r3.xyz, r4.wyzw, r4.wyzw
    mov r4.xyz, c79
    add r4.xyz, -r4, c80
    mad r4.xyz, r1.y, r4, c79
    mul r4.xyz, r3.y, r4
    mov r5.xyz, c77
    add r5.xyz, -r5, c78
    mad r1.xyw, r1.x, r5.xyzz, c77.xyzz
    mad_pp r1.xyw, r3.x, r1, r4.xyzz
    mov r4.xyz, c81
    add r3.xyw, -r4.xyzz, c82.xyzz
    mad r3.xyw, r1.z, r3, c81.xyzz
    mad_pp r1.xyz, r3.z, r3.xyww, r1.xyww
    mul_pp r3.xyz, r1, c17
    mul r3.xyz, r3, c70.w
    mad r1.xyz, r1, c17, -r3
    mad_pp r1.xyz, r2.y, r1, r3
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    texld_pp r1, v0, s0
    mad_pp r0.xyz, r0, r1, r2.xzww
    dp3_pp r1.x, r2.xzww, r2.xzww
    mul_pp r1.y, r1.w, c16.w
    mul_pp r1.y, r1.y, r1.y
    max_pp r2.x, r1.y, r1.x
    rsq_pp r1.x, r2.x
    rcp_pp r1.x, r1.x
    mul_pp r0.w, r1.x, c21.x
    mul_pp r0, r0, c89
    min_pp r1, r0, c2.w
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 173 instruction slots used (6 texture, 167 arithmetic)
