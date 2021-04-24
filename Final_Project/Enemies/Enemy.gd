extends Area2D

export (int) var speed = 1.5

var velocity = Vector2.ZERO

func _physics_process(delta):
	look_at(Global.cur_player_instance.global_position)
	velocity = Vector2(speed,0).rotated(rotation)
	if position.distance_to(Global.cur_player_instance.global_position) > 5:
		self.global_position += velocity
