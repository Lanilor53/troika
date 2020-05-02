extends Control

onready var gui = get_parent()
onready var town = gui.get_parent()
signal BackButton_pressed

func _ready():
	connect("BackButton_pressed",gui,"_on_GUI_Shop_BackButton_pressed")
func _on_BackButton_pressed():
	emit_signal("BackButton_pressed")
