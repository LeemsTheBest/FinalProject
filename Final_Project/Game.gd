extends Node2D


var Enemy1 = load("res://Enemies/Enemy1.tscn")
var Player = load("res://Player/Player.tscn")
onready var player_camera = get_node("/root/Game/Camera2D")

func _ready():
	var Player_inst = Player.instance()
	Player_inst.global_position = player_camera.global_position
	Global.cur_player_instance = Player_inst
	add_child(Player_inst)
	get_node("/root/Game/UI/Score").text = "Score: " +str(Global.score)

func _on_Timer_timeout():
	var Enemy_inst = Global.cur_enemy.instance()
	Enemy_inst.position.x = -250
	Enemy_inst.position.y = 2688
	add_child(Enemy_inst)
	Global.num_enemies += 1
	Enemy_inst = Global.cur_enemy.instance()
	Enemy_inst.position.x = 1000
	Enemy_inst.position.y = 2700
	add_child(Enemy_inst)
	Global.num_enemies += 1
	Enemy_inst = Global.cur_enemy.instance()
	Enemy_inst.position.x = -2823
	Enemy_inst.position.y = 2015
	add_child(Enemy_inst)
	Global.num_enemies += 1
	Enemy_inst = Global.cur_enemy.instance()
	Enemy_inst.position.x = -2662
	Enemy_inst.position.y = 237
	add_child(Enemy_inst)
	Global.num_enemies += 1
	Enemy_inst = Global.cur_enemy.instance()
	Enemy_inst.position.x = 454 
	Enemy_inst.position.y = -2531
	add_child(Enemy_inst)
	Global.num_enemies += 1
	Enemy_inst = Global.cur_enemy.instance()
	Enemy_inst.position.x = 4170
	Enemy_inst.position.y = 3461
	add_child(Enemy_inst)
	Global.num_enemies += 1
	Enemy_inst = Global.cur_enemy.instance()
	Enemy_inst.position.x = 418 
	Enemy_inst.position.y = 6134
	add_child(Enemy_inst)
	Global.num_enemies += 1

