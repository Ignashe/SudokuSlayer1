extends Node

var errors = 0
var vida = 50
var vida_enemic = 50
func _ready():
	pass 

func update_vida():
	get_tree().get_nodes_in_group('Vida')[0].value = vida
func update_vida_enemic():
	get_tree().get_nodes_in_group('VidaEnemic')[0].value = vida_enemic
