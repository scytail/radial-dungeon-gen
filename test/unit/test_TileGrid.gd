extends GutTest

class TestTileGrid:
	extends GutTest
	
	var _obj = load("res://TileGrid.gd")
	var _obj_instance: TileGrid

	func before_each():
		_obj_instance = _obj.new()
		
		
	func test_odd_grid_calculates_center_tile():
		_obj_instance.gridDimensions = Vector2i(11,11)
		var result: Vector2i = _obj_instance.calculateGridCenterTile()
		
		assert_eq(result.x,5)
		assert_eq(result.y,5)

	func test_even_grid_calculates_center_tile():
		_obj_instance.gridDimensions = Vector2i(20,20)
		var result: Vector2i = _obj_instance.calculateGridCenterTile()
		
		assert_eq(result.x,10)
		assert_eq(result.y,10)
		
	func test_grid_calculates_correct_godot_unit_conversion():
		_obj_instance.tileSize = 27
		var result: Vector2 = _obj_instance.tileCoordinatesToGodotUnits(Vector2i(2,3))
		
		assert_eq(result.x, 54.0)
		assert_eq(result.y, 81.0)
