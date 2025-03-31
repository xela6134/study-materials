#!/usr/bin/env python3

# Tuples

coordinates = (10, 20, 30)
print(coordinates)
print(coordinates[1])

try:
    coordinates[1] = 40
except Exception as e:
    print(f"Exception caught (1): {e}")

try:
    coordinates.append(40)
except Exception as e:
    print(f"Exception caught (2): {e}")
