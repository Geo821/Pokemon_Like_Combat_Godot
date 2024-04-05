extends Control

@onready var hp_text = $hp_text
@onready var hit = %hit
@onready var enemy_sprite = $enemy
@onready var progress_bar = $ProgressBar
func _ready():
	hit.visible = false
	self.visible = false
	progress_bar.max_value = 100
func _process(_delta):
	progress_bar.value = Global.enemy_health
	if Global.can_change_scene:
		self.visible = true
	else:
		self.visible = false
	hp_text.text = "HP:"+str(Global.enemy_health)
	enemy_sprite.play(Global.enemy_fight)
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
		Global.enemy_health -= 30
	else : 
		Global.enemy_health -= 10


func _on_heal_pressed():
	if Global.hp != Global.hp_max:
		Global.hp += 100 - Global.hp
