extends PathFollow2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	progress_ratio += 0.2 * delta
	if (progress_ratio >= 0.98):
		bajarbida()

func bajarbida():
	queue_free()
