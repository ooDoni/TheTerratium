extends Control

@onready var score = $Score:
	set(value):
		score.text = "Pontuação: " + str(value)
