extends GutTest

class TestRoomGroup:
	extends GutTest
	
	var _obj = load("res://RoomGroup.gd")
	var _obj_instance: RoomGroup

	func before_each():
		_obj_instance = _obj.new()
	
	
	func test_selectRoom_null_when_no_rooms():
		_obj_instance.roomOptions = []
		var result = _obj_instance.selectRoom()
		
		assert_null(result)

	
	func test_selectRoom_not_null_when_rooms():
		_obj_instance.roomOptions = [PackedScene.new()]
		var result = _obj_instance.selectRoom()
		
		assert_not_null(result)
