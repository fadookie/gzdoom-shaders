
void main()
{
	vec4 c = texture(InputTexture, TexCoord);
	c.rgb = mix(saturationColor * dot(c.rgb, vec3(0.3,0.56,0.14)), c.rgb, saturation);
	FragColor = c;
}
