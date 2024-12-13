#  Write a Python program to create a tuple with different data types.

#There are three ways to create tuple in python

#Using the tuple() Constructor with a List
tp_obj1 = tuple([1, "kb", 3.0, "kartik", 'a', 'b', 25+50j, 10]) 

#Using Parentheses to Define a Tuple
tp_ob2 = (1, "kb", 3.0, "kartik", 'b', 'a', 25+50j, 10) 

#Creating a Tuple Without Parentheses (Comma-Separated Values)
comma_tuple_obj = 1, "kb", 3.0, "kartik", 'b', 'a', 25+50j, 10 

print("Obj1 Type: ",type(tp_obj1))
print("Obj1 Elements: ",tp_obj1)
print("Obj2 Type: ",type(tp_ob2))
print("Obj2 Elements: ",tp_ob2)
print("Obj3 Type: ",type(comma_tuple_obj))
print("Obj3 Elements: ",comma_tuple_obj)

    