# Write a Python program to sum of three given integers. However, if two values are equal sum will be zero

def sum(a, b, c):
    if a == b or b == c or a == c:
        return 0
    return a + b + c
num1 = int(input("Enter first number: "))
num2 = int(input("Enter second number: "))
num3 = int(input("Enter third number: "))

result = sum(num1, num2, num3)
print("The result is:", result)

