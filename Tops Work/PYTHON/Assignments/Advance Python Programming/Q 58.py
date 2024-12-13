# Write a Python program to read a random line from a file.


import random

def read_random_line(file_path):
    with open(file_path, 'r') as file:
        lines = file.readlines()
        if not lines:
            return None
        return random.choice(lines).strip()  
random_line = read_random_line('example.txt')
print(random_line)


