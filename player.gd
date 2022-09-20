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
