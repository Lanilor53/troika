extends KinematicBody2D

var speed = 10
var oldpos = Vector2.ZERO

#func _process(delta):
	# Speed must be in gui bar

func _physics_process(delta):
	var mousePos = get_local_mouse_position()
	# Position must be slightly to the left
	if pow(mousePos.x,2)+pow(mousePos.y,2)>10:
		move_and_slide(mousePos.normalized()*speed*100)

func _on_Hurtbox_area_entered(area):
	if area.name == "Hitbox":
		print("Got hit")
