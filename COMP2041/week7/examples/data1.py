#!/usr/bin/env python3

# Basic List Declaration
print("Basic List Declaration")
fruits = ["apple", "banana", "banana", "cherry"]
print(fruits)
print(fruits[0])

# Appending (at the back)
print("\nAppending at the back")
fruits.append("date")
print(fruits)

# Removing the first occurrence of banana
print("\nRemoving banana")
fruits.remove("banana")
print(fruits)

# Removing 'banana' again
print("\nRemoving banana again")
fruits.remove("banana")
print(fruits)

# Replacing the first index of fruits
print("\nReplacing the first element")
fruits[1] = "blueberry"
print(fruits)

# Counting numbers
print("\nCounting")
print(f"Length: {len(fruits)}")
print(f"Number of apple: {fruits.count("apple")}")

# Reversing the whole list
print("\nReversing the list")
fruits.reverse()
print(fruits)
