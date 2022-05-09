extends GridContainer


var sudoku = Sudoku.crea_sudoku()
var text = []
var correcte = false
var sudoku_escrit = []


func _ready():
	print(sudoku)
	_escriure()
	correcte()
	
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
				x += 1

func correcte():
	var panels = get_children()
	var x = 0
	while x < 81:
		sudoku_escrit.append(panels[x].get_node("MarginContainer/Text").text)
		x += 1
	var files = 

	

