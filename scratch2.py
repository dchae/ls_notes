# arr1 = ["a", "b", "c"]
# arr2 = arr1[0:]

# for i, char in enumerate(arr2):
#     arr2[i] = char.upper()

# print(arr1)
# print(arr2)


arr1 = [["a"], ["b"], ["c"]]
arr2 = arr1[0:]

for i, subarray in enumerate(arr2):
    arr2[i][0] = subarray[0].upper()

print(arr1)
print(arr2)
