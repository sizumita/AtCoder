N = int(input())
a_list = list(map(int, input().split()))
before = 0
i = 0
for x in a_list:
    if x == before:
        i += 1
        before = None
        continue
    before = x

print(i)