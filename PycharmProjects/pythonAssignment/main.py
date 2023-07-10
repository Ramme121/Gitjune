#Lists

fruits = ['apple', 'banana', 'orange', 'grape']

print(fruits[0])
print(fruits[2])

print(len(fruits))

fruits.append('mango')
print(fruits)

fruits.insert(1, 'kiwi')
print(fruits)

fruits.remove('banana')
print(fruits)

removed_fruit = fruits.pop(2)
print(removed_fruit)
print(fruits)

fruits.sort()
print(fruits)

fruits.reverse()
print(fruits)

count = fruits.count('kiwi')
print(count)

# Creating a tuple
fruits = ('apple', 'banana', 'orange', 'grape')

# Accessing elements of a tuple
first_fruit = fruits[0]
second_fruit = fruits[1]

# Length of a tuple
tuple_length = len(fruits)

# Checking if an element exists in a tuple
if 'apple' in fruits:
    print("Apple exists in the tuple.")

# Iterating over a tuple
for fruit in fruits:
    print(fruit)


###functions

def greet(name):
    print("Hello, " + name + "!")

fruits = ('apple', 'banana', 'orange', 'grape')

first_fruit = fruits[0]
second_fruit = fruits[1]

tuple_length = len(fruits)

if 'apple' in fruits:
    print("Apple exists in the tuple.")

for fruit in fruits:
    print(fruit)
def add_numbers(x, y):
    return x + y

result = add_numbers(3, 5)
print(result)

###Returnstatement

def add_numbers(x, y):
    return x + y

result = add_numbers(3, 5)
print(result)


def get_positive_number(x):
    if x > 0:
        return "Positive"
    elif x < 0:
        return "Negative"
    else:
        return "Zero"

result1 = get_positive_number(5)
result2 = get_positive_number(-2)
result3 = get_positive_number(0)

print(result1)
print(result2)
print(result3)

def greet(name):
    print("Hello, " + name + "!")

result = greet("Alice")
print(result)


##IF Statements

#if statement
num = 10

if num > 0 or num == 0:
    print("Number is positive or zero")

#if-else statement
num = -5

if num > 0:
    print("Number is positive")
else:
    print("Number is non-positive")

#elif statement
num = 0

if num > 0:
    print("Number is positive")
elif num < 0:
    print("Number is negative")
else:
    print("Number is zero")


# Comparing three numbers
num1 = 10
num2 = 20
num3 = 15

if num1 > num2 and num1 > num3:
    print("num1 is the largest")
elif num2 > num1 and num2 > num3:
    print("num2 is the largest")
elif num3 > num1 and num3 > num2:
    print("num3 is the largest")
else:
    print("All numbers are equal")

##BetterCalculator
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



