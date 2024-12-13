#  Write a Python program to calculate the area of a trapezoid


def trapezoid_area(base1, base2, height):
       return ((base1 + base2) / 2) * height

base1 = float(input("Enter the length of the first base1: "))
base2 = float(input("Enter the length of the second base2: "))
height = float(input("Enter the height: "))

area = trapezoid_area(base1, base2, height)
print(f"The area of the trapezoid is: {area}")

