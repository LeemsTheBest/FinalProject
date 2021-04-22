extends KinematicBody2D

signal player_fired_bullet(bullet,position,direction)

var velocity = Vector2.ZERO
var speed = 0.5
var max_speed = 6
var bullet_speed = 2
onready var end_of_gun = $Endofgun

var Bullet1 = load("res://Bullets/Bullet1.tscn")

func _ready():
	pass
	
func _physics_process(_delta):
	#Player movement
	velocity += get_input()*speed
	var current_speed = velocity.length()
	position += velocity
	velocity = velocity.normalized() * clamp(current_speed, -max_speed, max_speed)
	velocity = move_and_slide(velocity, Vector2.UP, true)
	#Player aim
	look_at(get_global_mouse_position())
	#Player shoot
	if Input.is_action_just_pressed("shoot"):
		shoot1()

	
	
	
	
func get_input():
	var input_vector = Vector2.ZERO
	if Input.is_action_pressed("left"):
		input_vector += Vector2(-1,0)
	if Input.is_action_pressed("right"):
		input_vector += Vector2(1,0)
	if Input.is_action_pressed("up"):
		input_vector += Vector2(0,-1)
	if Input.is_action_pressed("down"):
		input_vector += Vector2(0,1)
	
	return input_vector
	
func shoot1():
	var bullet1_inst = Bullet1.instance()
	
	#bullet1_inst.global_position = end_of_gun.global_position
	var target = get_global_mouse_position()
	var direction_to_mouse = end_of_gun.global_position.direction_to(target).normalized()
	#bullet1_inst.set_direction(direction_to_mouse)
	emit_signal("player_fired_bullet", bullet1_inst,end_of_gun.position, direction_to_mouse)
