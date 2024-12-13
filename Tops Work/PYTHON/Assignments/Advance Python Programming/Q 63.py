#  Write a Python program to returns sum of all divisors of a number


def sum(num):
  
    sum_divisors = 0
    for i in range(1, num):
        if num % i == 0:
            sum_divisors += i
    return sum_divisors

number = int(input("Enter a number: "))
result = sum(number)
print(f"The sum of all divisors of {number} is: {result}")

    