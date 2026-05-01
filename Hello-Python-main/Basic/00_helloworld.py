import range

k=1
for i in range(3):
    k=k+1
    for j in range(3):
        k=k*j+1
print(k)