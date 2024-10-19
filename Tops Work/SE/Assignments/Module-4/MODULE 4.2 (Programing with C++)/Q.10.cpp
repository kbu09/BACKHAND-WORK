// Write a program to calculate the area of circle, rectangle and triangle using Function Overloading
//  Rectangle : Area *breadth
//  Triangle : ½ *Area *breadth
//  Circle : Pi *Area *Area

#include <iostream>
using namespace std;

class sh
{
public:
    double area(double length, double breadth)
    {
        return length * breadth;
    }

    double area(double base, double height, char triangle)
    {
        return 0.5 * base * height;
    }

    double area(double radius)
    {
        return 3.14159 * radius * radius;
    }
};

int main()
{
    sh shape;
    double length, breadth, base, height, radius;

    // Rectangle
    cout << "Enter length and breadth of rectangle: ";
    cin >> length >> breadth;
    cout << "Area of Rectangle: " << shape.area(length, breadth) << endl;

    // Triangle
    cout << "Enter base and height of triangle: ";
    cin >> base >> height;
    cout << "Area of Triangle: " << shape.area(base, height, 't') << endl;

    // Circle
    cout << "Enter radius of circle: ";
    cin >> radius;
    cout << "Area of Circle: " << shape.area(radius) << endl;

    return 0;
}
