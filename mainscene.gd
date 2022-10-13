extends Node2D

func _ready():
	pass 
func _on_final_body_entered(body):
	if body == $fish:
		$splash.position = $fish.position
		$splash.emitting = true
