import os
import filecmp
import glob

# Define Paths
target_dir = 'demo'
file_path = os.path.join(target_dir, 'example.txt')
copy_path = os.path.join(target_dir, 'example_copy.txt')

print("file_path and copy_path")
print(file_path)
print(copy_path)

# mkdir
if not os.path.isdir(target_dir):
    os.mkdir(target_dir)
    print(f"Created directory: {target_dir}")

# Save the current working directory to return later
original_dir = os.getcwd()

# Change directory to target_dir (equivalent of cd)
os.chdir(target_dir)
print("Changed directory to:", os.getcwd())

# Write to file
with open('example.txt', 'w') as file:
    file.write("First line\n")
    file.write("Overwriting text\n")
print("Wrote to example.txt")

# Append to file
with open('example.txt', 'a') as file:
    file.write("Text appended\n")
    file.write("Text appended again\n")
print("Appended to example.txt")

# Check file exists
if os.path.isfile('example.txt'):
    print("example.txt exists!")

# Make a copy of the file to compare
with open('example.txt', 'r') as original, open('example_copy.txt', 'w') as copy:
    copy.write(original.read())
print("Made a copy of example.txt")

# Use filecmp to compare both files
if filecmp.cmp('example.txt', 'example_copy.txt', shallow=False):
    print("Files are identical!")
else:
    print("Files are not identical!")

# Globbing (list all .txt files in the directory)
txt_files = glob.glob('*.txt')
print("Text files found:", txt_files)

# Return to original working directory
os.chdir(original_dir)
print("Returned to original directory:", os.getcwd())
