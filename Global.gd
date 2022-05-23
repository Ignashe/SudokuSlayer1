extends Node

var errors = 0
var vida = 50
var maxima_vida_enemic = Sudoku.buits 
var vida_enemic = 20
func _update_maxim_vida():
	print(maxima_vida_enemic)
	get_tree().get_nodes_in_group('VidaEnemic')[0].max_value = maxima_vida_enemic

func update_vida():
	get_tree().get_nodes_in_group('Vida')[0].value = vida
func update_vida_enemic():
	get_tree().get_nodes_in_group('VidaEnemic')[0].value = vida_enemic
