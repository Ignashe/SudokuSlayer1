extends Node2D

var fila = 9
var columna = 9
var tamany = 40
var arr = []
var sudoku = []


func crea_sudoku():
	dins_arr()
	fill_numbers()
	_eliminar_num()
	set_arr()
	resolucio()
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
	fill_buits()
	
func fill_buits():
	var find_null = arr.find(null)

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
		arr[i * fila + j] = fill
		if fill_buits():
			return true
		else:
			arr[i * fila + j] = null
func get_numeros_candidats(i , j):
	var numeros = [ 1, 2, 3, 4, 5, 6, 7 , 8, 9]
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
	print(arr)
	print('\n')
	for i in fila:
		for j in columna:
			var candidats = get_numeros_candidats(i, j)
			if candidats.empty():
				arr[i*fila+j] = null
func resolucio():
	print(arr)
	for i in fila:
		for j in columna:
			randomize()
			var candidats = get_numeros_candidats(i,j)
			candidats.shuffle()
			for numero in arr:
				if len(candidats) == 0:
					pass
				elif numero == null:
					arr[i*fila+j] = candidats[0]
	print('\n')
	print(arr)
