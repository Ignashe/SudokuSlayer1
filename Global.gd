extends Node

var errors = 0
var vida = 50
var vida_enemic
var caselles 
	
#func update_panels(panels,n):
#	if y == 1:
#		caselles = panels

func _update_maxim_vida(buits):
	vida_enemic = buits
	get_tree().get_nodes_in_group('VidaEnemic')[0].set_max(buits)
	get_tree().get_nodes_in_group('VidaEnemic')[0].set_value(buits)
func update_vida():
	get_tree().get_nodes_in_group('Vida')[0].value = vida
func update_vida_enemic():
	get_tree().get_nodes_in_group('VidaEnemic')[0].value = vida_enemic

func _process(delta):
	if Input.is_action_pressed('esc'):
		get_tree().change_scene("res://settings.tscn")
