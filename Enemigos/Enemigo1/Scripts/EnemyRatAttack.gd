extends State
class_name EnemyRatAttack

@onready var Entity=$"../.."
@export var PlayerAnimation:AnimationPlayer
@onready var EnemySprite:=$"../../EnemySprites"
@onready var AttackCollider:=$EnemyRatAttackHitbox/EnemyRatAttackCollider

var attack_damage := 10.0
var knockback_force := 100.0

func Enter():
	AttackCollider.position.x=91
	if EnemySprite.flip_h==true:
		print("ChangeSide")
		AttackCollider.position.x=-91
	PlayerAnimation.play("Enemy_attack")
	$EnemyRatAttackTimer.start()
	
func Update(_delta: float):
	pass

func _on_enemy_rat_attack_hitbox_area_entered(area):
	if area is HitboxComponente:
		var attack=Attack.new()
		attack.attack_damage=attack_damage
		attack.knockback_force=knockback_force
		attack.attack_position=Entity.global_position
		area.damage(attack)


func _on_enemy_rat_attack_timer_timeout():
	Transitioned.emit(self,"PathFindComponent")
