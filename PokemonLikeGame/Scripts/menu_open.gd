extends Control

func _ready():
	process_mode = Node.PROCESS_MODE_ALWAYS
	%Menu_Panel.visible = false

func _process(_delta):
	screen_size_stuff()
	if Input.is_action_just_pressed("esc"):
		if get_tree().paused == false:
			_on_menu_pressed()
		else:
			_on_resume_button_pressed()
	#volume_ui_stuff()
func _on_menu_pressed():
	if %Menu_Panel.visible:
		%Menu_Panel.visible = false
	else:
		%Menu_Panel.visible = true
		
		
	#if !get_tree().paused:
		#%Menu_Panel.visible = true
		##get_tree().paused = true
	#else:
		#%Menu_Panel.visible = false
		##get_tree().paused = false

func _on_resume_button_pressed():
	#get_tree().paused = false
	%Menu_Panel.visible = false
	

func _on_quit_button_pressed():
	#get_tree().paused = true
	#%Menu_Panel.visible = false
	get_tree().quit()


func _on_fullscreen_button_pressed():
	if DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
	else:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	
func screen_size_stuff():
	if Input.is_action_just_pressed("fullscreen"):
		if DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		else:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	if DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN:
		%fullscreen_text.text = "FULLSCREEN:ON"
	else: 
		%fullscreen_text.text = "FULLSCREEN:OFF"

