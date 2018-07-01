struct VS_OUTPUT
{
	float4 Pos : SV_POSITION;
	float phase : ATTRIBUTE0;
};

VS_OUTPUT VS(float4 inPos : POSITION, float4 inColor : COLOR)
{
	VS_OUTPUT output;
	output.Pos = inPos;
	output.phase = inPos.y;

	return output;
}

float4 PS(VS_OUTPUT input) : SV_TARGET
{
	float R = fmod(float3(input.phase * 99, 0, 0),1.0).x;
	return float4(R, 0, 0, 1);
}