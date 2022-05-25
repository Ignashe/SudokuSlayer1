extends KinematicBody2D
onready var animacio = get_node("Punk")

func _ready():
	pass

func _on_Protagonista_final_animacio(animacio):
	if animacio == 'Death':
		pass


func _on_Sudoku_encert():
	animacio.play('Hurt')


func _on_Sudoku_error():
	var list = ['Attack','Attack2','Attack3']
	randomize()
	list.shuffle()
	var x = list[0]
	animacio.play(x)


func _on_Punk_animation_finished():
	animacio.play('Idle')
