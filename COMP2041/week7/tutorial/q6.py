import sys

n_lines = 10

if len(sys.argv) > 1 and sys.argv[1].startswith('-'):
    arg = sys.argv[1]
    arg = arg[1:]
    n_lines = int(arg)

print(f"n_lines is {n_lines}")

for filename in sys.argv[1:]:
    if filename[:-1] == '-':
        continue
    
    try:
        print(f"==> {filename} <==")

        file = open(filename)
        printed_lines = 1
        for line in file:
            if printed_lines > n_lines:
                break
            print(line, end='')
            printed_lines += 1
        file.close()

    except Exception as e:
        print(f"Cannot open {sys.argv[0]}: {e}")
