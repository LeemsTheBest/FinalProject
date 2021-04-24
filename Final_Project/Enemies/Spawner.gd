extends Node2D

func _ready():
	randomize()

func _physics_process(delta):
	if (Global.num_enemies < Global.max_enemies):
		var Enemy_inst = Global.cur_enemy.instance()
		Enemy_inst.position = self.position
		add_child(Enemy_inst)
		Global.num_enemies += 1
