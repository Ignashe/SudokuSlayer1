extends KinematicBody2D
onready var animacio = get_node("Biker")
onready var timer = get_node('Temps animacions')
func _ready():
	pass
func _process(delta):
	var encert = Global.encert
	var error = Global.error	
	if encert == true:
		animacio.play('Attack')
		yield(get_tree().create_timer(5/4), 'timeout')
		Global.update_encert()
		Global.update_error()
	if error == true:
		animacio.play('Hurt')
		yield(get_tree().create_timer(5/2), 'timeout')
		Global.update_encert()
		Global.update_error()
	else:
		animacio.play('Idle')
	
