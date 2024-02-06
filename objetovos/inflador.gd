extends Node
@onready var timer = $Timer
@onready var caminito = $"../caminito"
const GLOBOPERRO = preload("res://objetovos/globoperro.tscn")
var cantglobos=0
@export var regla : Reglas

# Called when the node enters the scene tree for the first time.
func _ready():
	timer.timeout.connect(inflarglobo)
	
func inflarglobo():
	
	if (cantglobos < 10):
		var nueboglobo = GLOBOPERRO.instantiate() as Perro
		nueboglobo.llegueAlFin.connect(regla.bajarvida)
		nueboglobo.vida = 0
		caminito.add_child(nueboglobo)
		cantglobos = cantglobos+1 
