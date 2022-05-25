extends KinematicBody2D
const ACCELERATION = 500
const MAX_SPEED = 250
const FRICTION = 500

var velocity = Vector2.ZERO


func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()
	
	if Input.is_action_just_pressed("ui_right"):
		$AnimatedSprite.flip_h = false
	if Input.is_action_just_pressed("ui_left"):
		$AnimatedSprite.flip_h = true
	
	if input_vector != Vector2.ZERO:
		velocity = velocity.move_toward(input_vector * MAX_SPEED, ACCELERATION * delta)
		
	else:
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
	
	move_and_collide(velocity * delta)


func _on_Enemic_1_body_entered(body):
	get_tree().change_scene("res://Escenes/Combat.tscn")
