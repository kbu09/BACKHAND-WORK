// Define a class to represent a bank account.Include the following members :

//     1. Data Member : Name of the depositor -
//     Account Number - Type of Account - Balance amount in the account

//     2. Member Functions -
//     To assign values - To deposited an amount - To withdraw an amount after checking balance - To display name and balance

#include <iostream>
#include <string>
using namespace std;

class BankAccount
{
private:
    string accountHolder;
    int accountNumber;
    string accountType;
    double balance;

public:
   
    void assignValues(string name, int accNum, string accType, double bal)
    {
        accountHolder = name;
        accountNumber = accNum;
        accountType = accType;
        balance = bal;
    }


    void deposit(double amount)
    {
        balance += amount;
        cout << "Deposited: Rs. " << amount << endl;
    }

   
    void withdraw(double amount)
    {
        if (amount <= balance)
        {
            balance -= amount;
            cout << "Withdrawn: Rs. " << amount << endl;
        }
        else
        {
            cout << "Not enough balance!" << endl;
        }
    }


    void display() const
    {
        cout << "Account Holder: " << accountHolder << endl;
        cout << "Account Balance: Rs. " << balance << endl;
    }
};

int main()
{
    BankAccount account;
    string name;
    int accNum;
    string accType;
    double initialBalance, depositAmount, withdrawAmount;

   
    cout << "Enter Account Holder Name: ";
    cin >> name;
    cout << "Enter Account Number: ";
    cin >> accNum;
    cout << "Enter Account Type: ";
    cin >> accType;
    cout << "Enter Initial Balance: Rs. ";
    cin >> initialBalance;


    account.assignValues(name, accNum, accType, initialBalance);


    cout << "======================================\n";
    account.display();

    cout << "Enter Deposit Amount: Rs. ";
    cin >> depositAmount;
    account.deposit(depositAmount);

   
    cout << "Enter Withdrawal Amount: Rs. ";
    cin >> withdrawAmount;
    account.withdraw(withdrawAmount);

  
    cout << "======================================\n";
    account.display();

    return 0;
}
