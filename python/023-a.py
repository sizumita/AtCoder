import datetime
after = datetime.datetime(2014, 5, 17)
y = int(input())
m = int(input())
d = int(input())
before = datetime.datetime(y, m, d)
diff = after - before
print(diff.days)
