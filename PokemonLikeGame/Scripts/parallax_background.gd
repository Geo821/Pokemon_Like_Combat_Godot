extends ParallaxBackground

func _process(delta):
	scroll_offset.x += 40 * delta
	if Input.is_action_just_pressed("esc"):
		get_tree().quit()


func _on_change_yoffset_timer_timeout():
	pass # Replace with function body.
