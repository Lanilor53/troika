extends Node2D

onready var rockScene = load("res://Rock.tscn")
onready var rightBorder = get_parent().get_node("RightBorder")
onready var timer = $Timer

func spawn_obstacle():
	var newObstacle = rockScene.instance()
	# -320 - +500
	if randf()>0.5:
		newObstacle.position = rightBorder.position+Vector2.UP*(randi()%500)
	else:
		newObstacle.position = rightBorder.position-Vector2.UP*(randi()%320)
	add_child(newObstacle)
	randomize_timeout()

func randomize_timeout():
	if randf() < 0.4:
		timer.wait_time = 3
	else:
		timer.wait_time = randi()%2+1
