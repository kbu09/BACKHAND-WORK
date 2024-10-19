# Write a Python program to test whether a passed letter is a vowel or not. 

def vowel(letter):
    vowels = 'aeiouAEIOU'  
    if letter in vowels:
        return "The letter is a vowel."
    else:
        return "The letter is not a vowel."


letter = input("Enter a letter: ")


if len(letter) == 1 and letter.isalpha():  
    print(vowel(letter))
else:
    print("Please enter a valid single letter.")
