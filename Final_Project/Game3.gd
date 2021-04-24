extends Node2D


var Enemy1 = load("res://Enemies/Enemy1.tscn")
var Player = load("res://Player/Player3.tscn")
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
	Enemy_inst.position.x = 5770
	Enemy_inst.position.y = 1935
	add_child(Enemy_inst)
	Global.num_enemies += 1
	Enemy_inst = Global.cur_enemy.instance()
	Enemy_inst.position.x = 7550
	Enemy_inst.position.y = 1935
	add_child(Enemy_inst)
	Global.num_enemies += 1
	Enemy_inst = Global.cur_enemy.instance()
	Enemy_inst.position.x = 9575
	Enemy_inst.position.y = 1935
	add_child(Enemy_inst)
	Global.num_enemies += 1
	Enemy_inst = Global.cur_enemy.instance()
	Enemy_inst.position.x = 3575
	Enemy_inst.position.y = 1935
	add_child(Enemy_inst)
	Global.num_enemies += 1
	Enemy_inst = Global.cur_enemy.instance()
	Enemy_inst.position.x = 4700
	Enemy_inst.position.y = 4670
	add_child(Enemy_inst)
	Global.num_enemies += 1
	Enemy_inst = Global.cur_enemy.instance()
	Enemy_inst.position.x = 8550
	Enemy_inst.position.y = 4650
	add_child(Enemy_inst)
	Global.num_enemies += 1
	Enemy_inst = Global.cur_enemy.instance()
	Enemy_inst.position.x = 6610
	Enemy_inst.position.y = 5940
	add_child(Enemy_inst)
	Global.num_enemies += 1

