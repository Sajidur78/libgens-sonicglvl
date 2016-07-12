//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EmissionParam;
//   float4 g_ForceAlphaColor;
//   float4 g_LightScatteringColor;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_ViewportSize;
//   float4 mrgPlayableParam;
//   sampler2D sampDif;
//   sampler2D sampEmi;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_ViewportSize                        c24      1
//   g_LightScatteringColor                c75      1
//   mrgPlayableParam                      c86      1
//   g_ForceAlphaColor                     c89      1
//   g_EmissionParam                       c151     1
//   sampDif                               s0       1
//   sampEmi                               s1       1
//

    ps_3_0
    def c0, 0.5, -1, 1, 4
    dcl_texcoord v0.xy
    dcl_texcoord5_pp v1.xy
    dcl_color_pp v2
    dcl vPos.y
    dcl_2d s0
    dcl_2d s1
    texld_pp r0, v0, s1
    add r0.xyz, r0, c151
    mul r0.xyz, r0, c17
    mul_pp r0.xyz, r0, c151.w
    add r0.w, c0.x, vPos.y
    mov r1.x, c86.x
    mad r0.w, r0.w, c24.w, -r1.x
    mul_sat_pp r0.w, r0.w, c86.y
    mul_pp r0.xyz, r0.w, r0
    texld_pp r1, v0, s0
    add_pp r1.xyz, r1, c0.y
    mul_pp r1.w, r1.w, c16.w
    mul_pp r1.w, r1.w, v2.w
    mul_pp r2.w, r1.w, c21.x
    mad_pp r1.xyz, r1, r0.w, c0.z
    mul_pp r1.xyz, r1, c16
    mad_pp r2.xyz, r1, v2, r0
    mul_pp r0, r2, c89
    min_pp r1, r0, c0.w
    mul_pp r0.xyz, c75, v1.y
    mad_pp oC0.xyz, r1, v1.x, r0
    mov_pp oC0.w, r1.w

// approximately 22 instruction slots used (2 texture, 20 arithmetic)