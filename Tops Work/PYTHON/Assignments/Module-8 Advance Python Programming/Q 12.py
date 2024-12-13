#  Write a Python program to handle exceptions in a simple calculator (division by zero, invalid
# input).


def calculator():
    try:
        # Get input from the user
        num1 = float(input("Enter the first number: "))
        num2 = float(input("Enter the second number: "))
        operation = input("Enter the operation (+, -, *, /): ").strip()

        # Perform the operation
        if operation == '+':
            result = num1 + num2
        elif operation == '-':
            result = num1 - num2
        elif operation == '*':
            result = num1 * num2
        elif operation == '/':
            if num2 == 0:
                raise ZeroDivisionError("Division by zero is not allowed.")
            result = num1 / num2
        else:
            raise ValueError("Invalid operation. Please enter one of +, -, *, or /.")

        # Display the result
        print(f"The result is: {result}")

    except ValueError as ve:
        print(f"Invalid input: {ve}")
    except ZeroDivisionError as zde:
        print(f"Error: {zde}")
    except Exception as e:
        print(f"An unexpected error occurred: {e}")

def main():
    calculator()

main()


