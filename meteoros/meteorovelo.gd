extends Area2D

signal meteordestroyed 
var speed = randi_range(200,300)
var rng = RandomNumberGenerator.new()
var life = randi_range(1,3)

signal player_atingido

func _process(delta):
	position.y += delta * speed
	rotation_degrees += 3
	
	if(position.y>1080):
		queue_free()

	

func _destroyed():
	life -= 1
	if life == 0 :
		queue_free()
		emit_signal("meteordestroyed")


func _on_body_entered(body: Node2D) -> void:
	emit_signal("player_atingido")
