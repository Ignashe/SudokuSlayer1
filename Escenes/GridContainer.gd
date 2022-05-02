extends GridContainer


var sudoku = Sudoku.crea_sudoku()
var text = []

func _ready():
	
#	_eliminar_num()
	_escriure()
	
func _escriure():
	var panels = get_children()
	var x = 0
	while x < 81:
		for i in sudoku:
			for numero in i:
				panels[x].get_node("MarginContainer/Text").text = str(numero)
				x += 1
func _eliminar_num():
	for i in sudoku:
		text.append(i)
	
	for j in text:
		var posibilitats = [0,1,2,3,4,5,6,7,8]
		randomize()
		for numero in j:
			posibilitats.shuffle()
			j[posibilitats[0]] = ''
