extends "res://sub_menu.gd"


# Called when the node enters the scene tree for the first time.
func _ready():
	# Detect if fullscreen to set initial checkbox value
	if (DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN):
		$MarginContainer/VBoxContainer/FullscreenCheckBox.button_pressed = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_fullscreen_check_box_toggled(toggled_on):
	if toggled_on:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)