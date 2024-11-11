extends Control

func _process_cutsence():
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_file("res://Cenas/game.tscn")
