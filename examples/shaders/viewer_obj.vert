#version 450

layout(push_constant) uniform Transform {
  mat4 mvp;
  mat4 model;
} transform;

layout(location = 0) in vec3 inPosition;
layout(location = 1) in vec3 inNormal;

layout(location = 0) out vec3 fragNormal;

void main() {
  gl_Position = transform.mvp * vec4(inPosition, 1.0);
  fragNormal = normalize(mat3(transform.model) * inNormal);
}
