# coding: utf-8
# dado um número se 
# divisivel por 3 entao imprima fizz
# divisivel por 5 então imprima buzz
# divisivel por 3 e 5 imprima fizzbuzz
# senão imprima o numero
def fizzbuzz(number):
    string = ''
    if number % 3 == 0:
        string += 'fizz'
    if number % 5 == 0:
        string += 'buzz'
    return string if string else str(number) 

assert fizzbuzz(1) == '1'
assert fizzbuzz(3) == 'fizz'
assert fizzbuzz(6) == 'fizz'
assert fizzbuzz(5) == 'buzz'
assert fizzbuzz(10) == 'buzz'
assert fizzbuzz(15) == 'fizzbuzz'
assert fizzbuzz(4) == '4'
assert fizzbuzz(9) == 'fizz'
assert fizzbuzz(7) == '7'
assert fizzbuzz(0) == 'fizzbuzz'

for i in range(1, 101):
    print fizzbuzz(i)