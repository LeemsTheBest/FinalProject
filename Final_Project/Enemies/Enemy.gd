extends KinematicBody2D

var hp = 150
var speed = 100
onready var Player_detect = $PlayerDetection
var aggro = false
var damage = 25
var score = 1

var velocity = Vector2.ZERO

func _physics_process(delta):
	if aggro:
		look_at(Global.cur_player_instance.global_position)
		velocity = Vector2(speed,0).rotated(rotation)
		if position.distance_to(Global.cur_player_instance.global_position) > 5:
			velocity = move_and_slide(velocity)

func _on_PlayerDetection_body_entered(body):
	if body == Global.cur_player_instance:
		aggro = true

func take_damage(damage):
	hp -= damage
	aggro = true
	if (hp <= 0):
		queue_free()
		Global.num_enemies -= 1
		Global.update_score(score)

func _on_AttackRadius_body_entered(body):
	if body == Global.cur_player_instance:
		body.take_damage(damage)
