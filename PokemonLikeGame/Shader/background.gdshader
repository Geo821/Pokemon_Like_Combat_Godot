shader_type canvas_item;

uniform float animation_speed = 0.5;
uniform sampler2D noise_texture: hint_default_black;


void fragment() {
	vec4 noise_color = texture(noise_texture, UV);
	vec4 final_color = noise_color;
	
	//final_color += vec4(1.0);
	COLOR = final_color;
}