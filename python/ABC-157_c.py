N, M = map(int, input().split())
num = [input().split() for y in range(M)]


def check(target):
    if not len(target) == N:
        return False
    for x, y in num:
        if not target[int(x)-1] == y:
            return False
    return True


for i in range(1000):
    if check(str(i)):
        print(i)
        exit()

print(-1)
