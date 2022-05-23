extends KinematicBody2D
onready var animacio = get_node("Biker")
onready var timer = get_node('Temps animacions')
func _ready():
	pass
func _process(delta):
	var encert = Global.encert
	var error = Global.error	
	if encert == true:
		animacio.play('Attack3')
		yield(get_tree().create_timer(2), 'timeout')
		Global.update_encert()
		Global.update_error()
	if error == true:
		animacio.play('Hurt')
		yield(get_tree().create_timer(0.5), 'timeout')
		Global.update_encert()
		Global.update_error()
	else:
		animacio.play('Idle')
	
func aleatori():
	var list = ['Attack','Attack2','Attack3']
	randomize()
	list.shuffle()
	var x = list[0]
	print(x)
	return x
