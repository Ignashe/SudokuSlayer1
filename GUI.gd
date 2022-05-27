extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_OPCIONS_pressed():
	get_tree().change_scene("res://opcions.tscn")


func _on_SORTIR_pressed():
	get_tree().change_scene("res://MenuPrincipal.tscn")


func _on_CARREGAR_PARTIDA_pressed():
	get_tree().change_scene("res://Overworld.tscn")
	



func _on_NOVA_PARTIDA_pressed():
	get_tree().change_scene("res://controls.tscn")


func _on_Continuar_pressed():
	get_tree().change_scene("res://Overworld.tscn")
