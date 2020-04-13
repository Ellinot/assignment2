// Fragment shader
#version 150

out vec4 frag_color;
in vec3 v_color;

uniform float u_time; //u_time test
void main()
{
    //frag_color = vec4(1.0, 1.0, 1.0, 1.0);
    frag_color = vec4(v_color, 1.0); //skickar med v_color som är en vec3

    // frag_color = vec4(abs(cos(u_time)),1.0, 1.0 , 1.0);
}
