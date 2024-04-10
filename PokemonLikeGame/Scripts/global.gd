extends Node

var hp = 100
var attack = 1
var enemy_health = 100
var defence = 20
var hp_max=100
var damage = 10
var can_change_scene = false
var enemy_fight : String
func _process(delta):
	if Input.is_action_just_pressed("esc"):
		get_tree().quit()
