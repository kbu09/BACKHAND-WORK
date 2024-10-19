# Write a Python program to check if a number is positive, negative or  zero

def numbers(num):
    if num > 0:
        return "The number is positive."
    elif num < 0:
        return "The number is negative."
    else:
        return "The number is zero."

number = float(input("Enter a number: "))
result = numbers(number)
print(result)
