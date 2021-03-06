//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   sampler2D g_GISampler;
//   row_major float4x4 g_MtxView;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
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
//   mrgGlobalLight_Diffuse   c36      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_MtxView                c90      3
//   sampDif                  s0       1
//   sampEnv                  s5       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//

    ps_3_0
    def c0, 0.5, -0.5, 0, 0
    dcl_texcoord v0
    dcl_texcoord3_pp v1
    dcl_texcoord5 v2.xy
    dcl_color_pp v3
    dcl_2d s0
    dcl_2d s5
    dcl_2d s9
    dcl_2d s10
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v3.w
    nrm_pp r1.xyz, v1
    mul r2, r1.y, c91
    mad r2, r1.x, c90, r2
    mad r2, r1.z, c92, r2
    dp3_sat_pp r0.w, r1, -c10
    dp4 r1.x, r2, r2
    rsq r1.x, r1.x
    mul r1.xy, r1.x, r2
    mad_pp r1.xy, r1, c0, c0.x
    texld_pp r1, r1, s5
    mul r1.w, c64.z, c64.x
    mov r2.xz, c64
    mad r2.x, r2.x, -r2.z, r2.z
    texld r3, v0.zwzw, s10
    mad_pp r1.w, r3.w, r2.x, r1.w
    mul r1.w, r1.w, c63.x
    mul_pp r1.xyz, r1.w, r1
    mul_pp r1.xyz, r1, v1.w
    mul r0.w, r0.w, r3.w
    mul_pp r2.xyz, r3, r3
    mul_pp r3.xyz, r0.w, c36
    mad_pp r2.xyz, r2, c17, r3
    mul_pp r2.xyz, r2, c16
    mad_pp r0.xyz, r2, r0, r1
    mul_pp r0.xyz, r0, v3
    texld_pp r1, v2.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 32 instruction slots used (4 texture, 28 arithmetic)
