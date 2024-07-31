extends Camera2D

@export var zoomIncrement = 0.1

func _process(_delta):
	if Input.is_action_pressed("zoom_in"):
		zoom += Vector2(zoomIncrement, zoomIncrement)
	if Input.is_action_pressed("zoom_out"):
		zoom -= Vector2(zoomIncrement, zoomIncrement)
