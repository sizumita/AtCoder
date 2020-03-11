N = int(input())
m = []
for x in range(1, N+1):
    m.append(x*10000)

print(int(sum(m) / len(m)))
