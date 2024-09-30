extends Node

var estado = ""

func getCena():
	var CenaAtual = get_tree().current_scene

func getEstado():
	var cena = get_tree().current_scene
	if cena.scene_file_path == "res://mundos/INTRO.tscn":
		estado = "intro"
	return estado

func setEstado(novoestado):
	estado = novoestado
