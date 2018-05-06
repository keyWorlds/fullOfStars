extends Area2D

func _ready():
	pass

func _on_TeleportCave_body_entered( body ):
	if body.is_in_group("Player"):
		get_tree().change_scene("res://scenes/Inicio.tscn")
	pass
