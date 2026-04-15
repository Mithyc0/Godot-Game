extends Area2D

# @onready var game_manager: Node = $"../../GameManager"
# Now its a unique name
@onready var game_manager: Node = %GameManager

func _on_body_entered(body: Node2D) -> void:
	
	queue_free()
	pass # Replace with function body.
