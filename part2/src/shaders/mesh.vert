// Vertex shader
#version 150
#extension GL_ARB_explicit_attrib_location : require

layout(location = 0) in vec4 a_position;
layout(location = 1) in vec3 a_normal;

out vec3 v_color;
uniform mat4 u_mvp;

void main()
{
    //v_color = vec3(0.0, 1.0, 0.0);
    v_color = 0.5 * a_normal + 0.5; // maps the normal direction to an RGB color
    gl_Position = u_mvp * a_position;
}
