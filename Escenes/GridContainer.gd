extends GridContainer

var dict = {}
var caselles_nom = []
var num = []
func _ready():
	var sudoku = Sudoku.crea_sudoku()
	print(sudoku)
#	var caselles = get_children()
#	for i in caselles:
#		caselles_nom.append(i.name)
#
#	for i in sudoku:
#		for element in i:
#			num.append(element)
#	print(caselles_nom)
#	print(num)
#	for key in caselles_nom:
#		for value in num:
#			dict[key] = value
#			num.remove(value)
#	print(dict)
func _elimina_num():
	pass
