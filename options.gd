extends Node

var config = ConfigFile.new()

const CONFIG_FILE_PATH = "user://options.cfg"

# Called when the node enters the scene tree for the first time.
func _ready():
	
	# Load data from a file.
	var config_load_err = config.load(CONFIG_FILE_PATH)
	
	# If the file didn't load, ignore it.
	if config_load_err != OK:
		print("Error loading config file ", CONFIG_FILE_PATH, " error=", config_load_err)
	else:	
		# Apply options from loaded config file.
		if config.get_value("video", "fullscreen"):
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func save_config():
	return config.save(CONFIG_FILE_PATH)
