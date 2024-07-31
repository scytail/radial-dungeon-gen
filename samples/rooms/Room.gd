class_name Room
extends Node2D

@export var lockRed: bool = false
@export var lockGreen: bool = false
@export var lockBlue: bool = false

var _shade_min: float = .2
var _shade_max: float = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	var red = $ColorRect.color.r
	if (!lockRed):
		red = randf_range(_shade_min, _shade_max)
	var green = $ColorRect.color.g
	if (!lockGreen):
		green = randf_range(_shade_min, _shade_max)
	var blue = $ColorRect.color.b
	if (!lockBlue):
		blue = randf_range(_shade_min, _shade_max)
	$ColorRect.color = Color(red, green, blue)
