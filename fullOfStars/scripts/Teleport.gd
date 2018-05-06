extends Area2D

func _ready():
	pass


func _on_Teleport_body_entered( body ):
	if body.is_in_group("Player"):
		get_tree().change_scene("res://scenes/Mundo.tscn")
	pass