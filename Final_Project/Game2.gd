extends Node2D


var Enemy1 = load("res://Enemies/Enemy1.tscn")
var Player = load("res://Player/Player2.tscn")
onready var player_camera = get_node("/root/Game/Camera2D")

func _ready():
	var Player_inst = Player.instance()
	Player_inst.global_position = player_camera.global_position
	Global.cur_player_instance = Player_inst
	add_child(Player_inst)
	Global.reset()
	get_node("/root/Game/UI/Score").text = "Score: " +str(Global.score)


func _on_Timer_timeout():
	var Enemy_inst = Global.cur_enemy.instance()
	Enemy_inst.position.x = -455
	Enemy_inst.position.y = 1622
	add_child(Enemy_inst)
	Global.num_enemies += 1
	Enemy_inst = Global.cur_enemy.instance()
	Enemy_inst.position.x = 3575
	Enemy_inst.position.y = 1600
	add_child(Enemy_inst)
	Global.num_enemies += 1
	Enemy_inst = Global.cur_enemy.instance()
	Enemy_inst.position.x = 7537 
	Enemy_inst.position.y = 1542
	add_child(Enemy_inst)
	Global.num_enemies += 1
	Enemy_inst = Global.cur_enemy.instance()
	Enemy_inst.position.x = 6515
	Enemy_inst.position.y = 4300
	add_child(Enemy_inst)
	Global.num_enemies += 1
	Enemy_inst = Global.cur_enemy.instance()
	Enemy_inst.position.x = 2536
	Enemy_inst.position.y = 6000
	add_child(Enemy_inst)
	Global.num_enemies += 1
	Enemy_inst = Global.cur_enemy.instance()
	Enemy_inst.position.x = 7580
	Enemy_inst.position.y = 7000
	add_child(Enemy_inst)
	Global.num_enemies += 1
	Enemy_inst = Global.cur_enemy.instance()
	Enemy_inst.position.x = 15600
	Enemy_inst.position.y = 7000
	add_child(Enemy_inst)
	Global.num_enemies += 1
