# Write a Python program to check a list is empty or not.


inp = input("Enter elements for list: ")
ele = inp.split()
if len(ele) == 0:
    print("List is empty")
else:
    print("List is not empty")
