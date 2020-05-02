extends Control

onready var gui = get_parent()
onready var town = gui.get_parent()
signal ShopButton_pressed

func _ready():
	set_buttons_text()
	connect("ShopButton_pressed",gui,"_on_GUI_Town_ShopButton_pressed")

func _on_Road1Button_pressed():
	town.get_parent().change_to_road(town.road_1)

func _on_Road2Button_pressed():
	town.get_parent().change_to_road(town.road_2)

func _on_Town_town_loaded():
	set_buttons_text()

func set_buttons_text():
	$Road1Button.text = "Road 1 (%s)" % town.road_1
	$Road2Button.text = "Road 2 (%s)" % town.road_2




func _on_ShopButton_pressed():
	emit_signal("ShopButton_pressed")
