extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	# Focus keyboard on a button
	$MarginContainer/VBoxContainer/CloseButton.grab_focus()
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _on_close_button_pressed():
	get_tree().change_scene_to_file('res://main_menu.tscn')

func _input(_event):
	# quit when pressing Esc
	if Input.is_action_pressed('ui_cancel'):
		get_tree().change_scene_to_file('res://main_menu.tscn')
