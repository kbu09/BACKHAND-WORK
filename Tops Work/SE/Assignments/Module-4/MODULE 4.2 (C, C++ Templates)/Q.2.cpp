// Write a program of to sort the array using templates

#include <iostream>
using namespace std;

template <typename T>
void array(T arr[], int size)
{

    for (int i = 0; i < size - 1; i++)
    {
        for (int j = 0; j < size - i - 1; j++)
        {
            if (arr[j] > arr[j + 1])
            {

                T temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}

template <typename T>
void showArray(T arr[], int size)
{
    for (int i = 0; i < size; i++)
    {
        cout << arr[i] << " ";
    }
    cout << endl;
}

int main()
{

    int ar[] = {5, 4, 9, 8, 3, 77, 55};
    int s = sizeof(ar) / sizeof(ar[0]);

    cout << "Original array: ";
    showArray(ar, s);

    array(ar, s);

    cout << "Sorted array: ";
    showArray(ar, s);

    return 0;
}