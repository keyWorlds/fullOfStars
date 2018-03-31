extends CanvasLayer

# Para GUI
onready var nodoVida
var nodoLabelInfo
var puntosVida

func _ready():
	
	nodoLabelInfo = get_node("../CanvasLayer/EstadoLabel")
	cambiarTexto("Solo, perdido... y hambriento")
	pass

func cambiarTexto (nuevoTexto):
	nodoLabelInfo.text = nuevoTexto
	pass
