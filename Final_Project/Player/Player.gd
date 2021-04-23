extends KinematicBody2D

var movespeed = 500


func _physics_process(_delta):
	var mover = Vector2()
	
	if Input.is_action_pressed("up"):
		mover.y -= 1
	if Input.is_action_pressed("down"):
		mover.y += 1
	if Input.is_action_pressed("left"):
		mover.x -= 1
	if Input.is_action_pressed("right"):
		mover.x += 1
	
	mover = mover.normalized()
	mover = move_and_slide(mover * movespeed)
	
