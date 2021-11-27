Shader "Custom/sample"
{
    Properties
    {

    }
    SubShader
    {
        Tags { "RenderType" = "Opaque" }
        LOD 200

        CGPROGRAM
        #pragma surface surf Standard
        #pragma target 3.0

        struct Input
        {
            float3 worldNormal;
            float3 viewDir;
        };

        void surf (Input IN, inout SurfaceOutputStandard o)
        {
            fixed4 baseColor = fixed4(0.05, 0.1, 0, 1);
            fixed4 rimColor = fixed4(0.5, 0.7, 0.5, 1);
            // Albedo comes from a texture tinted by colo
            o.Albedo = baseColor;
            float rim = 1 - saturate(dot(IN.viewDir,o.Normal));
            o.Emission = rimColor * pow(rim, 2.5);
        }
        ENDCG
    }
    FallBack "Diffuse"
}
