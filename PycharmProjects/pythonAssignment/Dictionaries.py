# Creating a dictionary
student = {
    "name": "Ramesh",
    "age": 20,
    "grade": "A",
    "city": "New York"
}

# Accessing dictionary values
print("Name:", student["name"])
print("Age:", student["age"])
print("Grade:", student["grade"])
print("City:", student["city"])

# Modifying dictionary values
student["age"] = 21
student["grade"] = "B"

# Adding a new key-value pair
student["gender"] = "Male"

# Removing a key-value pair
del student["city"]

# Iterating over dictionary keys
for key in student:
    print(key)

# Iterating over dictionary values
for value in student.values():
    print(value)

# Iterating over dictionary key-value pairs
for key, value in student.items():
    print(key, ":", value)
