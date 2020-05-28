extends KinematicBody2D

const MOVE_SPEED = 300
const JUMP_FORCE = 1500
const GRAVITY = 50
const MAX_FALL_SPEED = 500

var y_velo = 0

func _physics_process(delta):
	var move_dir = 0
	
	if Input.is_action_pressed("direita"):
		move_dir += 1
		$sprite.flip_h = false
		$sprite.animation = "walk"	
	elif Input.is_action_pressed("esquerda"):
		move_dir -= 1
		$sprite.flip_h = true
		$sprite.animation = "walk"
	else:
		$sprite.animation = "idle"
		
	var no_chao = $RayD.is_colliding() or $RayE.is_colliding()
	
	if no_chao == false:
		$sprite.animation = "jump"
	
	move_and_slide(Vector2(move_dir * MOVE_SPEED,y_velo),Vector2(0, -1))
	
	var grounded = is_on_floor()
	y_velo += GRAVITY
	
	if grounded and Input.is_action_pressed("pular"):
		y_velo = -JUMP_FORCE
		
	if grounded and y_velo >= 0:
		y_velo = 5
		
	if y_velo > MAX_FALL_SPEED:
		y_velo = MAX_FALL_SPEED
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
