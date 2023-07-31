#version 410 core
layout(location = 0) in vec3 a_position;
layout(location = 1) in vec2 a_uv;

out vec2 _uv;

uniform mat4 u_model = mat4(1.0);
uniform mat4 u_view = mat4(1.0);
uniform mat4 u_projection = mat4(1.0);

void main() {
    _uv = a_uv;
    gl_Position = u_projection * u_view * u_model * vec4(a_position, 1.0);
}
