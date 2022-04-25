extends GridContainer

var files = [] 


func _ready():
	var caselles = get_children()
	for i in caselles:
		print(i.name)
	genera_sudoku()
	omplir_numeros()
func genera_sudoku():	
	for i in range(4):
		files.append([])
		for j in range(4):
			files[i].append(0)
	print(files)

func omplir_numeros():
	for i in files:
		randomize()
		var numeros = [1,2,3,4]
		var posicions = [0,1,2,3]
		var primer_numero = numeros[randi() % numeros.size()]
		var posicio = posicions[randi() % numeros.size()]
		numeros.erase(primer_numero)
		i[posicio] = primer_numero
		print(numeros)
	print(files)
	

	
