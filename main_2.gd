extends CharacterBody2D

var speed = 200
var jump = 300
var gravity = 13

func _physics_process(delta):
	
	move_and_slide()
	
	if Input.is_action_pressed("left"):
		velocity.x = -speed
	elif Input.is_action_pressed("right"):
		velocity.x = speed
	else:
		velocity.x = 0

	if not is_on_floor():
		velocity.y += gravity

	if Input.is_action_just_pressed("jump"):
		velocity.y = -jump
	pass
