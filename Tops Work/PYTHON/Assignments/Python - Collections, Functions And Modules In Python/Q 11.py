#  Write a Python function that takes a list and returns a new list with unique elements of the first list. 


def unique_elements(ele,uni_ele):
    for element in ele:
        if element not in uni_ele:
            uni_ele.append(element)
    print(uni_ele)

ele = [1,1,2,2,2,3,3,4,4,4,5,5,5,6,6]
uni_ele = []
unique_elements(ele,uni_ele)

