extends Control


func _ready():
	pass
func _on_Play_pressed():
	get_tree().change_scene("res://Game.tscn")
	Global.score = 0
	


func _on_Quit_pressed():
	get_tree().quit()
