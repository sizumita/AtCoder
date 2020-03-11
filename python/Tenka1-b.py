A, B, K = map(int, input().split())

while K != 0:
    K -= 1
    if A % 2:
        A -= 1
    B += A / 2
    A /= 2
    if not K:
        break

    K -= 1
    if B % 2:
        B -= 1
    A += B / 2
    B /= 2

print(int(A), int(B))
