extends KinematicBody2D

var speed = 5
var speedMod = 0.5
var maxSpeed = 50
var minSpeed = 1
var oldpos = Vector2.ZERO
onready var sky = get_parent().get_node("bgstub/Sky")

func _process(delta):
	# TODO: cooldown
	# Cooldown must be in gui bar
	# Speed must be in gui bar too
	if Input.is_action_just_pressed("Speedup"):
		speedup(speedMod)
	elif Input.is_action_just_pressed("Slowdown"):
		slowdown(speedMod)

func _physics_process(delta):
	var mousePos = get_local_mouse_position()
	# Position must be slightly to the left
	#TODO: collision
	#lerp(position,mousePos-Vector2(140,0),speed/10)
	if(pow(mousePos.x,2)+pow(mousePos.y,2)>10):
		move_and_slide(mousePos.normalized()*speed*100)


func speedup(mod):
	if speed+mod <= maxSpeed:
		speed += mod
	print(speed)

func slowdown(mod):
	if speed-mod >= minSpeed:
		speed -= mod
	print(speed)
