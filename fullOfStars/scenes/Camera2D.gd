extends Camera2D

func _ready():
	set_physics_process(true)

func _physics_process(delta):
	set_position(get_node("../Player").get_position())
