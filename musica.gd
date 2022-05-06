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
	var bus_idx = AudioServer.get_bus_index(bus_name)
	if value > $HSlider.min_value:
		AudioServer.set_bus_mute(bus_idx, false)
		AudioServer.set_bus_volume(bus_idx, true)
	else:
		AudioServer.set_bus_mute(bus_idx, true)

func _on_Button_pressed():
	audio_stream_player.play()
	play_button.disabled = true
	stop_button.disabled = false
