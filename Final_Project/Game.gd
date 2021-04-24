extends Node2D

var Enemy1 = load("res://Enemies/Enemy1.tscn")
var Player = load("res://Player/Player.tscn")
onready var player_camera = get_node("/root/Game/Camera2D")

func _ready():
	var Player_inst = Player.instance()
	Player_inst.global_position = player_camera.global_position
	Global.cur_player_instance = Player_inst
	add_child(Player_inst)

func _physics_process(delta):
	if (Global.num_enemies < Global.max_enemies):
		var Enemy_inst = Enemy1.instance()
		Enemy_inst.position.x = 350
		Enemy_inst.position.y = 350
		add_child(Enemy_inst)
		Global.num_enemies += 1
