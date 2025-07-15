extends Control

@onready var music = $"/root/Music"


func _ready() -> void:
	#return
	$Panel.visible = false


func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		music.stream_paused = not music.get_stream_paused()
		get_tree().paused = not get_tree().is_paused()
		$Panel.visible = not $Panel.is_visible()
