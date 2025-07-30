extends State
class_name PathfindState

@onready var enemy:CharacterBody2D=$"../.."
@export var move_speed := 40.0
@export var AnimationEn:AnimationPlayer
@onready var SpriteSize:int=-15
@onready var Dash=$"../EnemyRatDash"

@onready var EnemySprite:Sprite2D=$"../../EnemySprites"

signal CurrDir(Direction)

func Enter():
	pass
	
func Update(_delta: float):
	#print("Moving")
	if !Dash.is_cooldown():
		Transitioned.emit(self,"EnemyRatDash")
	
	var dir = enemy.to_local(enemy.global_transform.origin).normalized()
	var direction = PlayerGlobal.Global_Position-enemy.global_position
	AnimationEn.play("Enemy_walk")
	enemy.position.x += ((PlayerGlobal.Global_Position.x+5)-enemy.position.x)/move_speed
	if direction.length()>100:
		if (PlayerGlobal.Global_Position.x)-enemy.position.x>-100:
			EnemySprite.flip_h=false
		else:
			EnemySprite.flip_h=true
	if direction.length()<120 and abs(enemy.position.y-PlayerGlobal.Global_Position.y)<100:
		Transitioned.emit(self,"EnemyRatAttack")

func _on_enemy_vision_area_body_exited(body):
	if body.is_in_group("Player"):
		#print("Transition")
		Transitioned.emit(self,"EnemyRatIdle")
