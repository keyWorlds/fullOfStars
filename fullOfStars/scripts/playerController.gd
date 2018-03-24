extends KinematicBody2D

# Movimiento
var movimiento
var velocidad
# Animaciones
onready var sprite
var animacion
var animacionEstatica
# Interactuando con la hoguera
onready var nodoHoguera
# Para GUI
onready var nodoVida
var nodoLabelInfo
var puntosVida

func _ready():
	movimiento = Vector2()
	velocidad = 50
	
	animacion = "idle_abajo"
	animacionEstatica = "idle_abajo"
	nodoHoguera = get_node("../Bonfire")
	sprite = get_node("AnimatedSprite")
	
	puntosVida = 12
	nodoLabelInfo = Label.new()
	
	set_process(true)
	
	pass

func _process(delta):
	
	if Input.is_action_pressed("ui_left") and !is_on_wall():
		movimiento.x = -velocidad
		animacion = "correr_izquierda"
		animacionEstatica = setAnimacion("izquierda")
	elif Input.is_action_pressed("ui_right") and !is_on_wall():
		movimiento.x = velocidad
		animacion = "correr_derecha"
		animacionEstatica = setAnimacion("derecha")
	elif Input.is_action_pressed("ui_up") and !is_on_wall():
		movimiento.y = -velocidad
		animacion = "correr_arriba"
		animacionEstatica = setAnimacion("arriba")
	elif Input.is_action_pressed("ui_down") and !is_on_wall():
		movimiento.y = velocidad
		animacion = "correr_abajo"
		animacionEstatica = setAnimacion("abajo")
	else:
		movimiento.x = 0
		movimiento.y = 0
		animacion = animacionEstatica
		
		
	sprite.play(animacion)
	move_and_slide(movimiento)
	
	pass

func setAnimacion(direccion):
	var animacionElegida
	
	match direccion:
		"abajo":
			animacionElegida = "idle_abajo"
		"arriba":
			animacionElegida = "idle_arriba"
		"izquierda":
			animacionElegida = "idle_izquierda"
		"derecha":
			animacionElegida = "idle_derecha"

	return animacionElegida
	
func cambiarTexto (nuevoTexto):
	nodoLabelInfo.text = nuevoTexto
	pass