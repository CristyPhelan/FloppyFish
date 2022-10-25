extends KinematicBody2D

var velocity = Vector2.ZERO
var speed = 250  # pixels/s
var gravity = 2000 # pix/s/s
var jump_speed = -700

func _physics_process(delta):
	velocity.y += gravity * delta
	velocity.x = Input.get_axis("ui_left", "ui_right") * speed
	if velocity.x > 0:
		transform.x.x = 1
	elif velocity.x < 0:
		transform.x.x = -1
	velocity = move_and_slide(velocity, Vector2.UP)
	if is_on_floor() and Input.is_action_just_pressed("ui_up"):
		velocity.y = jump_speed
#	if Input.is_action_pressed("crouch"):
#		transform.y.y = 0.5
#	if Input.is_action_just_released("crouch"):
#		transform.y.y = 1



#for level 1
func _on_final_body_entered(body):
	if body ==  self:
		yield(get_tree().create_timer(1.0), "timeout")
		get_tree().change_scene("res://scenes/congrats.tscn")
func _on_killbox_body_entered(body):
	if body == self:
		get_tree().change_scene("res://gameover.tscn")


#for level 2
func die():
	get_tree().change_scene("res://gameover2.tscn")
func _on_endpool_body_entered(body):
	if body == self:
		$CollisionShape2D.set_deferred("disabled", true)
		set_physics_process(false)
		yield(get_tree().create_timer(1.0), "timeout")
		get_tree().change_scene("res://congrats3.tscn")

#for level 3
func _on_killbox3_body_entered(body):
	if body == self:
		get_tree().change_scene("res://gameover3.tscn")

func _on_endtoliet_body_entered(body):
	if body == self:
		$CollisionShape2D.set_deferred("disabled", true)
		set_physics_process(false)
		yield(get_tree().create_timer(1.0), "timeout")
		get_tree().change_scene("res://scenes/congrats2.tscn")


func _on_Timer_timeout():
	var x = rand_range(1, 2.5)
	$Timer.wait_time = x
	$AnimationPlayer.play("flop")
