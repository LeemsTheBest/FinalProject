extends Area2D
var speed = 20
var direction := Vector2.ZERO
var explosion = load("res://Bullets/Explosion.tscn")
var damage = 20
func _physics_process(_delta):
	if direction != Vector2.ZERO:
		var velocity = direction*speed
		global_position += velocity
	
func set_direction(direction):
	self.direction = direction
	



func _on_Bullet1_body_entered(body):
	var explosion_instance = explosion.instance()
	if body.has_method('take_damage'):
		body.take_damage(damage)
	explosion_instance.position = get_global_position()
	
	get_tree().get_root().add_child(explosion_instance)
	explosion_instance.playing = true
	queue_free()
	
