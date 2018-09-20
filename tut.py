#! /usr/bin/env python3

import platform
import time
from decimal import *


def message():
    print('The version of python {}'.format(platform.python_version()))


if True:
    print('its true')
elif False:
    print('what')
else:
    print('not true')

x = 42
y = 36
s = 'Hello {}'.format(x)
print(s)
print(f'Hello {x}')
print(f'Hello {x} and {y}')
print('Hello {} and {}'.format(x, y))

# no switch and case in python, only if
# print is function from version 3.0

words = ['one', 'two', 'three', 'four', 'five']
n = 0
while (n < 5):
    print(words[n])
    n += 1

# fibonacci Series
a, b = 0, 1
while b < 1000:
    print(b, end=' ', flush=True)
    a, b = b, a + b
print()

for i in words:
    print(i)


def function(n=0):
    print(n)
    return True


function(444)
ret = function(555)

print(ret)


def isPrime(n):
    if n <= 1:
        return False
    for x in range(2, n):
        if n % x == 0:
            return False
    return True


print(isPrime(3))


def list_primes():
    for n in range(100):
        if isPrime(n):
            print(n, end=' ', flush=True)
    print()


list_primes()


class Duck:
    sound = 'quaaaaak'
    walking = 'it walks'

    def quack(self):
        print(self.sound)

    def walk(self):
        print(self.walking)


def main0():
    donald = Duck()
    donald.quack()
    donald.walk()
    print(type(donald))


multiString = '''
dfdsfsd
d
fas
fsd
fsd
fsd
fsd
f
sd
'''.capitalize().upper().lower().swapcase()

print('swap it "{1:<3}" and "{0:>2}"'.format(8, 9))
print('swap it "{1:<03}" and "{0:>02}"'.format(8, 9))

print(type(9))
print(type(9.3543))
print(7 / 3)
print(7 // 3)

print(0.1 + 0.1 + 0.1 - 0.3)
print(Decimal('0.1') + Decimal('0.1') + Decimal('0.1') - Decimal('0.3'))

x = None
if x:
    print("True")
else:
    print("False")

x = [1, 2, 3, 4, 5]
x[2] = 4444
for i in x:
    print(i)

# tuple cannot be mutated
x = (1, 2, 3, 4, 5)

# range object not mutable
x = range(5)
x = range(5, 10)
x = range(5, 50, 5)

# to make mutable
x = list(range(5))

x = (1, 2, 3, 4, 5)
y = (1, 2, 3, 4, 5)
if x[0] is y[0]:
    print("True, it is")

print(1 in x)
print(1 not in x)

hungry = False
x = 'eat' if hungry else 'dont eat'
print(x)

if isinstance(x, tuple):
    print("it is tuple")
elif isinstance(x, list):
    print("it is list")

secret = "secret"
pw = 'secret'
auth = False
count = 0
max_attempt = 5

while pw != secret:
    count += 1
    if count > max_attempt:
        break
    if count == 3:
        continue
    pw = input(f"{count} : input secret: ")
else:
    auth = True

print('Authorized' if auth else 'you failed....')


def main1():
    x = ('meow', 'grrr', 'purr')
    kitten(*x)


def kitten(*args):
    if len(args):
        for s in args:
            print(s)
    else:
        print('meow')


main1()


def main2():
    x = dict(Buffy='meow', Zilla='grr', Angel='greae')
    kitten2(**x)


def kitten2(**kwargs):
    if len(kwargs):
        for k in kwargs:
            print('kitten {} says {}'.format(k, kwargs[k]))
    else:
        print('mewooo')


main2()


def inclusive_range(*args):
    numargs = len(args)
    start = 0
    step = 1

    # initialize parameters
    if numargs < 1:
        raise TypeError(f'expected at least 1 argument, got {numargs}')
    elif numargs == 1:
        stop = args[0]
    elif numargs == 2:
        (start, stop) = args
    elif numargs == 3:
        (start, stop, step) = args
    else:
        raise TypeError(f'expected at most 3 arguments, got {numargs}')

    # generator
    i = start
    while i <= stop:
        yield i
        i += step


for i in inclusive_range(25):
    print(i, end=' ')
print()


def f1():
    def f2():
        print('f2 is inside f1')
    return f2


x = f1()
x()


def f3(f):
    def f2():
        print('this is before function call')
        f()
        print('this is after function call')
    return f2


@f3
def f4():
    print('this is f4')


f4()


def elaspsed_time(f):
    def wrapper():
        t1 = time.time()
        f()
        t2 = time.time()
        print(f'elapsed time: {(t2 - t1) * 1000} ms')
    return wrapper


@elaspsed_time
def big_sum():
    numList = []
    for num in range(0, 100000):
        numList.append(num)
    print(f'Big sum: {sum(numList)}')

# Lists mutable
# Tuple immutable


game = ['rock', 'paper', 'scissors', 'stone', 'nothing']
print(game[1:5:2])
print(game.index('paper'))
game.append('nothing')
game.insert(0, 'computer')
game.remove('paper')
x = game.pop()
x = game.pop(2)
del game[0]
print(', '.join(game))
y = len(game)


x = {'one': 1, 'two': 2}
for k, v in x.items():
    print("k: {}, v: {}".format(k, v))

print(id(x))


def main():
    print('in main')
    big_sum()


if __name__ == '__main__':
    main()
