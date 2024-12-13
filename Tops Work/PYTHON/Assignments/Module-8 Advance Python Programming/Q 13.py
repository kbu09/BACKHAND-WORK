
# Write a Python program to demonstrate handling multiple exceptions.


def abc():
    try:
        # Get input from the user
        num1 = input("Enter the first number: ")
        num2 = input("Enter the second number: ")

        # Convert inputs to float
        num1 = float(num1)
        num2 = float(num2)

        # Perform division
        result = num1 / num2
        print(f"The result of division is: {result}")

    except ValueError:
        print("Invalid input: Please enter number values.")
    except ZeroDivisionError:
        print("Error Division by zero is not allowed.")
    except Exception as e:
        print(f"An unexpected error occurred: {e}")

def main():
    abc()

main()

