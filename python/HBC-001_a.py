N, M, D = map(int, input().split())
print(D * M if N - (D * M) >= 0 else N)
