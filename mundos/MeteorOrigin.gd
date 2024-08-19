extends Node2D
var meteoro = load("res://meteoros/Meteoro.tscn")
var timer = 0.3
var rng = RandomNumberGenerator.new()

func _process(delta):
	timer -= delta
	if timer <= 0 :
		var meteoros = meteoro.instantiate() as Area2D
		rng.randomize()
		var aleatorio = rng.randi_range(20, 2000)
		meteoros.position.x = aleatorio
		get_tree().root.get_node("main").add_child(meteoros)
		timer = 0.3
