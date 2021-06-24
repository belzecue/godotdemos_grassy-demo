"""
Places grass.
"""
extends Node2D

var Grass = load("res://Grass.tscn")

# Place one grass node
func place_grass(x: int, y: int) -> void:
	# make some grass
	var grass = Grass.instance()
	# put it at x,y with some randomness added
	grass.position = Vector2(x + rand_range(-20.0, 20.0),y + rand_range(-5.0,5.0))
	# create a new shader for this grass instance
	grass.get_node("Grown").material = grass.get_node("Grown").material.duplicate()
	# set an offset to the shader so not all the grass is swaying in the same direction
	grass.get_node("Grown").material.set_shader_param("offset", float(x * y))
	# add it to the scene
	$YSort.add_child(grass)

# Place a rectangle of grass nodes
func place_patch(from: Vector2, to: Vector2) -> void:
	for x in range(from.x, to.x):
		# loop from left to right
		if x % 40 != 0:
			# x % 40 returns the remainder after devision
			# eg. 44 % 40 = 4, 85 % 40 = 5, 26 % 40 = 26
			# x % 40 == 0 is only true on multiples of 40 (0, 40, 80, 120, etc)
			# by continuing on x % 40 != 0 we skip all except the above xs ^
			continue
		for y in range(from.y, to.y):
			# loop from top to bottom
			if y % 10 != 0:
				continue
			# place grass at this position
			place_grass(x,y)

# called when the game is started
func _ready() -> void:
	# Make a rectangle (square) of grass
	place_patch(Vector2(50,50), Vector2(1000,1000))
