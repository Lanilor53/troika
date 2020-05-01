extends KinematicBody2D

var speed = 5


func _physics_process(delta):
	position += Vector2.LEFT*speed
	if position.x < -2000:
		print("deleted")
		queue_free()


func _on_Hitbox_area_entered(area):
	# No collision with other obstacles
	if area.name != "Hitbox":
		queue_free()
