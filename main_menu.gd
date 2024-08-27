extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	# focus a button on ready so the menu can be controlled by keyboard
	$VBoxContainer/FindButton.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	# quit when pressing Esc
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()

func _on_login_button_pressed():
	get_tree().change_scene_to_file("res://login_menu.tscn")

func _on_join_button_pressed():
	get_tree().change_scene_to_file("res://join_menu.tscn")

func _on_quit_button_pressed():
	get_tree().quit()
