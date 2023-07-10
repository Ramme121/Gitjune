i=1

while i<=10:
    print(i)
    i+= 1

print("done with loop")


# Program to calculate the sum of numbers entered by the user
total = 0

while True:
    try:
        number = float(input("Enter a number (or a negative number to quit): "))
        if number < 0:
            break
        total += number
    except ValueError:
        print("Invalid input. Please enter a valid number.")

print("The sum of the entered numbers is:", total)
