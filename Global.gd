extends Node

var errors = 0
var vida = 100
func _ready():
	pass 

func update_errors():
	get_tree().get_nodes_in_group('errors')[0].text = str(errors)
func update_vida():
	get_tree().get_nodes_in_group('Vida')[0].value = vida
