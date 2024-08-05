extends Area2D

class_name Laser

@export var speed = 400

func _process(delta):
	global_position.y -= delta * speed * 3
	
