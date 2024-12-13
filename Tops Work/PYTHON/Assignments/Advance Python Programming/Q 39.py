#  Write a Python script to merge two Python dictionaries


my_details1 = {
                "fname" : "kb",
                "mname" : "upadhyay",
                "lname" : "don"
            }

my_details2 = {
                "age" : 25,
                "city" : "ahmedabad",
               }

my_details1.update(my_details2)
print(my_details1)

