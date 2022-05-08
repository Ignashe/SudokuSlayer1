extends Label

var ratoli = false

func _ready():
	pass
func _process(delta):
	escriure()
	
	
func escriure():
	if ratoli == true and text == '':
		if Input.is_action_just_pressed("1"):
			set_text('1')
		if Input.is_action_just_pressed("2"):
			set_text('2')
		if Input.is_action_just_pressed("3"):
			set_text('3')
		if Input.is_action_just_pressed("4"):
			set_text('4')
		if Input.is_action_just_pressed("5"):
			set_text('5')
		if Input.is_action_just_pressed("6"):
			set_text('6')
		if Input.is_action_just_pressed("7"):
			set_text('7')
		if Input.is_action_just_pressed("8"):
			set_text('8')
		if Input.is_action_just_pressed("9"):
			set_text('9')	
	

func _on_MarginContainer2_mouse_entered():
	
	ratoli = true
func _on_MarginContainer2_mouse_exited():
	
	ratoli = false
