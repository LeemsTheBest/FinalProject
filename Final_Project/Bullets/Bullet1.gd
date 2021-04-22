extends Area2D
var speed = 50
var direction := Vector2.ZERO
func _physics_process(_delta):
	if direction != Vector2.ZERO:
		var velocity = direction*speed
		global_position += velocity
	
func set_direction(direction):
	self.direction = direction
