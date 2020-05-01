extends KinematicBody2D

var speed = 10
var maxSpeed = 50
var minSpeed = 1
var oldpos = Vector2.ZERO
signal speed_changed(speed)

#func _process(delta):
	# Speed must be in gui bar

func _physics_process(delta):
	var mousePos = get_local_mouse_position()
	# Position must be slightly to the left
	if pow(mousePos.x,2)+pow(mousePos.y,2)>10:
		move_and_slide(mousePos.normalized()*1000)

func _on_Hurtbox_area_entered(area):
	if area.name == "Hitbox":
		print("Got hit")
		change_speed(-10)

func change_speed(mod):
	if mod > 0 and speed+mod <= maxSpeed:
		speed += mod
		emit_signal("speed_changed",speed)
	elif mod < 0 and speed+mod >= minSpeed:
		speed += mod
		emit_signal("speed_changed",speed)
