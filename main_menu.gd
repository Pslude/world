extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	# focus this on ready so the menu can be controlled by keyboard
	$VBoxContainer/FindButton.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_find_button_pressed():
	pass # Replace with function body.
	#get_tree.change_scene()


func _on_join_button_pressed():
	pass # Replace with function body.


func _on_host_button_pressed():
	pass # Replace with function body.


func _on_options_button_pressed():
	pass # Replace with function body.


func _on_quit_button_pressed():
	get_tree().quit()
