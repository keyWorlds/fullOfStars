extends Area2D

func _ready():
	pass

func _on_Area2D_body_entered( body ):
	if body.is_in_group("Player"):
		queue_free()
		body.inventarioFood += 1
		get_node("../CanvasLayer").cambiarTexto("Has recogido alimento, " + String(body.inventarioFood) + " en total")
	pass
