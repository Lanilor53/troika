extends KinematicBody2D

var speed = 10
var maxSpeed = 50
var minSpeed = 1
var oldpos = Vector2.ZERO
var progress = 0
var targetProgress = 7500

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
		change_speed(-20)

func change_speed(mod):
	if mod > 0:
		if speed+mod <= maxSpeed:
			speed += mod
		else:
			speed = maxSpeed
		emit_signal("speed_changed",speed)
	elif mod < 0:
		if speed+mod >= minSpeed:
			speed += mod
		else:
			speed = 0
		emit_signal("speed_changed",speed)


func _on_ProgressTimer_timeout():
	progress += speed
	print("[PROGRESS] %s" % progress)
	if progress >= targetProgress:
		print("Priehali")
		# TODO: handle turns
		# Turn gives 3 second for player to choose a road by going up or down
		get_tree().change_scene("res://Town.tscn")
