extends Node2D

var TownStats = preload("res://TownStats.gd")
var road_1 = ""
var road_2 = ""
var shop_layout = []

func load_town(town):
	var stats = TownStats.get_stats(town)
	road_1 = stats["road_1"]
	road_2 = stats["road_2"]
	shop_layout = stats["shop_layout"]


