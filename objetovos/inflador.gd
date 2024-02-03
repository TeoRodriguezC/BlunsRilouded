extends Node
@onready var timer = $Timer
@onready var caminito = $"../caminito"
const GLOBOPERRO = preload("res://objetovos/globoperro.tscn")
var cantglobos=0
# Called when the node enters the scene tree for the first time.
func _ready():
	timer.timeout.connect(inflarglobo)
	
func inflarglobo():
	
	if (cantglobos < 10):
		var nueboglobo = GLOBOPERRO.instantiate() as Perro
		nueboglobo.vida = 2
		caminito.add_child(nueboglobo)
		cantglobos = cantglobos+1 
