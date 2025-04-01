import sys

n_lines = 10

if len(sys.argv) > 1 and sys.argv[1].startswith('-'):
    arg = sys.argv[1]
    arg = arg[1:]
    n_lines = int(arg)

n = 1
for line in sys.stdin:
    if n > n_lines: 
        break
    sys.stdout.write(line)
    n += 1
