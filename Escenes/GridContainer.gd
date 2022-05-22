extends GridContainer


var sudoku = Sudoku.crea_sudoku()
var text = []
var correcte = false
var sudoku_escrit = []
var sudoku_resolt = Sudoku.sudoku_resolt
onready var timer = get_node('../Canvi de color')
onready var timer_resposta = get_node('../Temps de resposta')
onready var text_temps = get_tree().get_nodes_in_group('Temps')[0]
var caselles_canviades = []
var timer_on = false
var time = 15


func _ready():
	timer_resposta.set_wait_time(15)
	timer_resposta.start()
	timer_on = true
	timer.set_wait_time(0.25)
	Global.update_vida()
	Global.update_vida_enemic()
	
	
	_escriure()
	sudoku_escrit()

func _process(delta):
	if(timer_on):
		time -= delta

	var segons = fmod(time,60)
	var mils = fmod(time,1)*100
	var text = str('%02d : %02d' % [segons,mils])
	
	text_temps.set_text(var2str(text))
	
	if Global.vida == 0:
		mort()
	if Global.vida_enemic == 0:
		guanyador()
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
		Global.vida -= 5
		Global.update_vida()
func mort():
	pass
func guanyador():
	pass
func _encert():
		time = 15
		Global.vida_enemic -= 2.5
		Global.update_vida_enemic()
		
func _on_casella_canviada(fila, columna, n, casella, color):
		var x = 0
		var resolucio = sudoku_resolt[columna*9+fila]
		var c = get_node(casella)
		if str(resolucio) != n:
			_error(casella,color)
		if str(resolucio) == n:
			c.set_text(n)
			sudoku_escrit[columna*9+fila] = n
			_encert()
			if sudoku_escrit:
				for numero in sudoku_escrit:
					if numero == '':
						x += 1
				if x == 0:
					self.modulate = Color(0,255,0)
					timer_on = false


func _on_Canvi_de_color_timeout():
	for casella_canviada in caselles_canviades:
		casella_canviada.modulate = Color(1,1,1)


func _on_Temps_de_resposta_timeout():
		Global.vida -= 5
		Global.update_vida()
		time = 15
		timer_resposta.start()
	
