extends VBoxContainer

export(String) var label
export(String) var bus_name
export(NodePath) var audio_stream_player_path

var audio_stream_player: AudioStreamPlayer

onready var play_button  = $HBoxContainer/Play
onready var stop_button  = $HBoxContainer/Play

func _ready():
	$Label.text = label
	audio_stream_player = get_node(audio_stream_player_path)



func _on_HSlider_value_changed(value):
	AudioServer.set_bus_volume_db(1, linear2db(value))
	AudioServer.set_bus_mute(1,value <0.01)

func _on_Play_pressed():
	audio_stream_player.play()
	play_button.disabled = true
	stop_button.disabled = false




func _on_Stop_pressed():
	audio_stream_player.stop()
	play_button.disabled = true
	stop_button.disabled = false


func _on_TextureButton_pressed():
	get_tree().change_scene("res://settings.tscn")
