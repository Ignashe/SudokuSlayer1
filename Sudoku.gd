extends Node2D

var fila = 6
var columna = 6
var tamany = 40
var Panel_scene = preload("res://Escenes/Panel.tscn")
var arr = []
func _ready():
	dins_graella()
	dins_arr()
	fill_numbers()
	show()
	
func dins_graella():
	var distancia_x = 0
	var distancia_y = 0 
	for i in fila:
		distancia_x = 0
		distancia_y += 2
		if i % 2 == 0:
			distancia_y += 2
		for j in columna:
			distancia_x += 2
			if j % 3 == 0:
				distancia_x += 2
			var panel = Panel_scene.instance()
			panel.rect_position = Vector2(tamany * j,tamany * i) + Vector2(distancia_x, distancia_y)
			add_child(panel)

func dins_arr():
	for i in fila:
		for j in columna:
			arr.append(null)
			
func show():
	var panels = get_children()
	for i in fila:
		for j in columna:
			var numero = arr[i * fila + j]
			if numero:
				panels[i * fila + j].get_node("Label").text = str(numero)
				
func fill_numbers():
	for n in 3:
		var numeros = [ 1, 2, 3, 4, 5, 6]
		numeros.shuffle()
		for i in range(n * 3, n * 3 + 3):
			for j in range(n * 3, n * 2 + 2):
				arr[i * fila + j] = numeros.pop_back()
