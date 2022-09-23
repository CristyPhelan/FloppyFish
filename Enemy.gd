extends Area2D

export var speed = 150
var bullet

func spawn(pos, dir):
	position = pos
	rotation = dir.angle()
	
func _process(delta):
	position += transform.x * speed * delta

func _on_VisibilityNotifier2D_screen_exited():
	pass # Replace with function body.

func _on_Enemy_body_entered(body):
	if body.has_method("die"):
		body.die()

	 # Replace with function body.
