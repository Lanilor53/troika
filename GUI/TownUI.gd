extends Control

onready var townGuiScene = preload("res://GUI/GUI_Town.tscn")
onready var shopGuiScene = preload("res://GUI/GUI_Shop.tscn")


func _on_GUI_Town_ShopButton_pressed():
	get_node("GUI_Town").queue_free()
	add_child(shopGuiScene.instance())

func _on_GUI_Shop_BackButton_pressed():
	get_node("GUI_Shop").queue_free()
	add_child(townGuiScene.instance())
