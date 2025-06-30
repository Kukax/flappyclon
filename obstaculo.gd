extends Node2D

@export var velocidad = 100.0  # Puedes ajustar la velocidad desde el editor si querés

func _process(delta):
	position.x -= velocidad * delta
	print("Moviendo obstaculo")

	# Eliminar el obstáculo cuando sale completamente de la pantalla
	if position.x < -150:
		queue_free()
