extends CharacterBody2D

var score = 0
const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var gravity = 0

func _physics_process(delta):
	
	var group_members = get_tree().get_nodes_in_group("meteoro")
	for emitter in group_members:
		emitter.connect("meteordestroyed", _on_meteor_destroyed)

	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var directionX = Input.get_axis("ui_left", "ui_right")
	
	if directionX :
		if position.x >= 0 and position.x <= 1920 :
			velocity.x = directionX * SPEED
		else: 
			if position.x < 0 :
				position.x = 0
			if position.x > 1920 :
				position.x = 1920
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()
	
	var directionY = Input.get_axis("ui_up", "ui_down")
	
	if directionY :
		if position.y >= 0 and position.y <= 1080 :
			velocity.y = directionY * SPEED
		else: 
			if position.y < 0 :
				position.y = 0
			if position.y > 1080 :
				position.y = 1080
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	move_and_slide()

func _on_meteor_destroyed():
	score += 10
	print(score)
