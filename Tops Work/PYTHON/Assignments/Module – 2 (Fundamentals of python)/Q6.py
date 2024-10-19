# Write python program that swap two number with temp variable and without temp variable. 


# Function to swap two numbers using a temporary variable
def swap_with_temp(a, b):
    temp = a
    a = b
    b = temp
    return a, b

a = int(input("Enter first number: "))
b = int(input("Enter second number: "))
a, b = swap_with_temp(a, b)
print("After swapping with temp: first =", a, ", second =", b)



# Function to swap two numbers without using a temporary variable
def swap_without_temp(a, b):
    a, b = b, a  
    return a, b
a = int(input("Enter first number: "))
b = int(input("Enter second number: "))
a, b = swap_without_temp(a, b)
print("After swapping without temp: first =", a, ", second =", b)
