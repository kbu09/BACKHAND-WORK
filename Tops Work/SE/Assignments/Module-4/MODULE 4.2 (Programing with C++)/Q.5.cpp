// Assume a class cricketer is declared. Declare a derived class batsman from
// cricketer. Data member of batsman. Total runs, Average runs and best
// performance. Member functions input data, calculate average runs, Display
// data. (Single Inheritance)

#include <iostream>
using namespace std;

class Cricketer
{
protected:
    string name;
    int age;

public:
    void inputCricketerData()
    {
        cout << "Enter cricketer's name: ";
        cin >> name;
        cout << "Enter cricketer's age: ";
        cin >> age;
    }

    void displayCricketerData() const
    {
        cout << "Cricketer's Name: " << name << endl;
        cout << "Cricketer's Age: " << age << endl;
    }
};

class Batsman : public Cricketer
{
private:
    int totalRuns;
    float averageRuns;
    int bestPerformance;

public:
    void inputBatsmanData()
    {
        inputCricketerData(); 
        cout << "Enter total runs: ";
        cin >> totalRuns;
        cout << "Enter best performance (highest score): ";
        cin >> bestPerformance;
        calculateAverageRuns(); 
    }

    void calculateAverageRuns()
    {
        int matches;
        cout << "Enter number of matches played: ";
        cin >> matches;
        if (matches > 0)
        {
            averageRuns = static_cast<float>(totalRuns) / matches;
        }
        else
        {
            averageRuns = 0;
        }
    }

    void displayBatsmanData() const
    {
        displayCricketerData(); 
        cout << "Total Runs: " << totalRuns << endl;
        cout << "Average Runs: " << averageRuns << endl;
        cout << "Best Performance: " << bestPerformance << endl;
    }
};

int main()
{
    Batsman b; 

    // Input batsman data
    b.inputBatsmanData();

    cout << "===================================\n";

    // Display batsman data
    b.displayBatsmanData();

    return 0;
}
