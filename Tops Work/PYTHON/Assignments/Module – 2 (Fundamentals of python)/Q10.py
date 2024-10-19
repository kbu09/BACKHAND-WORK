# Write a Python program that will return true if the two given integer
# values are equal or their sum or difference is 5.

def number(a, b):
    if a == b:
        return True
    if (a + b) == 5:
        return True
    if (a - b) == 5 or (b - a) == 5: 
        return True
    return False

num1 = int(input("Enter first num: "))
num2 = int(input("Enter second num: "))

result = number(num1, num2)
print("Result:", result)
