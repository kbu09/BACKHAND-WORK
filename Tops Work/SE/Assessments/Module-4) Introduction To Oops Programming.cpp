#include <iostream>
#include <string>
using namespace std;

struct food
{
    string name;
    float price;
};

void mainmenu()
{
    cout << "\n----- Main Menu -----\n";
    cout << " 1. Pizza\n 2. Burgers\n 3. Sandwich\n 4. Rolls\n 5. Biryani\n\n";
}

void submenu(int choice)
{
    switch (choice)
    {
    case 1:
        cout << "\n 1. Veg Pizza (8.50)\n 2. Non-Veg Pizza (10.00)\n 3. Cheese Pizza (9.00)\n";
        break;
    case 2:
        cout << "\n 1. Veg Burger (5.50)\n 2. Non-Veg Burger (7.00)\n 3. Cheese Burger (6.00)\n";
        break;
    case 3:
        cout << "\n 1. Veg Sandwich (4.50)\n 2. Non-Veg Sandwich (6.50)\n 3. Cheese Sandwich (5.00)\n";
        break;
    case 4:
        cout << "\n 1. Veg Roll (5.00)\n 2. Non-Veg Roll (7.50)\n 3. Paneer Roll (6.50)\n";
        break;
    case 5:
        cout << "\n 1. Veg Biryani (9.00)\n 2. Non-Veg Biryani (11.00)\n 3. Chicken Biryani (12.00)\n";
        break;
    default:
        cout << "Invalid choice, please select a valid option.\n";
    }
}

float bill(int menuChoice, int itemChoice, int quantity)
{
    float price = 0.0;

    if (menuChoice == 1)
    {
        if (itemChoice == 1)
            price = 8.50;
        else if (itemChoice == 2)
            price = 10.00;
        else if (itemChoice == 3)
            price = 9.00;
    }
    else if (menuChoice == 2)
    {
        if (itemChoice == 1)
            price = 5.50;
        else if (itemChoice == 2)
            price = 7.00;
        else if (itemChoice == 3)
            price = 6.00;
    }
    else if (menuChoice == 3)
    {
        if (itemChoice == 1)
            price = 4.50;
        else if (itemChoice == 2)
            price = 6.50;
        else if (itemChoice == 3)
            price = 5.00;
    }
    else if (menuChoice == 4)
    {
        if (itemChoice == 1)
            price = 5.00;
        else if (itemChoice == 2)
            price = 7.50;
        else if (itemChoice == 3)
            price = 6.50;
    }
    else if (menuChoice == 5)
    {
        if (itemChoice == 1)
            price = 9.00;
        else if (itemChoice == 2)
            price = 11.00;
        else if (itemChoice == 3)
            price = 12.00;
    }

    return price * quantity;
}

void thx(const string &cs_name)
{
    cout << "\n Thank you, " << cs_name << "Visit again...\n";
}

int main()
{
    string cs_name;
    int menuChoice, itemChoice, quantity;
    char againOrder;

    cout << "Enter the name of the customer: ";
    getline(cin, cs_name);

    do
    {
        char validInput = false;

        do
        {
            mainmenu();
            cout << "Enter your choice (1-5): ";
            cin >> menuChoice;

            if (menuChoice >= 1 && menuChoice <= 5)
            {
                validInput = true;
                submenu(menuChoice);
            }
            else
            {
                cout << "Invalid menu choice, please try again.\n";
            }
        } while (!validInput);

        validInput = false;

        do
        {
            cout << "\nSelect an item (1-3): ";
            cin >> itemChoice;

            if (itemChoice >= 1 && itemChoice <= 3)
            {
                validInput = true;
            }
            else
            {
                cout << "Invalid item choice, please try again.\n";
            }
        } while (!validInput);

        cout << "\nEnter quantity: ";
        cin >> quantity;

        float totalBill = bill(menuChoice, itemChoice, quantity);
        cout << "\nYour Order will be delivered in 40 min, " << cs_name << endl;
        cout << "\nTotal Amount: " << totalBill << endl;
        cout << "Thank you For Ordering From Tops Tech Fast Food\n";
        cout << "Do you want to order again? (y/n): ";
        cin >> againOrder;

    } while (againOrder == 'y' || againOrder == 'Y');

    thx(cs_name);
    return 0;
}
