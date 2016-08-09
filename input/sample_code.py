n = 20
sosu = []
for x in range(2, n):
    for i in sosu:
        if x%i == 0:
            break
    else:
        sosu.append(x)

# 表示
for i in sosu:
    print(i)
