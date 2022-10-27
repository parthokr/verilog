ins = input('Enter inputs with space delimiter: ').split()
d = input('Enter delay: ')
n = len(ins)

for i in range(2**n):
    s = str(bin(i))[2:].rjust(n, '0')
    k = 0
    for c in ins:
        print(f'{c} = {s[k]}; ', end='')
        k += 1
    print(f'#{d};')
