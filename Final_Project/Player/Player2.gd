extends KinematicBody2D



#signal player_fired_bullet(bullet,position,direction)

var velocity = Vector2.ZERO
var speed = 0.5
var max_speed = 4
var timer = null
var bullet_delay = 0.05
var can_shoot = true
onready var animation_player = $AnimationPlayer
onready var end_of_gun = $Endofgun
#onready var Bullets = get_node("/root/Game/Bullets")
var Bullet2 = load("res://Bullets/Bullet2.tscn")

func _ready():
	#Instantiating timer signal to the length of bullet delay and allowing
	#it to run only once per shoot input.
	#Connecting timer
	timer = Timer.new()
	#timer.set_one_shot(true)
	timer.set_wait_time(bullet_delay)
	timer.connect("timeout",self,"on_timeout_complete")
	add_child(timer)
func _physics_process(_delta):
	#Player movement
	velocity += get_input()*speed
	var current_speed = velocity.length()
	position += velocity
	velocity = velocity.normalized() * clamp(current_speed, -max_speed, max_speed)
	velocity = move_and_slide(velocity, Vector2.UP, true)
	#Player aim
	look_at(get_global_mouse_position())
	#Player shoot. Added a timer for gun so bullets can't be spammed
	#When input is pressed the can_shoot val turns false disallowing the gun to 
	#be fired again until timer is up.
	if (Input.is_action_pressed("shoot") && can_shoot):
		
		can_shoot = false
	#Instancing bullet into scene
		var bullet2_inst = Bullet2.instance()
		
	#All below are position and rotation lines to position the bullet at the end of 
	#the characters gun and make sure it is rotated properly.
	#The bullet is then added as a child in the scene
		var target = get_global_mouse_position()
		bullet2_inst.global_position = end_of_gun.global_position
		var direction_to_mouse = end_of_gun.global_position.direction_to(target).normalized()
		bullet2_inst.set_direction(direction_to_mouse)
		bullet2_inst.global_rotation = end_of_gun.global_rotation +PI/2
		
		get_tree().get_root().call_deferred("add_child",bullet2_inst)
		#Starts timer after bullet is fired to prevent shooting until timer is up
		timer.start()
		animation_player.play("Muzzle_Flash")

	
	
	
	
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
	
func on_timeout_complete():
	can_shoot = true
	
