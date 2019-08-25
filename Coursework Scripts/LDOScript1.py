months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun"]
oils   = ["VEG1", "VEG2", "OIL1", "OIL2", "OIL3"]

buyingPrice = [[110, 120, 130, 110, 115],
               [130, 130, 110,  90, 115],
               [110, 140, 130, 100,  95],
               [120, 110, 120, 120, 125],
               [100, 120, 150, 110, 105],
               [ 90, 100, 140,  80, 135]]

print("//Amount bought in each month (-ive as it decreases profit)")
for mi,m in enumerate(months):
    for oi,o in enumerate(oils):
        print("-" + str(buyingPrice[mi][oi]) + "P" + m + o + " ", end = '')
    print("//Bought in " + m)

print("//Amount stored in each month (-ive as it decreases profit)")
for mi,m in enumerate(months):
    for oi,o in enumerate(oils):
        print("-5" + "S" + m + o + " ", end = '')
    print("//Stored in " + m)

print("//Amount created in each month (+ive as it increases profit)")
for mi,m in enumerate(months):
    print("+150" + "C" + m + " ", end = '')
print(";")
