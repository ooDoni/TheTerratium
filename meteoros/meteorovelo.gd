extends Area2D

signal meteordestroyed 
var speed = 300
var rng = RandomNumberGenerator.new()
var life = randi_range(1,3)

func _process(delta):
	position.y += delta * speed
	
	if(position.y>1080):
		queue_free()

func _destroyed():
	life -= 1
	if life == 0 :
		queue_free()
		emit_signal("meteordestroyed")
