#  Write a Python program to get a single string from two given strings, separated by a space and swap the first two characters of each string. 

def count(sentence):
    words = sentence.split()  
    word_count = {}

    for word in words:
        word = word.lower()  
        if word in word_count:
            word_count[word] += 1  
        else:
            word_count[word] = 1 
    return word_count

sentence = input("Enter a sentence: ")

words = count(sentence)
print("Word occurrences:")
for word, count in words.items():
    print(f"'{word}': {count}")
