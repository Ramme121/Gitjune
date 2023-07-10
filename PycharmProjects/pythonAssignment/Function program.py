#Pure Function
def square(x):
    return x * x

#immutability
numbers = [1, 2, 3, 4, 5]

# Using map to create a new list with squared values
squared_numbers = list(map(square, numbers))
print(squared_numbers)

#High order funtions
def is_even(x):
    return x % 2 == 0

# Using filter to create a new list with even numbers
even_numbers = list(filter(is_even, numbers))
print(even_numbers)

#Function composition
from functools import reduce

# Function composition using reduce
sum_of_squares = reduce(lambda x, y: x + y, map(square, numbers))
print(sum_of_squares)  # Output: 55






