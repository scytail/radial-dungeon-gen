extends GutTest

class TestMapGenerator:
	extends GutTest
	
	var _obj = load("res://MapGenerator.gd")
	var _obj_instance

	func before_each():
		_obj_instance = _obj.new()
	
	func after_each():
		# clear the created node so that we don't have an orphaned node after the test  
		_obj_instance.free()
	
	func test_straightLineDistance_correct():
		var point1 = Vector2(3,4)
		var point2 = Vector2(0,0)
		var result: float = _obj_instance._straightLineDistance(point1, point2)
		assert_eq(result, 5.0)

