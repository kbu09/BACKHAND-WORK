// Write a program to Mathematic operation like Addition, Subtraction,
// Multiplication, Division Of two number using different parameters and
// Function Overloading

#include <iostream>
using namespace std;

double calculate(double a, double b, char operation)
{
    switch (operation)
    {
    case '+':
        return a + b; 
    case '-':
        return a - b;
    case '*':
        return a * b;  
    case '/':
        if (b != 0)
        {
            return a / b; 
        }
        else
        {
            cout << "Error: Division by zero!" << endl;
            return 0;
        }
    default:
        cout << "Invalid operation!" << endl;
        return 0;
    }
}

int main()
{
    double num1, num2; 
    char operation;    

    cout << "Enter two numbers: ";
    cin >> num1 >> num2;

    cout << "Enter operation (+, -, *, /): ";
    cin >> operation;

    double result = calculate(num1, num2, operation);
    cout << "Result: " << result << endl;

    return 0;
}
