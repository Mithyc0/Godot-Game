extends Area2D


func _on_body_entered(body: Node2D) -> void:
	body.move_local_x(-950)
	body.move_local_y(-30)
