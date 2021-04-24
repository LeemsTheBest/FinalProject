extends AudioStreamPlayer


func _ready():
	pass # Replace with function body.


func play_music():
	if playing:
		pass
	elif not playing:
		playing = true
	else:
		playing = false



func _on_AudioStreamPlayer_finished():
	play_music()
