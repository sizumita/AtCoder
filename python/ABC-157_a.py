N = int(input())

if __name__ == '__main__':
    print(int(N / 2 if not N % 2 else N // 2 + 1))

