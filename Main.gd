extends Node2D

var Grass = load("res://Grass.tscn")


func place_grass(x: int, y: int) -> void:
	var grass = Grass.instance()
	grass.position = Vector2(x,y)
	$YSort.add_child(grass)

func place_patch(from: Vector2, to: Vector2) -> void:
	for x in range(from.x, to.x):
		if x % 40 != 0:
			continue
		for y in range(from.y, to.y):
			if y % 10 != 0:
				continue
			place_grass(x,y)
	
func _ready() -> void:
	place_patch(Vector2(50,50), Vector2(1000,1000))
