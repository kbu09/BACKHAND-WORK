// Write a program to concatenate the two strings using Operator Overloading

#include <iostream>
using namespace std;

class strr
{
private:
    string str; 

public:
    strr(string s = "") : str(s) {} 

    strr operator+(const strr &other)
    {
        return strr(str + other.str); 
    }

    // Function to display the string
    void display() const
    {
        cout << str;
    }
};

int main()
{
    strr str1("Hello, "); // First 
    strr str2("World!");  // Second 

    strr result = str1 + str2; // Concatenate the strings u

    result.display(); 
    return 0;
}
