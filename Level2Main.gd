extends Node

var EnemyScene = preload("res://Enemy.tscn")
var screensize

func _ready():
	randomize()
	
func _on_Timer_timeout():
	var new_enemy = EnemyScene.instance()
	add_child(new_enemy)
	screensize = get_viewport().size
	var pos = Vector2(rand_range(0, screensize.x), 50)
	var direction = Vector2(1, 0).rotated(rand_range(PI/4, 3*PI/4))
	if direction.x < 0:
		new_enemy.get_node("Sprite").flip_v = true
	new_enemy.spawn(pos, direction)


func _on_endpool_body_entered(body):
	pass # Replace with function body.
