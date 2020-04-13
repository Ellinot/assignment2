// Vertex shader
#version 150
#extension GL_ARB_explicit_attrib_location : require

layout(location = 0) in vec4 a_position;

uniform mat4 u_mvp; //hämtar modelviewprojection
out vec3 v_color; //skickar ut vec3
uniform float u_time; //hämtar u_time

mat4 translate(in vec3 v){
    return mat4(
        1.0, 0.0, 0.0, 0.0,
        0.0, 1.0, 0.0, 0.0,
        0.0, 0.0, 1.0, 0.0,
        v.x, v.y, v.z, 1.0);
}

mat4 rotate(in float angle, in vec3 v){
    float c = cos(angle);
    float s = sin(angle);
    return mat4(
        c+v.x*v.x*(1.0-c),      v.y*v.x*(1.0-c)+v.z*s,  v.z*v.x*(1.0-c)-v.y*s, 0.0,
        v.x*v.y*(1.0-c)-v.z*s,  c+v.y*v.y*(1.0-c),      v.z*v.y*(1.0-c)+v.x*s, 0.0,
        v.x*v.z*(1.0-c)+v.y*s,  v.y*v.z*(1.0-c)-v.x*s,  c+v.z*v.z*(1.0-c),     0.0,
        0.0,                    0.0,                    0.0,                   1.0);

}

void main()
{
    //gl_Position = a_position;
    
    v_color = a_position.xyz + 0.5; // converts vertex position to RGB color


    //mat4 T = translate(vec3(1.0, sin(u_time), 0.0));
    mat4 R = rotate(2.0 * u_time, normalize(vec3(-0.5f, -0.1f, -0.5f)));

    gl_Position = u_mvp * R * a_position; // tillämpar u_mvp till varje vertex (a_position)
    //gl_Position = u_mvp * R * a_position;
}
