uniform float timer;

vec4 ProcessTexel()
{
    vec4 texel = getTexel(vTexCoord.st);
    texel.r = (sin(timer) + 1) / 2;
    texel.b = (cos(timer) + 1) / 2;
    return texel;
}


