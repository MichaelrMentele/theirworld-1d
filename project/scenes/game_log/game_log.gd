extends VBoxContainer


func _ready():
	EventBus.game_master_response.connect(_on_gm_message)


func append_to_log(text: String) -> void:
		$ColorRect/RichTextLabel.append_text(
		text + '\n'
	)


func _on_gm_message(msg: String) -> void:
	append_to_log(msg)


func _on_send_button_pressed() -> void:
	append_to_log($VBoxContainer/TextInput.text)
