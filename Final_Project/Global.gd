extends Node

var Enemy1 = load("res://Enemies/Enemy1.tscn")
var player_health = 100
var num_enemies = 0
var max_enemies = 1
var cur_player_instance = null
var cur_enemy = Enemy1

var score = 0
var timer = 0
func update_score(s):
	score += s
	get_node("/root/Game/UI/Score").text = "Score: +str(score)"
	

	var t_m = floor(timer/60.0)
	var t_s = timer % 60
	var t = "Time: %02d" % t_m
	t += "%02d" % t_s
	get_node("root/Game/UI/Time").text = t

func reset():
	score = 0
	update_score(0)
func _input(_event):
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()

