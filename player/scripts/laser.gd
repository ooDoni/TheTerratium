extends Area2D

class_name Laser

@export var speed = 400

func _process(delta):
	global_position.y -= delta * speed * 3
	
	if(position.y<0):
		queue_free()


func _on_area_entered(area):
	area._destroyed()
	queue_free()
