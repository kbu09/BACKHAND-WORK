// Assume that the test results of a batch of students are stored in three different
// classes. Class Students are storing the roll number. Class Test stores the marks
// obtained in two subjects and class result contains the total marks obtained in
// the test. The class result can inherit the details of the marks obtained in the
// test and roll number of students. (Multilevel Inheritance)

#include <iostream>
using namespace std;


class Students
{
protected:
    int rollNumber; 

public:
    void inputRollNumber()
    {
        cout << "Enter Roll Number: ";
        cin >> rollNumber;
    }
};

// Intermediate class Test
class Test : public Students
{
protected:
    int marks[2]; 

public:
    void inputMarks()
    {
        cout << "Enter marks for two subjects:\n";
        for (int i = 0; i < 2; i++)
        {
            cout << "Subject " << (i + 1) << ": ";
            cin >> marks[i];
        }
    }
};


class Result : public Test
{
public:
    void displayResult()
    {
        int total = marks[0] + marks[1]; 
        cout << "Roll Number: " << rollNumber << endl;
        cout << "Total Marks: " << total << endl;
        cout << (total < 33 ? "Result: Fail" : "Result: Pass") << endl; 
    }
};

int main()
{
    Result student; 

    student.inputRollNumber(); 
    student.inputMarks();      
    student.displayResult();   

    return 0;
}
