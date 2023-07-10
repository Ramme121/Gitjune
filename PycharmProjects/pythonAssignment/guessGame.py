secret_word = "python"

print("Welcome to the Word Guessing Game!")
print("I'm thinking of a word. Can you guess it?")

guess = None
attempts = 0

while guess != secret_word:
    guess = input("Take a guess: ")
    attempts += 1

    if guess != secret_word:
        print("Incorrect guess. Try again!")

print(f"Congratulations! You guessed the word '{secret_word}' correctly in {attempts} attempts!")

print("Thank you for playing the Word Guessing Game. Goodbye!")
