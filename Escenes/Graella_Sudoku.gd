extends Control

signal encert
signal error
signal mort_protagonista
signal victoria

func _on_GridContainer_encert():
	emit_signal("encert")


func _on_GridContainer_error():
	emit_signal("error")


func _on_GridContainer_mort_protagonista():
	emit_signal("mort_protagonista")


func _on_GridContainer_victoria():
	emit_signal("victoria")
