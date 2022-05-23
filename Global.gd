extends Node

var errors = 0
var vida = 50
var vida_enemic
var encert = false
var error = false

	
func update_encert():
	encert = false
func update_error():
	error = false
func _update_maxim_vida(buits):
	vida_enemic = buits
	get_tree().get_nodes_in_group('VidaEnemic')[0].set_max(buits)
	get_tree().get_nodes_in_group('VidaEnemic')[0].set_value(buits)
	print(get_tree().get_nodes_in_group('VidaEnemic')[0].max_value)
func update_vida():
	get_tree().get_nodes_in_group('Vida')[0].value = vida
func update_vida_enemic():
	print(vida_enemic)
	get_tree().get_nodes_in_group('VidaEnemic')[0].value = vida_enemic
