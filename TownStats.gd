extends Object

# TODO: use enums

static func get_stats(town):
	if town == "Farmville":
		return {
			"road_1":"Stormwind",
			"road_2":"Copperforge",
			"shop_layout":{"cheese_buy":2, "cheese_sell":1}
		}
	elif town == "Stormwind":
		return {
			"road_1":"Farmville",
			"road_2":"Copperforge",
			"shop_layout":{"cheese_buy":3, "cheese_sell":2}
		}
	elif town == "Copperforge":
		return {
			"road_1":"Stormwind",
			"road_2":"Farmville",
			"shop_layout":{"cheese_buy":2, "cheese_sell":1}
		}
