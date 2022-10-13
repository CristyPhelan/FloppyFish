extends Node2D


func _ready():
	randomize()
	$fish/Sprite.scale *= 1.5
	$fish/CollisionShape2D.scale *= 1.5
	$fish.jump_speed = -800
	$fish.gravity = 3000
	$fish.speed = 400

	pass 
