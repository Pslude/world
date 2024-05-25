extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	# Focus keyboard on a button
	$MarginContainer/VBoxContainer/CloseButton.grab_focus()
	
	# Detect if fullscreen to set initial checkbox value
	if (DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN):
		$MarginContainer/VBoxContainer/FullscreenCheckBox.button_pressed = true
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_close_button_pressed():
	get_tree().change_scene_to_file("res://main_menu.tscn")

func _input(event):
	# quit when pressing Esc
	if Input.is_action_pressed("ui_cancel"):
		get_tree().change_scene_to_file("res://main_menu.tscn")

func _on_fullscreen_check_box_toggled(toggled_on):
	if toggled_on:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
