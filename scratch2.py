hmp = {"a": 1, "b": 2}
if 2 in hmp:
    print("Searches values as well")
else:
    print("Only searches keys")

print(list(hmp.items()))
