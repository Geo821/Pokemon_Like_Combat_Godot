extends Control

@onready var hp_text = $hp_text
@onready var hit = %hit
var names
@onready var enemy_sprite = $enemy

func _ready():
	hit.visible = false
	
	enemy_sprite.play("enemy"+str(randi()%3+1))

func _process(_delta):
	if Global.hp <= 0:
		get_tree().quit()
	hp_text.text = "HP:"+str(Global.hp)

func _on_attack_pressed():
	var chance = randi() % 100 + 1
	if chance <= 30:
		hit.position.x = randi_range(700, 900)
		hit.position.y = randi_range(180, 250)
		hit.text = "MISS"
		hit.visible = true
		await get_tree().create_timer(1).timeout
		hit.visible = false
	elif chance > 90:
		hit.position.x = randi_range(700, 900)
		hit.position.y = randi_range(180, 250)
		hit.text = "CRIT"
		hit.visible = true
		await get_tree().create_timer(1).timeout
		hit.visible = false
		Global.hp -= 30
	else : 
		Global.hp -= 10


func _on_heal_pressed():
	if Global.hp != Global.hp_max:
		Global.hp += 100 - Global.hp
