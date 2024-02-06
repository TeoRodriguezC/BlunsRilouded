extends Node
class_name Reglas 

var vida : int=100

func bajarvida (vidanueva : int):
	vida = vida - vidanueva
	sebajolavida.emit(vida)  

signal sebajolavida 
