#  Write a Python program to remove duplicates from a list. 


uinp = input("Enter some elements : ")
ele = uinp.split()
empls = []
for element in ele:
    if element not in empls:
        empls.append(element)
print(empls)


