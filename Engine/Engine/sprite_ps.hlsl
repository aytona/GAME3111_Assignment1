// GLOBALS
Texture2D shaderTexture;
SamplerState SampleType;

// TYPEDEFS
struct PixelInputType {
    float4 pos : SV_POSITION;
	float2 tex : TEXCOORD0;
	float4 color : COLOR;
	uint primID : SV_PrimitiveID;
};

// Pixel Shader
float4 main(PixelInputType input) : SV_TARGET {
	return input.color * shaderTexture.Sample(SampleType, input.tex);
}