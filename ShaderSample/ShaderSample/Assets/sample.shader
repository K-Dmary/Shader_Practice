Shader "Custom/sample"
{
    Properties
    {

    }
    SubShader
    {
        Tags { "Queue"="Transparent" }
        LOD 200

        CGPROGRAM
        // Physically based Standard lighting model, and enable shadows on all light types
        #pragma surface surf Standard alpha:blend

        // Use shader model 3.0 target, to get nicer looking lighting
        #pragma target 3.0

        struct Input
        {
            float2 uv_MainTex;
        };

        void surf (Input IN, inout SurfaceOutputStandard o)
        {
            // Albedo comes from a texture tinted by colo
            o.Albedo = fixed4(0.6,0.7,0.4,1);
            o.Alpha = 0.6;
        }
        ENDCG
    }
    FallBack "Diffuse"
}
