extends Node2D

onready var rockScene = load("res://Rock.tscn")
onready var rightBorder = get_parent().get_node("RightBorder")
onready var timer = $Timer
var curSpeed = 10.0

func spawn_obstacle():
	var newObstacle = rockScene.instance()
	newObstacle.speed = curSpeed
	# -320 - +500
	if randf()>0.5:
		newObstacle.position = rightBorder.position+Vector2.UP*(randi()%500)
	else:
		newObstacle.position = rightBorder.position-Vector2.UP*(randi()%320)
	add_child(newObstacle)
	randomize_timeout()

func randomize_timeout():
	if randf() < 0.4:
		timer.wait_time = 3/curSpeed*10
	else:
		timer.wait_time = (randi()%2+1)/curSpeed*10
	print(timer.wait_time)


func _on_PlayerCart_speed_changed(speed):
	curSpeed = float(speed)
	for obstacle in get_children():
		if obstacle!=timer:
			obstacle.speed = curSpeed
