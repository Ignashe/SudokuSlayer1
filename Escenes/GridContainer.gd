extends GridContainer

var files = [] 
var x = 0
var y = 0
func _ready():
	var caselles = get_children()
#	for i in caselles:
##		print(i.name)
	genera_sudoku()
	omplir_numeros()
func genera_sudoku():	
	for i in range(4):
		files.append([])
		for j in range(4):
			files[i].append(0)
	

func omplir_numeros():
	for i in files:
		randomize()
		var numeros = [1,2,3,4]
		var posicions = [0,1,2,3]
		var primer_numero = numeros[randi() % numeros.size()]
		var posicio = posicions[randi() % numeros.size()]
		numeros.erase(primer_numero)
		i[posicio] = primer_numero
	
	for i in files:
		for element in i:
			if element == 0:
				var numeros = [1,2,3,4]
				if 1 in i:
					numeros.erase(1) 
				if 2 in i:
					numeros.erase(2)
				if 3 in i:
					numeros.erase(3)
				if 4 in i:
					numeros.erase(4)
				i[x] = numeros[randi() % numeros.size()]
			print(x)
			if x < 4:
				x += 1
			if x > 3:
				x = 0
			
	print(files[0])
	print(files[1])
	print(files[2])
	print(files[3])
