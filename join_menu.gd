extends "res://sub_menu.gd"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print('Ready... to join!')
	
	# Create an HTTP request node and connect its completion signal.
	var http_request = HTTPRequest.new()
	add_child(http_request)
	http_request.request_completed.connect(self._http_request_completed)

	var error = http_request.request('http://127.0.0.1:8000/host/api/servers/?format=json&game_mode__game__name=Waiting&game_mode__name=Sandbox&release__name=0.0.1&status=a')
	#var error = http_request.request('https://tabarnak.app/host/api/servers/?format=json&game_mode__game__name=Waiting&game_mode__name=Sandbox&release__name=0.0.1&status=a')
	if error != OK:
		push_error("An error occurred in the HTTP request.")
	

	## Perform a POST request. The URL below returns JSON as of writing.
	## Note: Don't make simultaneous requests using a single HTTPRequest node.
	## The snippet below is provided for reference only.
	#var body = JSON.new().stringify({"name": "Godette"})
	#error = http_request.request("https://httpbin.org/post", [], HTTPClient.METHOD_POST, body)
	#if error != OK:
		#push_error("An error occurred in the HTTP request.")

# Called when the HTTP request is completed.
func _http_request_completed(result, response_code, headers, body):
	# print(result, response_code, headers, body)
	var json = JSON.new()
	json.parse(body.get_string_from_utf8())
	var response = json.get_data()
	# print(body.get_string_from_utf8())
#
	## Print the user agent string used by the HTTPRequest node (as recognized by httpbin.org).
	#print(response.headers["User-Agent"])
	print('_http_request_completed', response['results'])


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
