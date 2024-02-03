extends PathFollow2D
class_name Perro
@onready var gloovo : Sprite2D = $Gloovo
var colores : Array [Color] = [Color.CRIMSON,Color.LIME_GREEN, Color.ROYAL_BLUE]
var vida: int=0

# Called when the node enters the scene tree for the first time.
func _ready():
	actualizarColor()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	progress_ratio += 0.05 * delta #millis en arduino  progressratio es el porcentaje de la linea 
	if (progress_ratio >= 0.98):
		fin()
		
func actualizarColor():
	modulate = colores[vida]
	
func fin():
	queue_free()
