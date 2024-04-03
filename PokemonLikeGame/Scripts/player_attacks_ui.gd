extends Control

@onready var hp_text = $hp_text

func _process(delta):
	hp_text.text = str(Global.hp)
	if Global.hp == 0:
		get_tree().quit()

func _on_attack_pressed():
	Global.hp -= 10


func _on_heal_pressed():
	if Global.hp != Global.hp_max:
		Global.hp += 10
