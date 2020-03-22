shader_type canvas_item;

void vertex() {
	VERTEX.x += cos(TIME * 0.5) * (VERTEX.y - 38.0) * 0.08;
}
