# Write a Python function that takes two lists and returns true if they have at least one common member. 


def atleast_one_common_member(l1,l2):
    for ele in l1:
        if ele in l2:
            return True
    return False


inp1 = input("Enter list elements: ")
inp2 = input("Enter list elements: ")
l1 = inp1.split()
l2 = inp2.split()
print(atleast_one_common_member(l1,l2))
