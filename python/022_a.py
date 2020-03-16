n, s, t = map(int, input().split())
w = int(input())
i = 0
for x in range(n-1):
    w += int(input())
    if s <= w <= t:
        i += 1

if __name__ == '__main__':
    print(i)
