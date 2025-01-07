extends "res://sub_menu.gd"


# Called when the node enters the scene tree for the first time.
func _ready():
	print("HOST MENU is _ready()")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_server_button_pressed():
	print('Starting server...')
	get_tree().change_scene_to_file("res://sandbox.tscn")
