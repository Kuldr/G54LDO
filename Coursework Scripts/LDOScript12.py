months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun"]
oils   = ["VEG1", "VEG2", "OIL1", "OIL2", "OIL3"]

for mi,m in enumerate(months):
    for oi,o in enumerate(oils):
        print("U" + m + o + " <= 250B" + m + o + "; ", end = '')
    print()
