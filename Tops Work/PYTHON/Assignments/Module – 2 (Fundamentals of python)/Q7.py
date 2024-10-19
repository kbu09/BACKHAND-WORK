#  Write a Python program to find whether a given number is even or odd,
# print out an appropriate message to the user. 

def chck_num(num):
    if num % 2 == 0:
        return "The number is even."
    else:
        return "The number is odd."

number = int(input("Enter a number: "))

print(chck_num(number))
