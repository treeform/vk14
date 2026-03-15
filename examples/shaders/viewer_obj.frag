#version 450

layout(location = 0) in vec3 fragNormal;
layout(location = 0) out vec4 outColor;

void main() {
  vec3 lightDir = normalize(vec3(0.4, 0.8, 0.5));
  float diffuse = abs(dot(normalize(fragNormal), lightDir));
  float light = 0.2 + diffuse * 0.8;
  vec3 baseColor = vec3(0.88, 0.84, 0.78);
  outColor = vec4(baseColor * light, 1.0);
}
