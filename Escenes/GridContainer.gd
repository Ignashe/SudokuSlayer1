extends GridContainer

class_name Sudoku

const INITIAL_DOMAIN = [1,2,3,4,5,6,7,8,9]
const NROWS = 9
const NCOLS = 9
const SQR_SIZE = 3
var domains
var constraints
var sorted_cells
var rng

func _ready():
	randomize()
	rng = RandomNumberGenerator.new()
	sorted_cells = []
	domains = {}
	constraints = {}
	init()
	init_constraints()

func init():
	sorted_cells.clear()
	for x in range(NROWS):
		for y in range(NCOLS):
			domains[str(x) + str(y)] = INITIAL_DOMAIN.duplicate()
	
func init_constraints():
	for key in domains.keys():
		constraints[key] = []
		var row = key[0].to_int()
		var col = key[1].to_int()
		for x in range(NCOLS):
			if x != col:
				constraints.get(key).push_back(str(row) + str(x))
		for x in range(NROWS):
			if x != row:
				constraints.get(key).push_back(str(x) + str(col))
		var sqr_row = row / SQR_SIZE
		var sqr_col = col / SQR_SIZE
		for x in range(sqr_row * SQR_SIZE, ((sqr_row + 1) * SQR_SIZE)):
			if x != row:
				for y in range(sqr_col * SQR_SIZE, ((sqr_col + 1) * SQR_SIZE)):
					if y != col:
						constraints.get(key).push_back(str(x) + str(y))
	print(constraints)

