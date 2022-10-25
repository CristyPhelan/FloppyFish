extends Node2D


func _ready():
	randomize()
#	$fish/Sprite.scale *= 1
#	$fish/CollisionShape2D.scale *= 1
	$fish.jump_speed = -600
	$fish.speed = 200
	$fish.gravity = 0

