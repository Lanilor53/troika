extends Node2D

var TownStats = preload("res://TownStats.gd")
var road_1 = "Stormwind"
var road_2 = "Copperforge"
var shop_layout = {"cheese_buy":2, "cheese_sell":1}
signal town_loaded()

func load_town(town):
	var stats = TownStats.get_stats(town)
	road_1 = stats["road_1"]
	road_2 = stats["road_2"]
	shop_layout = stats["shop_layout"]
	emit_signal("town_loaded")


