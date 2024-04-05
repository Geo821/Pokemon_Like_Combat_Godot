extends CharacterBody2D

var speed = 200
func _physics_process(delta):
	var direction = Input.get_vector("move_left","move_right","move_up","move_down")
	if !Global.can_change_scene:
		self.visible = true
		velocity = direction * speed
	else:
		self.visible = false
		velocity = Vector2(0,0)
	move_and_slide()
	
