extends HBoxContainer


func _on_Interfaz_health_change(health):
	$TextureProgress.value = health
	$contador/numero.value = health
