// WAP to create simple calculator using class
// Ans..

#include <iostream>
#include <iomanip>
using namespace std;

int main()
{
    int calc;
    int num1, num2;
    char opator;

    cout << "Enter two numbers with space: ";
    cin >> num1 >> num2;

    cout << "Enter operator (+, -, *, /): ";
    cin >> opator;

    if (opator == '+')
    {
        calc = num1 + num2;
        cout << "Addition" << setw(5) << calc << endl;
    }
    else if (opator == '-')
    {
        calc = num1 - num2;
        cout << "Substraction" << setw(5) << calc << endl;
    }
    else if (opator == '*')
    {
        calc = num1 * num2;
        cout << "multiply" << setw(5) << calc << endl;
    }
    else if (opator == '/')
    {
        calc = num1 / num2;
        cout << "Division" << setw(5) << calc << endl;
    }
    else
    {
        cout << "Invalid operator!" << endl;
    }

    return 0;
}