# Write a Python program to convert degree to radian


import math

def degree_to_radian(degree):
    return degree * (round(math.pi,2) / 180)

degrees = float(input("Enter degree: "))
print(f"{degrees} degrees = {degree_to_radian(degrees):.4f} radians")
