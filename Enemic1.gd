extends KinematicBody2D
onready var animacio = get_node("Punk")
var x = 'Attack'
signal final_animacio(animacio)


#func _on_Protagonista_final_animacio(animacio):
#	if animacio == 'Death':
#		pass


func _on_Sudoku_encert():
	animacio.play('Hurt')


func _on_Sudoku_error():
	var list = ['Attack','Attack2','Attack3']
	randomize()
	list.shuffle()
	x = list[0]
	animacio.play(x)


func _on_Punk_animation_finished():
	emit_signal("final_animacio", $Punk.animation)
	animacio.play('Idle')
	
	


func _on_Sudoku_victoria():
	animacio.play('Death')
	yield(get_tree().create_timer(2), 'timeout')
	get_tree().change_scene("res://victoria.tscn")
