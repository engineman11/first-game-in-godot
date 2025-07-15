extends Area2D


signal death


func _on_body_entered(body):
	death.emit()
	body.get_node("CollisionShape2D").queue_free()
