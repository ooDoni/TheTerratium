extends Node2D

@onready var dialogo = $dialogo

var falas = [""]

var intro = [
	"No ano 4098, o planeta \n Terra comeca a decair",
	"A poluicao comecava \n a dominar a vida",
	"Mas algo iria mudar isso...",
	".",
	"..",
	"...",
	"Uma planta cria consciencia",
	"Um ser capaz de aguentar \n a missao",
	"A missao de recuperar a vida",
	"Seu nome? \n Plantero",
	"Sua missao e recuperar \n uma planta para nos",
	"Falhar nao e uma opcao",
]

var dialogo2 =[""]

var falaAtual  = 0

var flag_dialogo = true

# Função pra pegar o sinal de morte dps da vida
func _ready() -> void:
	var group_members = get_tree().get_nodes_in_group("vida")
	for emitter in group_members:
		emitter.connect("gameover", _morte)

# Passar de texto
func _process(delta: float) -> void:
	if Global.getEstado() == "intro" :
		falas = intro
	elif Global.getEstado() == "dialogo2":
		falas = dialogo2
	if flag_dialogo:
		dialogo.text = falas[falaAtual]
	
	if Input.is_action_just_pressed("enter"):
		if falaAtual < falas.size() - 1:
			falaAtual += 1
		else:
			flag_dialogo = false
			dialogo.text = ""
			get_tree().change_scene_to_file("res://mundos/MundoTeste.tscn")
			Global.setEstado("fase1")
	
func _morte():
	dialogo.text = "GAME OVER"
	get_tree().paused = true
