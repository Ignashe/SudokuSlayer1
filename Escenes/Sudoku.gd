extends Node2D

var fila = 9
var columna = 9
var tamany = 40
var arr = []
var sudoku = []
var sudoku_resolt 

func crea_sudoku():
	dins_arr()
	fill_numbers()
	_eliminar_num()
	set_arr()
	return sudoku


func dins_arr():
	for i in fila:
		for j in columna:
			arr.append(null)
	for i in fila:
		for j in columna:
			var numero = arr[i * fila + j]
				
func fill_numbers():
	for n in 3:
		var numeros = [ 1, 2, 3, 4, 5, 6, 7, 8, 9]
		randomize()
		numeros.shuffle()
		for i in range(n * 3, n * 3 + 3):
			for j in range(n * 3, n * 3 + 3):
				arr[i * fila + j] = numeros.pop_back()
	fill_buits(arr)
	sudoku_resolt = arr.duplicate()
	
func fill_buits(list):
	var find_null = list.find(null)

	if find_null == -1:
		return true

	var i = find_null / fila
	var j = find_null % columna

	var candidats = get_numeros_candidats(i, j)

	if !candidats:
		return false
	var fill

	while candidats:
		fill = candidats.pop_back()
		list[i * fila + j] = fill
		if fill_buits(list):
			return true
		else:
			list[i * fila + j] = null

func get_numeros_candidats(i , j):
	var numeros = [ 1, 2, 3, 4, 5, 6, 7, 8, 9]
	for numero in get_fila_numbers(i):
		numeros.erase(numero)
	for numero in get_columna_numbers(j):
		numeros.erase(numero)
	for numero in get_area_numbers(i ,j):
		numeros.erase(numero)
	return numeros

func get_fila_numbers(i):
	var resolucio = []
	for j in columna:
		var numero = arr[i * fila + j]
		if numero:
			resolucio.append(numero)
	return resolucio

func get_columna_numbers(j):
	var resolucio = []
	for i in fila:
		var numero = arr[i * fila + j]
		if numero:
			resolucio.append(numero)
	return resolucio

func get_area_numbers(i ,j):
	var distancia_i = i / 3 * 3
	var distancia_j = j / 3 * 3
	var resolucio = []
	for area_i in range(distancia_i, distancia_i + 3):
		for area_j in range(distancia_j, distancia_j + 3):
			var numero = arr[area_i * fila + area_j]
			if numero:
				resolucio.append(numero)
	return resolucio
func set_arr():
	for i in range(9):
		sudoku.append([])
		for j in range(9):
			sudoku[i].append(arr[i*9 + j])

func _eliminar_num():
	var posicions_quadrat = [0,1,2,9,10,11,18,19,20]
	randomize()
	var posicions_fila = [3,4,5,6,7,8]
	var x = 0
	posicions_quadrat.shuffle()
	posicions_fila.shuffle()
	randomize()
	var numero = arr[posicions_quadrat[0]] 
	var numero_2 = arr[posicions_fila[0]]
	for i in fila:
		for j in columna:
			var candidats = get_numeros_candidats(i, j)
			if candidats.empty():
				arr[i*fila+j] = null
	
	arr[posicions_quadrat[0]] = numero
	arr[posicions_fila[0]] = numero_2
	

