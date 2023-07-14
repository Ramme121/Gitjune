
# Pure functions always return the same output for the same input
def square(x):
    return x * x

print(square(5))  # Output: 25



# Immutable data cannot be changed once created
my_list = [1, 2, 3]

# This will create a new list instead of modifying the existing one
new_list = my_list + [4, 5]

print(my_list)
print(new_list)



# Higher-order functions can accept other functions as parameters or return functions
def apply_operation(x, operation):
    return operation(x)

def double(x):
    return x * 2

print(apply_operation(3, double))


# Map applies a function to each element in a sequence
numbers = [1, 2, 3, 4, 5]
squared = list(map(square, numbers))

print(squared)

# Filter selects elements from a sequence based on a condition
even_numbers = list(filter(lambda x: x % 2 == 0, numbers))

print(even_numbers)

# Reduce applies a function to the elements of a sequence, reducing it to a single value
from functools import reduce

product = reduce(lambda x, y: x * y, numbers)

print(product)



# Recursion is a technique where a function calls itself
def factorial(n):
    if n == 0:
        return 1
    else:
        return n * factorial(n - 1)

print(factorial(5))
