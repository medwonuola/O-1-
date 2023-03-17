def how_much_water(water, load, clothes):
    r = 0.0
    if clothes > load:
        r = water * 1.1 ^ (clothes - load)
    if r > 2 * load:
        return "Too much clothes"
    elif r > load:
        return "Not enough clothes"
