A, B = map(int, input().split())

max_a = ((1000 - A) - ((1000 - A) % 100)) + A
min_b = B - ((B - B % 100) - 100)

if (max_a - B) > (A - min_b):
    print(max_a - B)
else:
    print(A - min_b)

# TODO 十の位

