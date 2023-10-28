extends Node2D

var picked_up = false
var drop_position = Node2D.new()
var initial_position = Vector2.ZERO
var mouse_offset = Vector2.ZERO
var initial_scale = Vector2.ZERO

func _process(delta):
	if picked_up:
		global_position = get_global_mouse_position() + mouse_offset

func _on_button_button_down():
	picked_up = true
	
	drop_position = duplicate()
	drop_position.z_index = 9
	drop_position.modulate = Color(1, 1, 1, 0.5)
	get_tree().get_root().add_child(drop_position);
	
	z_index = 10

	initial_scale = scale	
	apply_scale(Vector2(1.1,1.1))
	mouse_offset = global_position - get_global_mouse_position()
	initial_position = global_position

func _on_button_button_up():
	picked_up = false
	drop_position.queue_free()
	scale = initial_scale
	global_position = initial_position
	z_index = 8