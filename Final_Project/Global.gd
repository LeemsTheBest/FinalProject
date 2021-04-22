extends Node2D


onready var Bullets = $Bullets
onready var player = $Bullets

func _ready():
	player.connect("player_fired_bullet",Bullets,"handle_bullets_spawned")
