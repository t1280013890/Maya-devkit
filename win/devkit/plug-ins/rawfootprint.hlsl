/*******************************************************************************
 *
 * rawfootprint solid shader
 *
 *******************************************************************************/

cbuffer ConstantBuffer : register(b0)
{
	matrix wvp : WorldViewProjection;
	float4 matColor = float4(0.8, 0.2, 0.0, 1.0);
}

void mainVS(
	float4 vertex : POSITION,
	out float4 position: SV_POSITION)
{ 
	position = mul(vertex, wvp);
}

float4 mainPS() : SV_Target
{
	return matColor;
}
