# What are negative indexes and why are they used?

# You can access elements from the end of a list, tuple, string, or any other sort of sequence in Python by using negative indexes. This capability is especially helpful for rapidly obtaining pieces without knowing the sequence's precise length.
# The Operation of Negative Indexes
# Indexes that are negative start counting at the end of the sequence:

# -1 denotes the final element.
# The second-to-last element is denoted by -2.
# The third-to-last element is denoted by -3, and so forth.



# Example l
numbers = [10, 20, 30, 40, 50]
print(numbers[-1])  # op: 50 
print(numbers[-2])  # op: 40 
print(numbers[-3])  # op: 30 

# Convenience: Without having to determine the length, negative indexes offer a rapid method of accessing elements from the end of a series. This is particularly helpful when the sequence's duration could fluctuate.

# Readability: When you wish to reach the final few components in your code, you can make it easier to read by using negative indexes. When you want the final piece, for instance, my_list[-1] is more intuitive than my_list[len(my_list) - 1.

# Dynamic Lengths: Negative indexes let you refer to the final few elements directly without having to recalculate the index when working with sequences of dynamic lengths (such as lists or strings that may vary).
