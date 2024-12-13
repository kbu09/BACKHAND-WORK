
# Write a Python function to check whether a number is perfect or not.


def is_perfect_number(num):
   
    if num <= 0:
        return False
    sum_of_divisors = sum([i for i in range(1, num) if num % i == 0])
    return sum_of_divisors == num

number = int(input("Enter a number to check if it's perfect: "))

if is_perfect_number(number):
    print(f"{number} is a perfect number.")
else:
    print(f"{number} is not a perfect number.")
