shader_type canvas_item;

uniform float offset = 0.5;

void vertex() {
	VERTEX.x += cos((TIME + offset) * 0.5) * (VERTEX.y - 38.0) * 0.1;
}
