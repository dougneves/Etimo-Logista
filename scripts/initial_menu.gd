extends Control

func _on_button_start_pressed():
	var main_game_scene = preload("res://scenes/main_game.tscn")
	get_tree().change_scene_to_packed(main_game_scene)

func _on_button_close_pressed():
	get_tree().quit()
