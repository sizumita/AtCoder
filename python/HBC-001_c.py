N = int(input())
a_list = list(map(int, input().split()))
l = []
i = 0

while len(a_list) > i:
    t = a_list[i]
    _ = list(a_list)
    _[i] = 0
    y = sum([i for i in _ if i > t])
    l.append(y)
    i += 1

print(l)
