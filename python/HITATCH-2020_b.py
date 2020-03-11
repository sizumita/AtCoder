A, B, M = map(int, input().split())
a_list = list(map(int, input().split()))
b_list = list(map(int, input().split()))

o = min(a_list) + min(b_list)
for _ in range(M):
    x, y, c = map(int, input().split())
    t_a = a_list[x-1]
    t_b = b_list[y-1]
    r = t_a + t_b - c
    if o is None or o > r:
        o = r


print(o)