// Write a program of Addition, Subtraction, Division, Multiplication using constructor.
// Ans.

#include <iostream>
using namespace std;

class Calculator
{
private:
    float num1, num2;

public:
    // Constructor to initialize numbers and perform operations
    Calculator(float a, float b)
    {
        num1 = a;
        num2 = b;

        cout << "Addition: " << add() << endl;
        cout << "Subtraction: " << subtract() << endl;
        cout << "Multiplication: " << multiply() << endl;
        cout << "Division: " << divide() << endl;
    }

    float add()
    {
        return num1 + num2;
    }

    float subtract()
    {
        return num1 - num2;
    }

    float multiply()
    {
        return num1 * num2;
    }

    float divide()
    {
        if (num2 != 0)
            return num1 / num2;
        else
        {
            cout << "Error: Division by zero!" << endl;
            return 0;
        }
    }
};

int main()
{
    float a, b;

    cout << "Enter first number: ";
    cin >> a;
    cout << "Enter second number: ";
    cin >> b;

    Calculator calc(a, b);

    return 0;
}
