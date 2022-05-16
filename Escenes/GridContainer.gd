extends GridContainer


var sudoku = Sudoku.crea_sudoku()
var text = []
var correcte = false
var sudoku_escrit = []
var sudoku_resolt = Sudoku.sudoku_resolt
onready var timer = get_node('../Canvi de color')
var caselles_canviades = []

func _ready():
	timer.set_wait_time(1)
	_escriure()
	sudoku_escrit()
	
func _escriure():
	var panels = get_children()
	var x = 0
	while x < 81:
		for i in sudoku:
			for numero in i:
				if numero == null:
					panels[x].get_node("MarginContainer/Text").text = ''
				if numero != null:
					panels[x].get_node("MarginContainer/Text").text = str(numero)
				panels[x].get_node("MarginContainer/Text").fila = x % 9
				panels[x].get_node("MarginContainer/Text").columna = int(x / 9)
				x += 1
				
func sudoku_escrit():
	var panels = get_children()
	var x = 0
	while x < 81:
		sudoku_escrit.append(panels[x].get_node("MarginContainer/Text").text)
		x += 1
	
func _error(casella,color):
		color.modulate = Color(255,0,0)
		caselles_canviades.append(color)
		timer.start()
		
func _on_casella_canviada(fila, columna, n, casella, color):
#		print('He canviat (%d, %d)' % [fila, columna])
		var x = 0
		var resolucio = sudoku_resolt[columna*9+fila]
		var c = get_node(casella)
		if str(resolucio) != n:
			_error(casella,color)
		if str(resolucio) == n:
			c.set_text(n)
			sudoku_escrit[columna*9+fila] = n
			if sudoku_escrit:
				for numero in sudoku_escrit:
					if numero == '':
						x += 1
				if x == 0:
					print('SOLUCIONAT') 


func _on_Canvi_de_color_timeout():
	for casella_canviada in caselles_canviades:
		casella_canviada.modulate = Color(1,1,1)
