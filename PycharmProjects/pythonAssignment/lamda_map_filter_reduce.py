from functools import reduce


# Lambda functions (anonymous functions) are defined using the lambda keyword
# They are typically used for short, one-line functions
add = lambda x, y: x + y
print(add(3, 5))

# Map applies a function to each element in a sequence and returns a new sequence
numbers = [1, 2, 3, 4, 5]
squared = list(map(lambda x: x * x, numbers))
print(squared)


# Filter selects elements from a sequence based on a condition and returns a new sequence
even_numbers = list(filter(lambda x: x % 2 == 0, numbers))
print(even_numbers)


# Reduce applies a function to the elements of a sequence, reducing it to a single value
product = reduce(lambda x, y: x * y, numbers)
print(product)  
