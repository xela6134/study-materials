#!/usr/bin/env python3

# Dictionaries match a key with its value!
person = {
    "name": "Anya",
    "age": 6,
    "city": "Ostania",
}

print("Name:", person["name"])

# Add a new key-value pair
print("\nAdding a new key-value pair")
person["email"] = "psychic@spy.com"
print(person)

# Remove a key-value pair
print("\nRemoving a new key-value pair")
del person["age"]
print(person)

# Modify a value
print("\nModifying a value of a key")
person["city"] = "Westalis"
print(person)

# Print keys
print(f"\nKeys: {person.keys()}")

# Print values
print(f"Values: {person.values()}")

# Print items (everything)
print(f"Items: {person.items()}")

numbers = {
    "positive": [1, 3, 5],
    "negative": [-1, -3, -5],
    "float": [0.9, 3.1, 2/3]
}

print('')
for number in numbers.values():
    print("num: ", end='')
    for num in number:
        print(f"{num}, ", end='')
    print('')

print("\nMultiple variables assigned when printing")
for key, val in person.items():
    print(f"{key}: {val}")
