extends Node2D

@onready var dialogo = $dialogo

var falas = [""]

var falaAtual  = 0

var flag_dialogo = true



func _ready() -> void:
	var group_members = get_tree().get_nodes_in_group("vida")
	for emitter in group_members:
		emitter.connect("gameover", _morte)


func _process(delta: float) -> void:
	if flag_dialogo:
		dialogo.text = falas[falaAtual]
	
	if Input.is_action_just_pressed("ui_accept"):
		if falaAtual < falas.size() - 1:
			falaAtual += 1
		else:
			flag_dialogo = false
			dialogo.text = ""
	
	
func _morte():
	print("morreu")
	dialogo.text = "GAME OVER"
	get_tree().paused = true
