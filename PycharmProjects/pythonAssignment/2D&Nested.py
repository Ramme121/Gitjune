# Creating a 2D list
matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

# Accessing elements in a 2D list
print("Element at row 0, column 1:", matrix[0][1])
print("Element at row 2, column 2:", matrix[2][2])

# Modifying elements in a 2D list
matrix[1][0] = 10
matrix[2][1] = 11

# Printing the entire 2D list
print("Matrix:")
for row in matrix:
    for element in row:
        print(element, end=" ")
    print()

# Iterating over a 2D list using nested loops
print("Matrix (Iterating with nested loops):")
for i in range(len(matrix)):
    for j in range(len(matrix[i])):
        print(matrix[i][j], end=" ")
    print()
