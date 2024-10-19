// Write a program of to swap the two values using templates

#include <iostream>
using namespace std;

template <class K>
int swap_numbers(K &x, K &y)
{
    K b;
    b = x;
    x = y;
    y = b;
    return 0;
}

int main()
{
    int a, b;

    cout << " Enter the Two numbers for Swapping : ";
    cin >> a >> b;

    cout << "===========================================" << endl;
    cout << "Before swapping: Number A = " << a << endl
    << "Number B = " << b << endl;

    cout << "===========================================" << endl;
    swap_numbers(a, b);
    cout << "After Swappinf " << endl
         << "Number A =" << a << endl
         << "Number B= " << b << endl;

    return 0;
}