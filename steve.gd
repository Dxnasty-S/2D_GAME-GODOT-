extends KinematicBody2D

var _jump = -500
var _velocity = Vector2(0,0);
const _speed = 180
const _gravity = 20

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		_velocity.x = _speed
	
	if Input.is_action_pressed("ui_left"):
		_velocity.x = -_speed
		
	_velocity.y = _velocity.y + _gravity;

	
	if Input.is_action_pressed("jump") and is_on_floor():
		_velocity.y = _jump
	
	_velocity = move_and_slide(_velocity,Vector2.UP)
	
	_velocity.x = lerp(_velocity.x,0,0.1);
