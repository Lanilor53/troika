extends Control

signal speed_changed(speed)

func _on_PlayerCart_speed_changed(speed):
	emit_signal("speed_changed",speed)


func _on_MapButton_pressed():
	#TODO: instance map scene
	pass # Replace with function body.


func _on_CheatButton_pressed():
	get_parent().get_node("PlayerCart").progress = 99999
