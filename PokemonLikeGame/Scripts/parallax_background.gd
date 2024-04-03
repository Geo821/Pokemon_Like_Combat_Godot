extends ParallaxBackground

func _process(delta):
	scroll_offset.x += 40 * delta
	if Input.is_action_just_pressed("esc"):
		get_tree().quit()


