extends Control
var timer = 33

func _process(delta):
	if timer > 0 :
		timer -= delta
	else:
		get_tree().change_scene_to_file("res://Cenas/game.tscn")
