#  Write a Python script to sort (ascending and descending) a dictionary by value.


my_dict = {'apple': 5, 'banana': 3, 'cherry': 7, 'date': 2}

# Sort the dictionary by values in ascending order
sorted_asc = dict(sorted(my_dict.items(), key=lambda item: item[1]))

# Sort the dictionary by values in descending order
sorted_desc = dict(sorted(my_dict.items(), key=lambda item: item[1], reverse=True))


print("Original Dictionary:")
print(my_dict)
print("\nSorted by Values (Ascending):")
print(sorted_asc)
print("\nSorted by Values (Descending):")
print(sorted_desc)


