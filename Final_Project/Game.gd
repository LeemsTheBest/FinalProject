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
