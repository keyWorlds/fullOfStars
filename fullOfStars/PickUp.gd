extends Area2D

func _ready():
	
	pass

func _physics_process(delta):
	
	if get_overlapping_bodies().size() > 0:
		for i in range (get_overlapping_bodies().size()):
			if get_overlapping_bodies()[i].is_in_group("Player"):
				#get_overlapping_bodies()[i].cambiarTexto("Has recogido algo")
				queue_free()
	pass
