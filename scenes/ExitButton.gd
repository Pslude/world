extends Control

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		var bounds = Rect2(position, size)
		print("")
		print("position", position)
		print("size", size)
		print("event.position", event.position)
		print("bounds", bounds)
		print("bounds.has_point(event.position)", bounds.has_point(event.position))
		if bounds.has_point(event.position):
			print("clicked!")
