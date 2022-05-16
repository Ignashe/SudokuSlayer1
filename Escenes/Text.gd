extends Label

var ratoli = false
signal casella_canviada(i, j)
var fila
var columna

func _ready():
	connect("casella_canviada",get_node('../../..'),'_on_casella_canviada')
func _process(delta):
	escriure()
func escriure():
	if ratoli == true and text == '':
		for n in "123456789":
			if Input.is_action_just_pressed(n):
				var casella = get_path()
				var pare = get_parent()
				var pare_fills = pare.get_children()
				var color = pare_fills[0]
				emit_signal("casella_canviada", fila, columna, n, casella, color)
				

func _on_MarginContainer2_mouse_entered():
	
	ratoli = true
func _on_MarginContainer2_mouse_exited():
	
	ratoli = false
