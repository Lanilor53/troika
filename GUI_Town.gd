extends Control

onready var town = get_parent()

func _ready():
	set_buttons_text()

func _on_Road1Button_pressed():
	town.get_parent().change_to_road(town.road_1)

func _on_Road2Button_pressed():
	town.get_parent().change_to_road(town.road_2)

func _on_Town_town_loaded():
	set_buttons_text()

func set_buttons_text():
	$Road1Button.text = "Road 1 (%s)" % town.road_1
	$Road2Button.text = "Road 2 (%s)" % town.road_2


