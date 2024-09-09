extends Node2D

@onready var dialogo = $dialogo

var falas = ["oi",
			"voce passou de fase",
			"game over"]

var falaAtual  = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	dialogo.text = falas[falaAtual]
	
	if Input.is_action_just_pressed("ui_accept"):
		if falaAtual < falas.size():
			falaAtual += 1
	
	
