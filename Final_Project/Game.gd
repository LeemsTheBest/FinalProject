extends Node2D

var Player = load("res://Player/Player.tscn")
onready var player_camera = get_node("/root/Game/Camera2D")

func _ready():
	var Player_inst = Player.instance()
	Player_inst.global_position = player_camera.global_position
	add_child(Player_inst)
