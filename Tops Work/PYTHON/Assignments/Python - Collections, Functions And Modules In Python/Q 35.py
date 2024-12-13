
# How Do You Traverse Through A Dictionary Object In Python?

#  ANS = 

# 1. Iterating Over Keys (Default Iteration)
# my_dict = {'a': 1, 'b': 2, 'c': 3}
# for key in my_dict:
# print(f"Key: {key}, Value: {my_dict[key]}")
  


# 2.  Iterating through both keys and values:
#    my_dict = {'a': 1, 'b': 2, 'c': 3}
# for key, value in my_dict.items():
#     print(f"Key: {key}, Value: {value}")



# 3. Iterating through only values:
#    my_dict = {'a': 1, 'b': 2, 'c': 3}
# for value in my_dict.values():
#     print(value)


# 4. Using for loop with enumerate:
#     my_dict = {'a': 1, 'b': 2, 'c': 3}
# for index, (key, value) in enumerate(my_dict.items()):
#     print(f"Index: {index}, Key: {key}, Value: {value}")




