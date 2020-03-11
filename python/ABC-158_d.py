S = input()
Q = int(input())
is_reversed = False

for x in range(Q):
    o = input()
    if o == "1":
        if is_reversed:
            is_reversed = False
        else:
            is_reversed = True
        continue
    k, F, C = o.split()
    if F == "1":
        if not is_reversed:
            S = C + S
        else:
            S += C
    else:
        if not is_reversed:
            S += C
        else:
            S = C + S

if is_reversed:
    print(S[::-1])
else:
    print(S)
