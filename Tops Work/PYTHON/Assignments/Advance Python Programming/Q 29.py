
#  Write a Python program to unzip a list of tuples into individual lists.


tp_list = [(1, 2), (3, 4), (5, 6), (7, 8), (9, 10), (11, 12)]
print("List of tuples:",tp_list)
for tpl in tp_list:
    print(list(tpl),end="\n")