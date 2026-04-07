shader_type canvas_item;
const float blob_radius = 8.0 / 100.0;
uniform vec2 mouse_pos = vec2(0.5, 0.5);
uniform vec2 center_pos = vec2(0.5, 0.5);
uniform float aspect_ratio = 1.0;

void vertex() {
	
}

void fragment() {
	vec2 uv = vec2(UV.x * aspect_ratio, UV.y);
	//Calcular distancia entre UV (pixel actual) y posicion de mouse
	float dist = distance(uv, mouse_pos);
	//Asignar la intensidad de blanco segun distancia
	COLOR = vec4(vec3(blob_radius / dist), 1);
	//Mismo procedimiento con el centro de la ventana
	dist = distance(uv, vec2(0.5, 0.5));
	COLOR += vec4(vec3(blob_radius / dist), 1);
}