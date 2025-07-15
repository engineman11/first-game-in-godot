extends Node2D

@onready var player: CharacterBody2D = $Player
@onready var timer = $Timer


func _ready() -> void:
	#return
	$Camera2D/YouDied.hide()
	Input.mouse_mode = Input.MOUSE_MODE_HIDDEN


func death():
	player.death()
	$Camera2D.position = $Player/Camera2D.get_screen_center_position()
	$Camera2D.enabled = true
	$Camera2D/YouDied.show()
	Engine.time_scale = 0.25
	timer.start()


func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()


func _on_killzone_death() -> void:
	death()


func _on_slime_death() -> void:
	death()
