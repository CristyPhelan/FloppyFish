extends Node

var EnemyScene = preload("res://Enemy.tscn")
var screensize

func _ready():
	randomize()
	$fish/Sprite.scale *= 0.6
	$fish/CollisionShape2D.scale *= 0.6
	$fish.jump_speed = -600
	$fish.speed = 200
	
func _process(delta):
	$Camera2D.position = $fish.position
	
func _on_Timer_timeout():
	var new_enemy = EnemyScene.instance()
	add_child(new_enemy)
	screensize = get_viewport().size
	var pos = Vector2(rand_range(0, screensize.x), 50)
	var direction = Vector2(1, 0).rotated(rand_range(PI/4, 3*PI/4))
	if direction.x < 0:
		new_enemy.get_node("Sprite").flip_v = true
	new_enemy.spawn(pos, direction)




