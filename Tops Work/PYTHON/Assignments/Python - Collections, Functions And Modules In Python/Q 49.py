# Write a Python function to check whether a number is in a given range


def num_rang(start,end):
    no = int(input("Enter any integer number: "))
    if no in range(start,end):
        print("Number is in a given range")
    else:
        print("Number is not in a given range")

num_rang(int(input("Enter start point: ")),int(input("Enter end point: ")))