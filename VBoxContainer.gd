extends VBoxContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Opcions_pressed():
	get_tree().change_scene("res://settings.tscn")


func _on_sortir_pressed():
	get_tree().quit()


func _on_TextureButton2_pressed():
	get_tree().quit()



func _on_TextureButton3_pressed():
	get_tree().quit()


func _on_start_game_pressed():
	get_tree().change_scene("res://Overworld.tscn")


func _on_TextureButton_pressed():
	get_tree().quit()
