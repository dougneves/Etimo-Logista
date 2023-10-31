extends Node2D

var sprites = []

func _ready():
	sprites.append(preload("res://sprites/ants.jpg"))
	sprites.append(preload("res://sprites/robo.png"))

func _on_button_new_ant_colony_pressed():
	var ant_colony_instance = preload("res://objects/movable_object.tscn").instantiate()
	ant_colony_instance.texture = sprites[randi() % sprites.size()]
	ant_colony_instance.translate(Vector2(randf_range(0,1920),randf_range(0,1080)))
	ant_colony_instance.rotate(randf_range(0,360))
	ant_colony_instance.z_index = 8
	var ant_colory_scale = randf_range(0,1);
	ant_colony_instance.apply_scale(Vector2(ant_colory_scale,ant_colory_scale))
	get_tree().get_root().add_child(ant_colony_instance)

func _process(delta):
	_on_button_new_ant_colony_pressed()
