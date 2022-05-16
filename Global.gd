extends Node

var errors = 0

func _ready():
	pass 

func update_errors():
	get_tree().get_nodes_in_group('errors')[0].text = str(errors)
