L, Q = input().split()
L = ["*" for i in range(int(L))]
for x in range(int(Q)):
    l, r, c = input().split()
    for y in range(int(l)-1, int(r)):
        L[y] = c

print("".join(L))
