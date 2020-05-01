extends KinematicBody2D

var speed = 0.5
var speedMod = 0.05
var maxSpeed = 1
var minSpeed = 0


func _process(delta):
	# TODO: cooldown
	# Cooldown must be in gui bar
	# Speed must be in gui bar too
	if Input.is_action_just_pressed("Speedup"):
		speedup(speedMod)
	elif Input.is_action_just_pressed("Slowdown"):
		slowdown(speedMod)

func _physics_process(delta):
	var mousePos = get_global_mouse_position()
	# Position must be slightly to the left
	#TODO: collision
	position = lerp(position,mousePos-Vector2(140,0),speed/10)
	
func speedup(mod):
	if speed+mod < maxSpeed:
		speed += mod
	print(speed)

func slowdown(mod):
	if speed-mod > minSpeed:
		speed -= mod
	print(speed)
