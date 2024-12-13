
# Write a Python program to check the current position of the file cursor using tell().


file_name = "demo2.txt"

with open(file_name,'w') as f:
    f.write("Hello this is demo 2 file")
    cursor_pos = f.tell()
print(f"Cursor is at the {cursor_pos}th position")