extends Object

enum TOWN{
	Farmville,
	Stormwind,
	Copperforge
}

static func get_stats(town):
	if town == TOWN.Farmville:
		return {
			"road_1":TOWN.Stormwind,
			"road_2":TOWN.Copperforge,
			"shop_layout":{"cheese_buy":2, "cheese_sell":1}
		}
	elif town == TOWN.Storwind:
		return {
			"road_1":TOWN.Stormwind,
			"road_2":TOWN.Farmville,
			"shop_layout":{"cheese_buy":3, "cheese_sell":2}
		}
	elif town == TOWN.Copperforge:
		return {
			"road_1":TOWN.Stormwind,
			"road_2":TOWN.Farmville,
			"shop_layout":{"cheese_buy":2, "cheese_sell":1}
		}
