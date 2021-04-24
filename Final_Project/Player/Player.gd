extends KinematicBody2D

#signal player_fired_bullet(bullet,position,direction)

var velocity = Vector2.ZERO
var speed = 0.5
var max_speed = 6
var timer = null
var bullet_delay = 0.25
var can_shoot = true
onready var end_of_gun = $Endofgun
onready var animation_player = $AnimationPlayer

var Bullet1 = load("res://Bullets/Bullet1.tscn")
onready var audio_player = $AudioStreamPlayer2D


func _ready():
	#Instantiating timer signal to the length of bullet delay and allowing
	#it to run only once per shoot input.
	#Connecting timer
	timer = Timer.new()
	timer.set_one_shot(true)
	timer.set_wait_time(bullet_delay)
	timer.connect("timeout",self,"on_timeout_complete")
	add_child(timer)
	
func _physics_process(delta):
	
	var input_vector = Vector2.ZERO
	if Input.is_action_pressed("left"):
		input_vector += Vector2(-1,0)
	if Input.is_action_pressed("right"):
		input_vector += Vector2(1,0)
	if Input.is_action_pressed("up"):
		input_vector += Vector2(0,-1)
	if Input.is_action_pressed("down"):
		input_vector += Vector2(0,1)
	
	input_vector = input_vector.normalized()
	move_and_collide(input_vector*max_speed, delta)
	#Player aim
	look_at(get_global_mouse_position())
	#Player shoot
	if (Input.is_action_pressed("shoot") &&can_shoot):
	#Could be in shoot function like other play scripts
		shoot()
		timer.start()
		
	return input_vector
	 
func on_timeout_complete():
	can_shoot = true	
	
	

	
func take_damage(damage):
	Global.player_health -= damage
	if Global.player_health <= 0:
		queue_free()
		get_tree().change_scene("res://Game2.tscn")
		
func shoot():
	audio_player.play()
	can_shoot = false
	var bullet1_inst = Bullet1.instance()
		#add_child(bullet1_inst)
	
	var target = get_global_mouse_position()
	bullet1_inst.global_position = end_of_gun.global_position
	var direction_to_mouse = end_of_gun.global_position.direction_to(target).normalized()
	bullet1_inst.set_direction(direction_to_mouse)
	bullet1_inst.global_rotation = end_of_gun.global_rotation +PI/2
	get_tree().get_root().call_deferred("add_child",bullet1_inst)
	animation_player.play("MuzzleFlash")
