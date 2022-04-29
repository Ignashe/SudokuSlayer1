extends GridContainer

#var files = [] 
#var columnes = []
#var x = 0
#var y = 0
#func _ready():
#	var caselles = get_children()
##	for i in caselles:
###		print(i.name)
#	genera_sudoku()
#	omplir_numeros()
#func genera_sudoku():	
#	for i in range(4):
#		files.append([])
#		for j in range(4):
#			files[i].append(0)
#	for i in range(4):
#		columnes.append([])
#
#func omplir_numeros():
#	for i in files:
#		randomize()
#		var numeros = [1,2,3,4]
#		var posicions = [0,1,2,3]
#		var primer_numero = numeros[randi() % numeros.size()]
#		var posicio = posicions[randi() % numeros.size()]
#		numeros.erase(primer_numero)
#		i[posicio] = primer_numero
#	print('PRIMERS 4 NUMEROS')
#	print(files[0])
#	print(files[1])
#	print(files[2])
#	print(files[3])
#	print('\n')
#
#	for i in files:
#		for element in i:
#			var columnes = _columnes(files)
#			if element == 0:	
#				var numeros = [1,2,3,4]
#				for j in columnes:	
#					if 1 in i:
#						numeros.erase(1)
#					if 1 in j:
#						 numeros.erase(1)
#					if 2 in i:
#						numeros.erase(2)
#					if 2 in j:
#						numeros.erase(2)
#					if 3 in i:
#						numeros.erase(3)
#					if 3 in j:
#						numeros.erase(3)
#					if 4 in i:
#						numeros.erase(4)
#					if 4 in j:
#						numeros.erase(4)
#					if numeros.size() != 0:
#						i[x] = numeros[randi() % numeros.size()]
#			if x < 4:
#				x += 1
#			if x > 3:
#				x = 0
#			print(files[0])
#			print(files[1])
#			print(files[2])
#			print(files[3])
#			print('\n')
#
#func _columnes(files):
#	for i in files:
#		for j in columnes:	
#			j.append(i[y])
#			if y < 4:
#				y += 1
#			if y > 3:
#				y = 0
#	return columnes

