extends Node2D


func _on_button_new_ant_colony_pressed():
	var ant_colony_instance = preload("res://objects/ant_colony.tscn").instantiate()
	ant_colony_instance.translate(Vector2(randf_range(0,1920),randf_range(0,1080)))
	ant_colony_instance.rotate(randf_range(0,360))
	var ant_colory_scale = randf_range(0,1);
	ant_colony_instance.apply_scale(Vector2(ant_colory_scale,ant_colory_scale))
	get_tree().get_root().add_child(ant_colony_instance)
