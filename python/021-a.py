up = input().split()
center = input().split()
down = input().split()
low = input().split()
i = 0
if up[0] == up[1] or up[1] == up[2] or up[2] == up[3]:
    i = 1
if center[0] == center[1] or center[1] == center[2] or center[2] == center[3]:
    i = 1
if down[0] == down[1] or down[1] == down[2] or down[2] == down[3]:
    i = 1
if low[0] == low[1] or low[1] == low[2] or low[2] == low[3]:
    i = 1


if up[0] == center[0] or center[0] == down[0] or down[0] == low[0]:
    i = 1
if up[1] == center[1] or center[1] == down[1] or down[1] == low[1]:
    i = 1
if up[2] == center[2] or center[2] == down[2] or down[2] == low[2]:
    i = 1
if up[3] == center[3] or center[3] == down[3] or down[3] == low[3]:
    i = 1

if i:
    print("CONTINUE")
else:
    print("GAMEOVER")
