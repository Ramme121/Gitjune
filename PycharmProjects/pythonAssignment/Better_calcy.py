def add(number1, number2):
    return number1 + number2

def subtract(number1, number2):
    return number1 - number2

def multiply(number1, number2):
    return number1 * number2

def divide(number1, number2):
    return number1 / number2

print("Welcome to the Better Calculator!")

while True:
    print("\nPlease select an operation:")
    print("1. Addition (+)")
    print("2. Subtraction (-)")
    print("3. Multiplication (*)")
    print("4. Division (/)")
    print("5. Exit")

    choice = input("Enter your choice (1-5): ")

    if choice == '5':
        print("Thank you for using the Better Calculator. Goodbye!")
        break

    if choice in ['1', '2', '3', '4']:
        number1 = float(input("Enter the first number: "))
        number2 = float(input("Enter the second number: "))

        if choice == '1':
            result = add(number1, number2)
        elif choice == '2':
            result = subtract(number1, number2)
        elif choice == '3':
            result = multiply(number1, number2)
        else:
            if number2 != 0:
                result = divide(number1, number2)
            else:
                print("Error: Cannot divide by zero!")
                continue

        print("Result:", result)
    else:
        print("Invalid choice. Please try again.")
