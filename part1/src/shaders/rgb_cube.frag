// Fragment shader
#version 150

out vec4 frag_color;
in vec3 v_color;

uniform float u_time;
void main()
{
    //frag_color = vec4(v_color, 1.0);

    frag_color = vec4(abs(cos(u_time)),v_color); //pulsating colors
}
