A = input()
if A == "a":
    print(-1)
    exit()
if len(A) == 1:
    print('a')
    exit()

print('a' * (len(A) - 1))
