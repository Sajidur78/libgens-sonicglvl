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
//   float4 g_TransColorMask;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   float4 mrgLocalLight4_Color;
//   float4 mrgLocalLight4_Position;
//   float4 mrgLocalLight4_Range;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampNrm;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Ambient                c17      1
//   g_EyePosition            c22      1
//   g_ViewportSize           c24      1
//   mrgTexcoordIndex         c26      2
//   mrgGlobalLight_Diffuse   c36      1
//   mrgLocalLight1_Position  c42      1
//   mrgLocalLight1_Color     c43      1
//   mrgLocalLight1_Range     c44      1
//   mrgLocalLight2_Position  c46      1
//   mrgLocalLight2_Color     c47      1
//   mrgLocalLight2_Range     c48      1
//   mrgLocalLight3_Position  c50      1
//   mrgLocalLight3_Color     c51      1
//   mrgLocalLight3_Range     c52      1
//   mrgLocalLight4_Position  c54      1
//   mrgLocalLight4_Color     c55      1
//   mrgLocalLight4_Range     c56      1
//   mrgEyeLight_Diffuse      c58      1
//   mrgEyeLight_Range        c60      1
//   g_GIModeParam            c69      1
//   g_aLightField            c77      6
//   g_TransColorMask         c150     1
//   sampDif                  s0       1
//   sampNrm                  s2       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 2, -1, 0.5, 0
    def c1, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3.xyz
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl vPos.xy
    dcl vFace
    dcl_2d s0
    dcl_2d s2
    dcl_2d s9
    dcl_2d s11
    frc r0.x, c26.x
    cmp r0.y, -r0.x, c1.x, c1.y
    add r0.x, -r0.x, c26.x
    mov r1.x, c1.x
    cmp r0.y, c26.x, r1.x, r0.y
    add r0.x, r0.y, r0.x
    add r0, r0.x, -c1
    cmp r1.yz, -r0_abs.x, v0.xxyw, c1.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r1.yzzw
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s0
    mul_pp oC0.w, r0.w, c16.w
    frc r0.w, c27.x
    cmp r1.y, -r0.w, c1.x, c1.y
    add r0.w, -r0.w, c27.x
    cmp r1.x, c27.x, r1.x, r1.y
    add r0.w, r0.w, r1.x
    add r1, r0.w, -c1
    cmp r2.xy, -r1_abs.x, v0, c1.x
    cmp r1.xy, -r1_abs.y, v0.zwzw, r2
    cmp r1.xy, -r1_abs.z, v1, r1
    cmp r1.xy, -r1_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s2
    mul_pp r1.x, r1.w, r1.x
    mad_pp r1.xy, r1, c0.x, c0.y
    nrm_pp r2.xyz, v6
    mul_pp r2.xyz, r1.y, r2
    nrm_pp r3.xyz, v5
    mad_pp r2.xyz, r1.x, r3, r2
    dp2add_sat_pp r0.w, r1, r1, c1.x
    add r0.w, -r0.w, c1.y
    rsq r0.w, r0.w
    rcp_pp r0.w, r0.w
    cmp r1.xyz, vFace, v3, -v3
    nrm_pp r3.xyz, r1
    mad_pp r1.xyz, r0.w, r3, r2
    add_pp r2.xyz, -c42, v2
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    rcp_pp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c44.z, c44.w
    mul r3.xyz, r0.w, c43
    dp3_pp r0.w, r1, -r2
    mov_sat_pp r1.w, r0.w
    mov_sat_pp r0.w, -r0.w
    mul r2.xyz, r0.w, r3
    mul r3.xyz, r1.w, r3
    dp3_pp r0.w, r1, -c10
    mov_sat_pp r1.w, r0.w
    mov_sat_pp r0.w, -r0.w
    mov r4, c77
    mul r5.xyz, r4.w, c36
    mad_pp r3.xyz, r5, r1.w, r3
    mad_pp r2.xyz, r5, r0.w, r2
    add_pp r5.xyz, -c46, v2
    dp3_pp r0.w, r5, r5
    rsq_pp r0.w, r0.w
    mul_pp r5.xyz, r0.w, r5
    rcp_pp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c48.z, c48.w
    mul r6.xyz, r0.w, c47
    dp3_pp r0.w, r1, -r5
    mov_sat_pp r1.w, r0.w
    mov_sat_pp r0.w, -r0.w
    mad_pp r2.xyz, r6, r0.w, r2
    mad_pp r3.xyz, r6, r1.w, r3
    add_pp r5.xyz, -c50, v2
    dp3_pp r0.w, r5, r5
    rsq_pp r0.w, r0.w
    mul_pp r5.xyz, r0.w, r5
    rcp_pp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c52.z, c52.w
    mul r6.xyz, r0.w, c51
    dp3_pp r0.w, r1, -r5
    mov_sat_pp r1.w, r0.w
    mov_sat_pp r0.w, -r0.w
    mad_pp r2.xyz, r6, r0.w, r2
    mad_pp r3.xyz, r6, r1.w, r3
    add_pp r5.xyz, -c54, v2
    dp3_pp r0.w, r5, r5
    rsq_pp r0.w, r0.w
    mul_pp r5.xyz, r0.w, r5
    rcp_pp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c56.z, c56.w
    mul r6.xyz, r0.w, c55
    dp3_pp r0.w, r1, -r5
    mov_sat_pp r1.w, r0.w
    mov_sat_pp r0.w, -r0.w
    mad_pp r2.xyz, r6, r0.w, r2
    mad_pp r3.xyz, r6, r1.w, r3
    add r5.xyz, c22, -v2
    dp3 r0.w, r5, r5
    rsq r0.w, r0.w
    mul_pp r5.xyz, r0.w, r5
    rcp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c60.z, c60.w
    mul r6.xyz, r0.w, c58
    dp3_pp r0.w, r1, -r5
    mov_sat_pp r1.w, r0.w
    mov_sat_pp r0.w, -r0.w
    mad_pp r2.xyz, r6, r0.w, r2
    mad_pp r3.xyz, r6, r1.w, r3
    mul_pp r3.xyz, r3, c16
    mul_pp r2.xyz, r2, c16
    mul_pp r2.xyz, r0, r2
    mul r2.xyz, r2, c150
    mad_pp r5.xyz, r1, c0.z, c0.z
    mul_pp r1.xyz, r1, r1
    mov r6.xyz, c80
    mad r6.xyz, r6, r5.y, c79
    mul r6.xyz, r1.y, r6
    mad r4.xyz, c78, r5.x, r4
    mov r7.xyz, c82
    mad r5.xyz, r7, r5.z, c81
    mad_pp r1.xyw, r1.x, r4.xyzz, r6.xyzz
    mad_pp r1.xyz, r1.z, r5, r1.xyww
    mad_pp r1.xyz, r1, c17, r3
    mad_pp r0.xyz, r1, r0, r2
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.z, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 135 instruction slots used (4 texture, 131 arithmetic)
