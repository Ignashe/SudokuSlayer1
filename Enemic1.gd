extends KinematicBody2D
onready var animacio = get_node("Punk")

func _ready():
	pass
func _process(delta):
	var encert = Global.encert
	var error = Global.error	
	if error == true:
		animacio.play('Attack3')
		yield(get_tree().create_timer(1.25), 'timeout')
		Global.update_encert()
		Global.update_error()
	if encert == true:
		yield(get_tree().create_timer(0.35), 'timeout')
		animacio.play('Hurt')
		yield(get_tree().create_timer(0.65), 'timeout')
		Global.update_encert()
		Global.update_error()
	else:
		animacio.play('Idle')
