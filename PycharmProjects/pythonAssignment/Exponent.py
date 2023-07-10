def exponent(base, power):
    result = 1
    for _ in range(power):
        result *= base
    return result

base = float(input("Enter the base number: "))
power = int(input("Enter the power: "))

result = exponent(base, power)
print(f"The result of {base} raised to the power of {power} is: {result}")
