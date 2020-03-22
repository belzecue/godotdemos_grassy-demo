"""
Player Character.
This script handles movement and animation.
"""
extends KinematicBody2D

# Pixels per second
export var speed = 200

# Called every (physics) frame
func _physics_process(_delta: float) -> void:
	# Get the direction we are going
	# .get_action_strength() returns 0 or 1 (on buttons).
	# If oppposing directions are both pressed we get 0
	var dir = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
	)
	# normalize the direction since Vec2(1,1) is longer than Vec(1,0) and we would move faster diagonally.
	move_and_slide(dir.normalized() * speed)
	# Handle animations states
	if dir.x < 0:
		$Body.set_animation("Side")
		$Body.set_flip_h(true)
	elif dir.x > 0:
		$Body.set_animation("Side")
		$Body.set_flip_h(false)
	elif dir.y > 0:
		$Body.set_animation("Down")
	elif dir.y < 0:
		$Body.set_animation("Up")
	else:
		# dir == (0,0)
		$Body.set_animation("Idle")

