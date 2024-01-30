extends Node


func _ready():
	ask_game_master("hello")


func ask_game_master(question: String):
	# get answer from client
	var response = "world"
	EventBus.game_master_response.emit(response)
