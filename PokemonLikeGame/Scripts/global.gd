extends Node

var hp = 100
var attack = 1
var enemy_health = 100
var defence = 20
var hp_max=100

var next_scene : String
var can_change_scene = false
var enemy_fight : String
var enemy_dead = [1,1,1]
func _process(delta):
	if can_change_scene:
		if next_scene == "battle_scene":
			get_tree().change_scene_to_file("res://Scenes/main.tscn")
			can_change_scene = false
