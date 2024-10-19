// Write a program to find the multiplication values and the cubic values using inline function

#include <iostream>
using namespace std;

inline int square(int x)
{
    return x * x;
}

inline int cube(int x)
{
    return x * x * x;
}

int main()
{
    int number;

    // Input a number from the user
    cout << "Enter a number: ";
    cin >> number;

    // Display the square and cube of the number using inline functions
    cout << "Square of " << number << " is: " << square(number) << endl;
    cout << "Cube of " << number << " is: " << cube(number) << endl;

    return 0;
}
