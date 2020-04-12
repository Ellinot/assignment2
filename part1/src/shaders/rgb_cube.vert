// Vertex shader
#version 150
#extension GL_ARB_explicit_attrib_location : require

layout(location = 0) in vec4 a_position;

uniform mat4 u_mvp; //hämtar modelviewprojection
out vec3 v_color; //skickar ut vec3

void main()
{
    //gl_Position = a_position;
    gl_Position = u_mvp * a_position; //a_position är som varje vertex
    v_color = a_position.xyz + 0.5; // converts vertex position to RGB color
}
