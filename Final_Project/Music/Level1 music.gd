extends AudioStreamPlayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
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
