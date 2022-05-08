extends GridContainer


var sudoku = Sudoku.crea_sudoku()
var text = []
var correcte = false
var numero
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

func correcte():
	if Input.is_action_just_pressed("1"):
		numero = 1
	if Input.is_action_just_pressed("2"):
		numero = 2
	if Input.is_action_just_pressed("3"):
		numero = 3
	if Input.is_action_just_pressed("4"):
		numero = 4
	if Input.is_action_just_pressed("5"):
		numero = 5
	if Input.is_action_just_pressed("6"):
		numero = 6
	if Input.is_action_just_pressed("7"):
		numero = 7
	if Input.is_action_just_pressed("8"):
		numero = 8
	if Input.is_action_just_pressed("9"):
		numero = 9	 
