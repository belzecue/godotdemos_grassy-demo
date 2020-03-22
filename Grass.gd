"""
This script handles the being trampled and the growing back of the grass.
"""
extends Area2D

# Player stepped on grass
func _on_Grass_body_entered(_body: RigidBody2D) -> void:
	# Turn full growth off, reset, show and play the growing animation
	$Grown.visible = false
	$Growing.frame = 0
	$Growing.play("grow")
	$Growing.visible = true

# Growth animation finished
func _on_Growing_animation_finished() -> void:
	# Swap out animation for static image
	$Grown.visible = true
	$Growing.visible = false
