uniform vec3 uDepthColor;
uniform vec3 uSurfaceColor;
uniform float uColorOffset;
uniform float uColorMultiplier;

varying float vElevation;

void main()
{
    float mixedStrength = (vElevation + uColorOffset) * uColorMultiplier;
    vec3 mixedColor = mix(uDepthColor, uSurfaceColor, mixedStrength);
    gl_FragColor = vec4(mixedColor, 1.0);
}