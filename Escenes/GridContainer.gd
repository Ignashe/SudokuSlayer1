extends GridContainer


var sudoku = Sudoku.crea_sudoku()
var text = []

func _ready():
	_escriure()
	
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

