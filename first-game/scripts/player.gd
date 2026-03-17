extends CharacterBody2D

var life = true

const SPEED = 130.0
const  JUMP_VELOCITY = -300.0
@onready var _animated_sprite = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_left", "move_right")
	
	# se não está no chão
	if not is_on_floor():
		velocity += get_gravity() * delta
		_animated_sprite.play("roll")
	# se há movimentação e está no chão
	elif direction:
		_animated_sprite.play("run")
	# se não há movimentação e está no chão
	else:
		_animated_sprite.play("idle")
	
	# Handle move.
	if direction:
		velocity.x = direction * SPEED
		_animated_sprite.flip_h = direction < 0 
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED) 
		
	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	move_and_slide()
