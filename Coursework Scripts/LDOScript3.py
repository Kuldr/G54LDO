months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun"]
oils   = ["VEG1", "VEG2", "OIL1", "OIL2", "OIL3"]

hardness = [8.8, 6.1, 2.0, 4.2, 5.0]

for mi,m in enumerate(months):
    for oi,o in enumerate(oils):
        print("+" + str(hardness[oi]) + "U" + m + o + " ", end = '')
    print("-6" + "C" + m + o + " <= 0;", end = '')
    print(" //Upper Bound of hardness in " + m)

    for oi,o in enumerate(oils):
        print("+" + str(hardness[oi]) + "U" + m + o + " ", end = '')
    print("-3" + "C" + m + o + " >= 0;", end = '')
    print(" //Lower Bound of hardness in " + m)
