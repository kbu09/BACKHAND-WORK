#  Write a python program to sum of the first n positive integers. 

def sum_num(n):
    return n * (n + 1) // 2 

n = int(input("Enter a positive num: "))
if n > 0:
    result = sum_num(n)
    print("The sum of the first", n, "positive num is:", result)
else:
    print("Please enter a positive num.")






