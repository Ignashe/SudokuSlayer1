extends Node

var errors = 0
var vida = 30
var vida_enemic = 250
func _ready():
	pass 

func update_errors():
	get_tree().get_nodes_in_group('errors')[0].text = str(errors)
func update_vida():
	get_tree().get_nodes_in_group('Vida')[0].value = vida
func update_vida_enemic():
	get_tree().get_nodes_in_group('VidaEnemic')[0].value = vida_enemic
