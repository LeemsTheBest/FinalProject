extends Node2D



#Contains all the bullets spawned as children of the Bullets Node2D
func handle_bullets_spawned(bullet, position, direction):
	add_child(bullet)
	bullet.global_position = position
	bullet.set_direction(direction)
	
