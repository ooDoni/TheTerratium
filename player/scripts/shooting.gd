extends Node2D
@export var laser_scene: PackedScene

var timer = 0.3

func _process(delta):
	timer -= delta
	if Input.is_action_pressed("shoot"):
		if timer <= 0 :
			var laser = laser_scene.instantiate() as Area2D
			laser.global_position = get_parent().global_position - Vector2(0, 50)
			get_tree().root.get_node("main").add_child(laser)
			timer = 0.3
