# Write a Python program to get the Fibonacci series of given range. 

def fib(n):
    a, b = 0, 1
    for _ in range(n):
        print(a, end=' ')
        a, b = b, a + b

num = int(input("Enter the number: "))
fib(num)
