extends Node2D
@export var scroll_speed = 100.0

func _process(delta):
	position.x -= scroll_speed * delta
	if position.x <= -get_viewport_rect().size.x:
		position.x += get_viewport_rect().size.x * 2  # reinicio
