// Write a program to find the max nub from given two nubs using friend function

#include <iostream>
using namespace std;

class nub
{
    int value;

public:
    nub(int v) : value(v) {} 
    friend void swap(nub &a, nub &b);

    void display() const
    {
        cout << value << endl;
    }
};

void swap(nub &a, nub &b)
{
    a.value = a.value + b.value;
    b.value = a.value - b.value;
    a.value = a.value - b.value;
}

int main()
{
    nub num1(10), num2(20); 
    cout << "Before Swap:" << endl;
    num1.display();
    num2.display();

    swap(num1, num2); 

    cout << "After Swap:" << endl;
    num1.display();
    num2.display();

    return 0;
}
