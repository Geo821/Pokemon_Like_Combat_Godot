extends Control

@onready var hp_text = $hp_text

func _process(delta):
	hp_text.text = str(Global.hp)

func _on_attack_pressed():
	Global.hp -= 1
	print (Global.hp)
