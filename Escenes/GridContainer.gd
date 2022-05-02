extends GridContainer


var sudoku = Sudoku.crea_sudoku()
func _ready():
	_escriure()

func _escriure():
	var panels = get_children()
	var x = 0
	while x < 81:
		for i in sudoku:
			for numero in i:
				panels[x].get_node("MarginContainer/Text").text = str(numero)
				x += 1




	
	
