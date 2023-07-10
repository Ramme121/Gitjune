secret_word = "python"

print("Welcome to the Word Guessing Game!")
print("I'm thinking of a word. Can you guess it?")

attempts = 0

while attempts < 3:
    guess = input("Take a guess: ")
    attempts += 1

    if guess == secret_word:
        print(f"Congratulations! You guessed the word '{secret_word}' correctly in {attempts} attempts!")
        break
    else:
        print("Incorrect guess. Try again!")

if attempts == 4:
    print("Sorry, you've reached the maximum number of attempts.")
    print(f"The secret word was '{secret_word}'.")

print("Thank you for playing the Word Guessing Game. Goodbye!")
