extends Node2D

func _on_endtoliet_body_entered(body):
	if body == $fish:
		$splash.position = $fish.position
		$splash.emitting = true
