extends RichTextLabel

var score = 0
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var group_members = get_tree().get_nodes_in_group("meteoro")
	for emitter in group_members:
		emitter.connect("meteordestroyed", _on_meteor_destroyed)
		
func _on_meteor_destroyed():
	score += 10
	text = str("Score: ", score)
	print(score)
