extends ParallaxBackground

func _process(delta):
	scroll_offset.x += 40 * delta


func _on_change_yoffset_timer_timeout():
	pass # Replace with function body.
