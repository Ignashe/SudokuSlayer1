extends KinematicBody2D
onready var animacio = get_node("Biker")
func _ready():
	pass
func _process(delta):
	var encert = Global.encert
	var error = Global.error
	Global.update_encert()
	Global.update_error()	
	if encert == true:
		animacio.play('Attack')
	else:
		animacio.play('Idle')

