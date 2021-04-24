extends Camera2D


func _physics_process(_delta):
	var player = Global.cur_player_instance
	if player != null:
		position = player.position

