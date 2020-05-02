extends Node2D

var roadScene = preload("res://Road.tscn")
var townScene = preload("res://Town.tscn")

func handle_destination_reached(dest):
	# TODO: crossroads system
	if dest.begins_with("road_"):
		change_to_road(dest)
	else:
		change_to_town(dest)

func change_to_road(dest):
	clear()
	add_child(roadScene.instance())
	var cart = get_node("Road/PlayerCart")
	# TODO: road length?
	cart.destination = dest

func change_to_town(town):
	clear()
	add_child(townScene.instance())
	get_node("Town").load_town(town)

func clear():
	for child in get_children():
		child.queue_free()
