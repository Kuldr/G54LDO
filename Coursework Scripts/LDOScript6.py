months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun"]
oils   = ["VEG1", "VEG2", "OIL1", "OIL2", "OIL3"]

for mi,m in enumerate(months):
    for oi,o in enumerate(oils):
        print("+S" + months[mi-1] + o + " ", end = '')
        print("+P" + m + o + " ", end = '')
        print("-U" + m + o + " ", end = '')
        print("-S" + m + o + " ", end = '')
        print("= 0" + ";")
