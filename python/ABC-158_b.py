N, A, B = map(int, input().split())
ans = 0
amari = N % (A + B)
o = N // (A + B)
if amari > A:
    amari = A

print(amari + A * o)
