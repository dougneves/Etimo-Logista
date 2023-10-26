extends Node2D

var picked_up = false
var initial_position = Vector2.ZERO

func _process(delta):
	if picked_up:
		global_position = get_global_mouse_position()

func _on_button_button_down():
	picked_up = true
	initial_position = global_position

func _on_button_button_up():
	picked_up = false
	global_position = initial_position
