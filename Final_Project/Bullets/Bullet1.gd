extends Area2D
var speed = 10
var direction = Vector2.ZERO
func _physics_process(_delta):
	if direction != Vector2.ZERO:
		var velocity = direction*speed
		global_position += velocity
	
func direction(direction):
	self.direction = direction
