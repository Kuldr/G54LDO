months  = ["Jan", "Feb", "Mar", "Apr", "May", "Jun"]
vegOils = ["VEG1", "VEG2"]
nonOils = ["OIL1", "OIL2", "OIL3"]

for mi,m in enumerate(months):
    for oi,o in enumerate(vegOils):
        print("U" + m + o + "+ ", end = '')
    print(" <= 200;")
    for oi,o in enumerate(nonOils):
        print("U" + m + o + "+ ", end = '')
    print(" <= 250;")
