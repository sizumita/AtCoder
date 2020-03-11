N, M, K = map(int, input().split())
o = set(range(N))


class User:
    def __init__(self, i):
        self.i = i
        self.friends = set()
        self.blocking = set()


users = [User(i) for i in range(N)]

for x in range(M):
    a, b = map(int, input().split())
    users[a-1].friends.add(b-1)
    users[b - 1].friends.add(a-1)

for x in range(K):
    a, b = map(int, input().split())
    users[a-1].blocking.add(b-1)
    users[b - 1].blocking.add(a-1)


for user in users:
    u = o - user.friends
    u -= user.blocking
    u -= {user.i}


if __name__ == '__main__':
    print('\n')
