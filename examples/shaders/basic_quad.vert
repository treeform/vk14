#version 450

layout(location = 0) in vec3 inPosition;
layout(location = 1) in vec3 inColor;
layout(location = 2) in vec2 inUv;

layout(location = 0) out vec2 fragUv;

void main() {
  gl_Position = vec4(inPosition, 1.0);
  fragUv = inUv;
}
