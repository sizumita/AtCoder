A, B = map(int, input().split())

for x in range(1, int(10001)):
    if int(x * 0.08) == A and int(x * 0.1) == B:
        print(x)
        exit()
print(-1)
