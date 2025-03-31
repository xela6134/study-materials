#!/usr/bin/env python3

numbers = range(5)
print(numbers)

numbers_list = list(numbers)
print(numbers_list)

print("\nPrinting from 1 to 5")
for i in range(5):
    print(i)

print("\nPrinting from 1 to 9 incremented by 2s (1 <= i < 10)")
for i in range(1, 10, 2):
    print(i)
