extends Node2D

@onready var v1 = $vida1
@onready var v2 = $vida2
@onready var v3 = $vida3

signal gameover
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var group_members = get_tree().get_nodes_in_group("jogador")
	for emitter in group_members:
		emitter.connect("player_hit", _dano)

func _dano(vida):
	if(vida == 2):
		v1.queue_free()
	elif(vida == 1):
		v2.queue_free()
	elif(vida == 0):
		v3.queue_free()
		emit_signal("gameover")
