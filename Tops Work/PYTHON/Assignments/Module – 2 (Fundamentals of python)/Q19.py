# Write a Python function that takes a list of words and returns the length
# of the longest one. 


def Long_word(words):
    if not words:  
        return 0
        legnth = 0  
    for word in words:
        if len(word) > legnth:
            legnth = len(word)  
            
    return legnth
word_list = ["apple", "banana", "cherry", "kiwi"]
result = Long_word(word_list)
print("Length of the longest word:", result)
