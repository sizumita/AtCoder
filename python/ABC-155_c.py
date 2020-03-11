N = int(input())

value_dict = {}

for x in range(N):
    value = input()
    if value not in value_dict.keys():
        value_dict[value] = 1
        continue
    value_dict[value] += 1

max_count = max(value_dict.values())
max_values = [k for k, v in value_dict.items() if v == max_count]
max_values.sort()


print("\n".join(max_values))
