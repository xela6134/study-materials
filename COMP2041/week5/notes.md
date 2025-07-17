### example1.sh
- no header comments
- horrendous indentation
- no blank lines
- better variable names (e.g. `$SIZE` instead of `$1`)
- terrible spacing
- comments would've been better

1. 'consistency'
- newlines between chunks of code
- using same syntax throughout code (e.g. while loops syntax)
- correct consistent tab indentation

2. 'descriptiveness'
- better variable names
- code explaining chunks of code
- header comments

### example2.sh
- Lists all files in the specified directory, counts the number of files, and searches for an optional keyword within the files.
- ./example2.sh ../week4/mine/files
---
- inconsistent tab spacing, some are 4 and some are 2
- no header comments
- weird amount of spaces in line 25
- line 35~37 should be separated with tab
- unnecessary amounts of newline characters at end of file

### example3.sh
- comments in line 15?
- emphasize u do need comments before large blocks of code

### tests
- Explain about colours
- Explain about PATH pwd, show them differences between deleting PATH line and not deleting
    - Adds the current working directory to the PATH variable, so there is no need to add a ```./``` every time you run a shell script within ur shell script
    - Useful because autotests break if you include a ```./```, because of its nature
        - Because the files are moved to some other directories, and high chances are ```./script.sh``` will not work when calling another script for a script.
- For obvious reasons, u need to clear up temporary files you've made
    - spec explain, you gotta create a .give directory, and some other directories on top of that as well
    - ```rm -rf``` force removes all the contents of directory recursively
    - so after each test, clear all files used after each test
- tests are useless if they only check passing cases
    - which means that you also need to check cases that fail

### End of tut?
- Tut questions are completely unrelated to assignment and we really cannot learn anything new from these tut questions imo