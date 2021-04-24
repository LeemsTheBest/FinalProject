extends ProgressBar
onready var player = get_node("/root/Game/Player")

func _physics_process(_delta):
	value = player.Health
