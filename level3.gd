extends Node2D


func _ready():
	randomize()
	$fish/Sprite.scale *= 1.5
	$fish/CollisionShape2D.scale *= 1.5
	$fish.jump_speed = -800
	$fish.gravity = 3000
	$fish.speed = 400

# Called when the node enters the scene tree for the first time.

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
