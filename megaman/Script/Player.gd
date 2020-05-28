extends KinematicBody2D

const MOVE_SPEED = 50

var y_velo = 0 
var move_dir = 0

func _physics_process(delta):
	
	if Input.is_action_pressed("ui_right"):
		move_dir += 1
		$AnimatedSprite.flip_h = false	
	
	if Input.is_action_pressed("ui_left"):
		move_dir -= 1
		$AnimatedSprite.flip_h = true	
	
	move_and_slide(Vector2(move_dir * MOVE_SPEED, y_velo), 
					Vector2(0, -1))
	
	
	
	
