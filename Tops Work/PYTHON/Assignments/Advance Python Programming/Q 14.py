#  Write a Python program to find the second smallest number in a list.


inp = input("Enter list elements: ")
nums = [int(num) for num in inp.split()]
short_num = sorted(set(nums))
if len(short_num) >= 2:
    print(f"Sorted List {short_num}")
    second_small_num = short_num[1]
    print(f"Second Smallest Number is: {second_small_num}")
else:
    print("Please enter more than 2 numbers in a list")    
        
