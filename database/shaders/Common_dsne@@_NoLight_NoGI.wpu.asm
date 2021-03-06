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
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   float4 mrgPlayableParam;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampNrm;
//   sampler2D sampSpe;
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
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   mrgPlayableParam                      c86      1
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampSpe                               s1       1
//   sampNrm                               s3       1
//   sampEnv                               s5       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 500, 5, 1024, 0.25
    def c1, 4, 0, 0, 0
    def c2, 0.5, 2, -1, -3
    def c3, 0, 1, 2, 3
    def c4, -1, 1, 0, 0.5
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6.xyz
    dcl_texcoord7 v7.xyz
    dcl_texcoord8 v8.xyz
    dcl_color_pp v9
    dcl vPos.y
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s5
    dcl_2d s7
    dcl_2d s13
    max r0.x, v4.z, c3.x
    add r0.y, r0.x, -v4.w
    cmp r0.z, r0.y, c3.x, r0.x
    mov r0.xyw, v4
    texldp_pp r0, r0, s13
    max r0.y, v5.z, c3.x
    add r0.z, r0.y, -v5.w
    cmp r1.z, r0.z, c3.x, r0.y
    mov r1.xyw, v5
    texldp_pp r1, r1, s7
    min_pp r2.x, r1.x, r0.x
    lrp_pp r0.x, v6.z, c3.y, r1.x
    lrp_pp r0.y, v6.z, c3.y, r2.x
    rcp r0.z, v4.w
    mul r0.zw, r0.z, v4.xyxy
    mad r0.zw, r0, c2.y, c2.z
    abs_sat r0.zw, r0
    add_sat r0.zw, r0, -c65.x
    mul r0.zw, r0, c65.y
    max r1.x, r0.z, r0.w
    lrp_pp r2.x, r1.x, c3.y, r0.y
    lrp_pp r2.y, r1.x, c3.y, r0.x
    mul r0.x, r2.x, c77.w
    add_pp r0.y, -c61.z, c61.y
    rcp_pp r0.y, r0.y
    add r1.xyz, -c22, v2
    dp3 r0.z, r1, r1
    rsq r0.z, r0.z
    mul_pp r1.xyz, r0.z, r1
    rcp r0.z, r0.z
    add r0.z, r0.z, -c60.z
    dp3_pp r0.w, r1, c23
    add_pp r0.w, r0.w, -c61.z
    mul_sat_pp r0.y, r0.y, r0.w
    mad_pp r0.w, r0.y, -c2.y, -c2.w
    mul_pp r0.y, r0.y, r0.y
    mul_pp r0.y, r0.y, r0.w
    pow_sat_pp r1.w, r0.y, c61.w
    mov r3.xy, c3
    add r0.y, r3.y, -c61.x
    cmp_pp r0.y, r0.y, c3.y, r1.w
    add r0.w, -c60.z, c60.w
    rcp r0.w, r0.w
    mul_sat r0.z, r0.w, r0.z
    add_pp r0.z, -r0.z, c3.y
    cmp_pp r0.z, -c61.x, r3.y, r0.z
    mul_pp r0.y, r0.y, r0.z
    frc r0.z, c27.x
    cmp r0.w, -r0.z, c3.x, c3.y
    add r0.z, -r0.z, c27.x
    cmp r0.w, c27.x, r3.x, r0.w
    add r0.z, r0.w, r0.z
    add r4, r0.z, -c3
    cmp r0.zw, -r4_abs.x, v0.xyxy, c3.x
    cmp r0.zw, -r4_abs.y, v0, r0
    cmp r0.zw, -r4_abs.z, v1.xyxy, r0
    cmp r0.zw, -r4_abs.w, v1, r0
    texld_pp r4, r0.zwzw, s3
    mul_pp r4.x, r4.w, r4.x
    mad_pp r0.zw, r4.xyxy, c2.y, c2.z
    nrm_pp r4, v8.xyzx
    mul_pp r4, r0.w, r4
    nrm_pp r5, v7.xyzx
    mad_pp r4, r0.z, r5, r4
    dp2add_pp r0.z, r0.zwzw, -r0.zwzw, c3.y
    rsq_pp r0.z, r0.z
    rcp_pp r0.z, r0.z
    nrm_pp r5, v3.xyzx
    mad r4, r0.z, r5, r4
    add_pp r5, c22.xyzx, -v2.xyzx
    dp3_pp r0.z, r5.yzww, r5.yzww
    rsq_pp r0.z, r0.z
    mad_pp r2.xzw, r5.xyyz, r0.z, -r1.xyyz
    dp3_pp r0.w, r4.wyzw, -r1
    nrm_pp r1.xyz, r2.xzww
    dp3_sat_pp r1.x, r1, r4
    mov_pp r6.xy, c0
    mul_pp r1.yz, r6.xxyw, c20
    max_pp r2.x, r1.y, c3.y
    min r1.y, r2.x, c0.z
    pow r2.x, r1.x, r1.y
    mul_pp r3.yzw, c59.w, c59.xxyz
    mul_pp r3.yzw, r1.z, r3
    mul_pp r1.xzw, r1.z, c37.xyyz
    mul_pp r2.xzw, r2.x, r3.yyzw
    mul_pp r2.xzw, r0.y, r2
    mad_pp r3.yzw, r5.xxyz, r0.z, -c10.xxyz
    mul r5, r0.z, r5
    nrm_pp r6.xyz, r3.yzww
    dp3_sat_pp r0.z, r6, r4
    pow r3.y, r0.z, r1.y
    mul_pp r1.xyz, r1.xzww, r3.y
    mad_pp r1.xyz, r1, r0.x, r2.xzww
    dp3 r0.z, r5.yzww, r4.yzww
    add r0.z, r0.z, r0.z
    mad r5, r0.z, r4, -r5
    mad r6, r5.wyzw, c4.xxyz, c4.zzzw
    mul r7, r5, c4.yxxz
    cmp r5, r5.z, r6, r7
    add r0.z, r5.z, c3.y
    rcp r0.z, r0.z
    mad r2.xz, r5.yyxw, r0.z, c3.y
    mad_pp r5.x, r2.z, c0.w, r5.w
    mul_pp r5.y, r2.x, c2.x
    texld_pp r5, r5, s5
    mul r2.xzw, r5.xyyz, c63.x
    mad_pp r2.xzw, r2, r5.w, r5.xyyz
    frc r3.yz, c26.xxzw
    cmp r5.xy, -r3.yzzw, c3.x, c3.y
    add r3.yz, -r3, c26.xxzw
    cmp r3.xw, c26.xyzz, r3.x, r5.xyzy
    add r3.xy, r3.xwzw, r3.yzzw
    add r5, r3.y, -c3
    add r3, r3.x, -c3
    cmp r6.xy, -r5_abs.x, v0, c3.x
    cmp r5.xy, -r5_abs.y, v0.zwzw, r6
    cmp r5.xy, -r5_abs.z, v1, r5
    cmp r5.xy, -r5_abs.w, v1.zwzw, r5
    texld_pp r5, r5, s1
    mul_pp r2.xzw, r2, r5.w
    mul r0.z, c64.z, c64.x
    mov r6.xz, c64
    mad r1.w, r6.x, -r6.z, r6.z
    mad_pp r0.z, r0.x, r1.w, r0.z
    mul_pp r2.xzw, r0.z, r2
    mad_pp r1.xyz, r1, c18, r2.xzww
    mul_pp r1.xyz, r5, r1
    mul_pp r1.xyz, r1, v3.w
    dp3_pp r0.z, r4.wyzw, -c10
    mul r2.xzw, r0.z, c36.xyyz
    mul_pp r2.xzw, r0.x, r2
    cmp_pp r2.xzw, r0.z, r2, c3.x
    mul_pp r5.xyz, c58.w, c58
    mul_pp r5.xyz, r0.w, r5
    cmp_pp r0.xzw, r0.w, r5.xyyz, c3.x
    mad_pp r0.xyz, r0.y, r0.xzww, r2.xzww
    mad_pp r2.xzw, r4.wyyz, c2.x, c2.x
    mul_pp r4.xyz, r4.wyzw, r4.wyzw
    mov r5.xyz, c79
    add r5.xyz, -r5, c80
    mad r5.xyz, r2.z, r5, c79
    mul r5.xyz, r4.y, r5
    mov r6.xyz, c77
    add r6.xyz, -r6, c78
    mad r6.xyz, r2.x, r6, c77
    mad_pp r4.xyw, r4.x, r6.xyzz, r5.xyzz
    mov r5.xyz, c81
    add r5.xyz, -r5, c82
    mad r2.xzw, r2.w, r5.xyyz, c81.xyyz
    mad_pp r2.xzw, r4.z, r2, r4.xyyw
    mul_pp r4.xyz, r2.xzww, c17
    mul r4.xyz, r4, c70.w
    mad r2.xzw, r2, c17.xyyz, -r4.xyyz
    mad_pp r2.xyz, r2.y, r2.xzww, r4
    add_pp r0.xyz, r0, r2
    mul_pp r0.xyz, r0, c16
    cmp r2.xy, -r3_abs.x, v0, c3.x
    cmp r2.xy, -r3_abs.y, v0.zwzw, r2
    cmp r2.xy, -r3_abs.z, v1, r2
    cmp r2.xy, -r3_abs.w, v1.zwzw, r2
    texld_pp r2, r2, s0
    mul_pp r0.w, r2.w, c16.w
    mul_pp r0.w, r0.w, v9.w
    mul_pp r3.w, r0.w, c21.x
    add r0.w, c2.x, vPos.y
    mov r4.x, c86.x
    mad r0.w, r0.w, c24.w, -r4.x
    mul_sat_pp r0.w, r0.w, c86.y
    lrp_pp r4.xyz, r0.w, r2, c3.y
    mad_pp r0.xyz, r0, r4, r1
    mul_pp r3.xyz, r0, v9
    mul_pp r0, r3, c89
    min_pp r1, r0, c1.x
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 193 instruction slots used (6 texture, 187 arithmetic)
