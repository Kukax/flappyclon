#Player.gd
extends CharacterBody2D
var gravity = 900.0
var jump_force = -350.0

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta

	if Input.is_action_just_pressed("jump"):
		velocity.y = jump_force

	move_and_slide()
