# Sample Exam (this is not real)

Disclaimer: To anyone who reads this resource, these are NOT leaked final exam questions. I've made these on my own for around an hour.

### Question 1.

**a)**

Count how many classes exist per day for classes.tsv. 

Example output:
```
      8 Fri
      7 Mon
     16 Thu
     12 Tue
      7 Wed
```

**b)**

Get all the times a class will finish for all classes excluding LAB.

Example output:
```
10
10:30
11
12
13
14
14:30
15
16
17
17:30
18
19
20
```

### Question 2.

Write a shell file `q2.sh` which does the following:

When given filenames as command line arguments, prints how many `.c`, `.py`, `.java` extensions there are. Everything else is treated as unknown. The files do not need to exist inside the current directory.

For example, when `./q2.sh ex1.c ex2.py ex3.c ex4.c ex5.java ex6.cpp` is ran, the output should be

```
.c: 3 time(s)
.py: 1 time(s)
.java: 1 time(s)
unknown: 1 time(s)
```

Your output should exactly match the example above.

Assume there only exists one `.` in the filename (No files such as `hi.cpp.py`)

### Question 3.

Make a python file, when given files as command line arguments, counts how many line each file has. 

For example, when `./q3.py classes.tsv garbage one` is ran, the output should be

```
classes.tsv: 50 lines
garbage: 7 lines
one: 1 line
```

Your output should exactly match the example above.

Unlike Q2, all of the files must be valid. Assume all the filenames you'll be given are valid filenames.

### Question 4

Make a python file, when given files as command line arguments, checks if each file has all alphabetical characters (case insensitive). 

For example, when `./q4.py classes.tsv garbage one` is ran, the output should be

```
Contains all alphabets: one
Doesn't contain all alphabets: classes.tsv garbage 
```

Your output should exactly match the example above.

Again, assume the files are valid files inside the current directory.
