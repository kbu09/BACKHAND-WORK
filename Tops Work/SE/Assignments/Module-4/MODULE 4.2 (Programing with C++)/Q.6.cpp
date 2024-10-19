// Create a class person having members name and age.Derive a class student
//     having member percentage.Derive another class teacher having member
//         salary.Write necessary member function to initialize,
//     read and write data.Write also Main function(Multiple Inheritance)

#include <iostream>
using namespace std;


class Person
{
protected:
    string name;
    int age;

public:
    
    void inputData()
    {
        cout << "Enter name: ";
        cin >> name;
        cout << "Enter age: ";
        cin >> age;
    }

   
    void displayData() const
    {
        cout << "Name: " << name << endl;
        cout << "Age: " << age << endl;
    }
};


class Student : public Person
{
private:
    float percentage;

public:
  
    void inputData()
    {
        Person::inputData(); 
        cout << "Enter percentage: ";
        cin >> percentage;
    }

    // Function to display student data
    void displayData() const
    {
        Person::displayData(); 
        cout << "Percentage: " << percentage << "%" << endl;
    }
};

// Derived class Teacher from Person
class Teacher : public Person
{
private:
    float salary;

public:
    // Function to input teacher data
    void inputData()
    {
        Person::inputData(); 
        cout << "Enter salary: ";
        cin >> salary;
    }

    // Function to display teacher data
    void displayData() const
    {
        Person::displayData(); 
        cout << "Salary: Rs." << salary << endl;
    }
};

int main()
{
    Student student; // Create a student object
    Teacher teacher; // Create a teacher object

    cout << "=== Input Student Data ===\n";
    student.inputData(); // Input student data

    cout << "\n=== Input Teacher Data ===\n";
    teacher.inputData(); // Input teacher data

    cout << "\n=== Display Student Data ===\n";
    student.displayData(); // Display student data

    cout << "\n=== Display Teacher Data ===\n";
    teacher.displayData(); // Display teacher data

    return 0;
}
