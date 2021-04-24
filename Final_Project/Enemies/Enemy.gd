extends KinematicBody2D

var speed = 1.5
onready var Player_detect = $PlayerDetection
var aggro = false

var velocity = Vector2.ZERO

func _physics_process(delta):
	if aggro:
		look_at(Global.cur_player_instance.global_position)
		velocity = Vector2(speed,0).rotated(rotation)
		if position.distance_to(Global.cur_player_instance.global_position) > 5:
			self.global_position += velocity

func _on_PlayerDetection_body_entered(body):
	aggro = true

func _on_PlayerDetection_body_exited(body):
	aggro = false
