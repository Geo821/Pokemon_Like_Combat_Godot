extends Control

@onready var hp_text = $hp_text
@onready var miss = %miss
func _ready():
	miss.visible = false

func _process(_delta):
	hp_text.text = str(Global.hp)
	if Global.hp == 0:
		get_tree().quit()

func _on_attack_pressed():
	if (randi() % 10 + 1) > 3:
		Global.hp -= 10
	else : 
		miss.position.x = randi_range(700, 900)
		miss.position.y = randi_range(180, 250)
		miss.add_theme_color_override("font_color",Color("coral"))
		miss.visible = true
		await get_tree().create_timer(1).timeout
		miss.visible = false
	


func _on_heal_pressed():
	if Global.hp != Global.hp_max:
		Global.hp += 100 - Global.hp
