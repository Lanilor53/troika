extends KinematicBody2D

var speed = 0.5


func _physics_process(delta):
	var mousePos = get_global_mouse_position()
	# Position must be slightly to the left
	#TODO: collision
	position = lerp(position,mousePos-Vector2(140,0),speed/10)
	
