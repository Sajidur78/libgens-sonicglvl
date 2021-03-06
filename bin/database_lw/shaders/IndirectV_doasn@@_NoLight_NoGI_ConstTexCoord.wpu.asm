//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   float4 g_OffsetParam;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampNrm;
//   sampler2D sampOffset0;
//   sampler2D sampOffsetMask;
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
//   mrgTexcoordIndex         c26      2
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   g_aLightField            c77      6
//   g_OffsetParam            c150     1
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampNrm                  s2       1
//   sampOffset0              s3       1
//   sampOffsetMask           s5       1
//   sampDLScatter            s9       1
//

    ps_3_0
    def c0, 2, -1, 0.5, 10
    def c1, 4, 0, 0, 0
    def c2, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s5
    dcl_2d s9
    frc r0.xyz, c27.xyww
    cmp r1.xyz, -r0, c2.x, c2.y
    add r0.xyz, -r0, c27.xyww
    mov r2.x, c2.x
    cmp r1.xyz, c27.xyww, r2.x, r1
    add r0.xyz, r0, r1
    add r1, r0.z, -c2
    cmp r0.zw, -r1_abs.x, v0.xyxy, c2.x
    cmp r0.zw, -r1_abs.y, v0, r0
    cmp r0.zw, -r1_abs.z, v1.xyxy, r0
    cmp r0.zw, -r1_abs.w, v1, r0
    texld r1, r0.zwzw, s5
    dp2add_pp r0.z, v7.w, r1.y, c2.x
    frc r1.xy, c26.xzzw
    cmp r1.zw, -r1.xyxy, c2.x, c2.y
    add r1.xy, -r1, c26.xzzw
    cmp r1.zw, c26.xyxz, r2.x, r1
    add r1.xy, r1.zwzw, r1
    add r2, r1.x, -c2
    add r1, r1.y, -c2
    cmp r3.xy, -r2_abs.x, v0, c2.x
    cmp r2.xy, -r2_abs.y, v0.zwzw, r3
    cmp r2.xy, -r2_abs.z, v1, r2
    cmp r2.xy, -r2_abs.w, v1.zwzw, r2
    texld r3, r2, s0
    mul_pp r0.z, r0.z, r3.w
    add r3, r0.y, -c2
    add r4, r0.x, -c2
    cmp r0.xy, -r3_abs.x, v0, c2.x
    cmp r0.xy, -r3_abs.y, v0.zwzw, r0
    cmp r0.xy, -r3_abs.z, v1, r0
    cmp r0.xy, -r3_abs.w, v1.zwzw, r0
    texld_pp r3, r0, s3
    mad r0.xy, r3.wyzw, r0.z, -c2.y
    mad r0.zw, r0.xyxy, c150.xyxy, r2.xyxy
    texld_pp r2, r0.zwzw, s0
    mul_pp oC0.w, r2.w, c16.w
    cmp r0.zw, -r1_abs.x, v0.xyxy, c2.x
    cmp r0.zw, -r1_abs.y, v0, r0
    cmp r0.zw, -r1_abs.z, v1.xyxy, r0
    cmp r0.zw, -r1_abs.w, v1, r0
    mad r0.zw, r0.xyxy, c150.xyxy, r0
    texld_pp r1, r0.zwzw, s1
    cmp r0.zw, -r4_abs.x, v0.xyxy, c2.x
    cmp r0.zw, -r4_abs.y, v0, r0
    cmp r0.zw, -r4_abs.z, v1.xyxy, r0
    cmp r0.zw, -r4_abs.w, v1, r0
    mad r0.xy, r0, c150, r0.zwzw
    texld_pp r0, r0, s2
    mul_pp r0.x, r0.w, r0.x
    mad_pp r0.xy, r0, c0.x, c0.y
    nrm_pp r3.xyz, v6
    mul_pp r3.xyz, r0.y, r3
    nrm_pp r4.xyz, v5
    mad_pp r3.xyz, r0.x, r4, r3
    dp2add_sat_pp r0.x, r0, r0, c2.x
    add r0.x, -r0.x, c2.y
    rsq r0.x, r0.x
    rcp_pp r0.x, r0.x
    nrm_pp r4.xyz, v3
    mad_pp r0.xyz, r0.x, r4, r3
    add_pp r3.xyz, c22, -v2
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    mad_pp r3.xyz, r3, r0.w, -c10
    nrm_pp r4.xyz, r3
    dp3_sat_pp r0.w, r4, r0
    mov r1.w, c0.w
    mul_pp r1.w, r1.w, c20.y
    exp_pp r1.w, r1.w
    mul_pp r1.w, r1.w, c1.x
    pow_pp r2.w, r0.w, r1.w
    mov r3, c77
    mul_pp r0.w, r3.w, c20.z
    mul_pp r0.w, r2.w, r0.w
    mul_pp r4.xyz, r0.w, c37
    mul_pp r4.xyz, r4, c18
    mul_pp r1.xyz, r1, r4
    mul_pp r1.xyz, r1, v3.w
    mad_pp r4.xyz, r0, c0.z, c0.z
    mov r5.xyz, c80
    mad r5.xyz, r5, r4.y, c79
    mul_pp r6.xyz, r0, r0
    dp3_sat_pp r0.x, r0, -c10
    mul r0.x, r0.x, c77.w
    mul_pp r0.xyz, r0.x, c36
    mul r5.xyz, r5, r6.y
    mad r3.xyz, c78, r4.x, r3
    mov r7.xyz, c82
    mad r4.xyz, r7, r4.z, c81
    mad_pp r3.xyz, r6.x, r3, r5
    mad_pp r3.xyz, r6.z, r4, r3
    mad_pp r0.xyz, r3, c17, r0
    mul_pp r0.xyz, r0, c16
    mad_pp r0.xyz, r0, r2, r1
    add_pp r0.xyz, r0, v7
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 110 instruction slots used (7 texture, 103 arithmetic)
