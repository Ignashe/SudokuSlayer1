extends KinematicBody2D
onready var animacio = get_node("Biker")

signal final_animacio(animacio)


func _on_Sudoku_encert():
	var list = ['Attack','Attack2','Attack3']
	randomize()
	list.shuffle()
	var x = list[0]
	animacio.play(x)


func _on_Biker_animation_finished():
	emit_signal("final_animacio", $Biker.animation)
	animacio.play('Idle')


func _on_Sudoku_error():
	yield(get_tree().create_timer(1), 'timeout')
	animacio.play('Hurt')


func _on_Sudoku_mort_protagonista():
	animacio.play('Death')
	
