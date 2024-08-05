extends Area2D

var speed = 300

func _process(delta):
	position.y += delta * speed
	
