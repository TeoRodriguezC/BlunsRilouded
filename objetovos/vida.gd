extends Label

@export var regla : Reglas

func _ready():
	regla.sebajolavida.connect(actualizarTexto)
	
func actualizarTexto (nuevonumero : int):
	text = str(nuevonumero)
