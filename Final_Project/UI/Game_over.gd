extends Control


func _ready():
	$Score.text = "Tests Avoided: " + str(Global.score)


func _on_Play_pressed():
	get_tree().change_scene("res://Game.tscn")
	Global.player_health = 100
	Global.score = 0


func _on_Quit_pressed():
	get_tree().quit()
