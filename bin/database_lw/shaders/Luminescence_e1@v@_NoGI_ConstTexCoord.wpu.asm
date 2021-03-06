//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_Emission;
//   row_major float4x4 g_MtxView;
//   float4 g_aLightField[6];
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
//   sampler2D sampDLScatter;
//   sampler2D sampEnv;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Ambient                c17      1
//   g_Emission               c19      1
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
//   g_aLightField            c77      6
//   g_MtxView                c90      3
//   sampEnv                  s5       1
//   sampDLScatter            s9       1
//

    ps_3_0
    def c0, 0.5, -0.5, 0, 0
    dcl_texcoord2 v0.xyz
    dcl_texcoord3 v1.xyz
    dcl_texcoord5 v2.xy
    dcl_color_pp v3
    dcl_2d s5
    dcl_2d s9
    nrm_pp r0.xyz, v1
    mul r1, r0.y, c91
    mad r1, r0.x, c90, r1
    mad r1, r0.z, c92, r1
    dp4 r0.w, r1, r1
    rsq r0.w, r0.w
    mul r1.xy, r0.w, r1
    mad_pp r1.xy, r1, c0, c0.x
    texld_pp r1, r1, s5
    mul_pp r0.w, r1.w, c16.w
    mul_pp oC0.w, r0.w, v3.w
    add_pp r2.xyz, -c42, v0
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    dp3_sat_pp r0.w, r0, -r2
    mad_sat_pp r1.w, -r1.w, c44.z, c44.w
    mul r2.xyz, r1.w, c43
    add_pp r3.xyz, -c46, v0
    dp3_pp r1.w, r3, r3
    rsq_pp r1.w, r1.w
    rcp_pp r2.w, r1.w
    mul_pp r3.xyz, r1.w, r3
    dp3_sat_pp r1.w, r0, -r3
    mad_sat_pp r2.w, -r2.w, c48.z, c48.w
    mul r3.xyz, r2.w, c47
    mul_pp r3.xyz, r1.w, r3
    mad_pp r2.xyz, r0.w, r2, r3
    add_pp r3.xyz, -c50, v0
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    dp3_sat_pp r0.w, r0, -r3
    mad_sat_pp r1.w, -r1.w, c52.z, c52.w
    mul r3.xyz, r1.w, c51
    mad_pp r2.xyz, r0.w, r3, r2
    add_pp r3.xyz, -c54, v0
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    dp3_sat_pp r0.w, r0, -r3
    mad_sat_pp r1.w, -r1.w, c56.z, c56.w
    mul r3.xyz, r1.w, c55
    mad_pp r2.xyz, r0.w, r3, r2
    dp3_sat_pp r0.w, r0, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r2.xyz, r0.w, c36, r2
    mad_pp r3.xyz, r0, c0.x, c0.x
    mul_pp r0.xyz, r0, r0
    mov r4.xyz, c80
    mad r4.xyz, r4, r3.y, c79
    mul r4.xyz, r0.y, r4
    mov r5.xyz, c77
    mad r3.xyw, c78.xyzz, r3.x, r5.xyzz
    mov r5.xyz, c82
    mad r5.xyz, r5, r3.z, c81
    mad_pp r0.xyw, r0.x, r3, r4.xyzz
    mad_pp r0.xyz, r0.z, r5, r0.xyww
    add_pp r0.xyz, r2, r0
    mul_pp r0.xyz, r0, c16
    mov_pp r2.xyz, c19
    mul_pp r2.xyz, r2, c17
    mad_pp r0.xyz, r0, r1, r2
    mul_pp r0.xyz, r0, v3
    texld_pp r1, v2.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 71 instruction slots used (2 texture, 69 arithmetic)
