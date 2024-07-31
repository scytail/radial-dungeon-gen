extends Node2D

func _ready():
	$MapGenerator.generateTiles()
	
	var centerTileTopLeftCoord: Vector2 = $MapGenerator.grid.tileCoordinatesToGodotUnits($MapGenerator.grid.calculateGridCenterTile())
	var centerTilePlayerOffset: float = $MapGenerator.grid.tileSize/2 - 32  # player is 64 units wide
	$Player.position = centerTileTopLeftCoord + Vector2(centerTilePlayerOffset, centerTilePlayerOffset)
