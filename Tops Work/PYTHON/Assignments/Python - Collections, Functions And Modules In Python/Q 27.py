# Write a Python program to find the repeated items of a tuple.


tuple_obj = (1,2,3,4,3,5,3,2,8,9,7,5,4,6,1,5,4,9,7,5)
print("Original tuple elements: ",tuple_obj)
empty_list = []
repeated_list = []

for ele in tuple_obj:
    if ele not in empty_list:
        empty_list.append(ele)
    elif ele not in repeated_list:
        repeated_list.append(ele)
print("Repeated tuple elements: ",tuple(repeated_list))


