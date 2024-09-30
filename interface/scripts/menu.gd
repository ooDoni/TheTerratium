extends Control



func _on_jogar_pressed():
	get_tree().change_scene_to_file("res://mundos/INTRO.tscn")


func _on_sair_pressed():
	get_tree().SAIR()


#extends kinematicbody2D#

#export (int) var speed = 200

#var velocity = vector2()

#func _physics_process(delta):
#get_input()

#func get_input():
#velocity = vector2()

	# if input.is_action_pressed ("right"):
			#velocity
