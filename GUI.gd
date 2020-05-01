extends Control

signal speed_changed(speed)

func _on_PlayerCart_speed_changed(speed):
	emit_signal("speed_changed",speed)
