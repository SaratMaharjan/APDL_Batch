#! /usr/bin/env python3

# from __future__ import braces
from decimal import *
from math import pi
import platform
import time
import sys
import os
import random
import datetime
import json
import pprint
from typing import List
import threading
import time

import this
import __hello__
import antigravity

def message():
    print('The version of python {}'.format(platform.python_version()))

# git test

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


def dictc():
    x = {'one': 1, 'two': 2}
    # dict construction is easier
    x = dict(one=1,  two=2)
    print(id(x))
    print_dict(x)
    print(x.get('not there'))


def print_dict(o):
    for k, v in o.items():
        print("k: {}, v: {}".format(k, v))
    for x in o:
        print("k: {}, v: {}".format(x, o[x]))
    for x in o.keys():
        print(x)
    for x in o.values():
        print(x)


def setc():
    a = set("what the hell")
    b = set("itsfasdfsfdf fdsfasdfsdfdf")
    print_set(a)
    print_set(a-b)
    print_set(a | b)
    print_set(a ^ b)
    print_set(sorted(a))


def print_set(o):
    for x in o:
        print(x, end=' ')
    print()


def listc():
    seq = range(11)
    print_list(seq)
    seq2 = [x * 2 for x in seq]
    print_list(seq2)
    seq3 = [x for x in seq if x % 3 != 0]
    print_list(seq3)
    seq4 = [(x, x**2) for x in seq]
    print_list(seq4)
    seq5 = [round(pi, i) for i in seq]
    print_list(seq5)


def print_list(o):
    for x in o:
        print(x, end=' ')
    print()


class Animal:

    # class data - not good idea to use them
    x = [1, 2, 3]

    def __init__(self, **kwargs):
        self._type = kwargs["type"] if 'type' in kwargs else 'something else'
        self._name = kwargs["name"]
        self._sound = kwargs["sound"]

    def type(self, t = None):
        if t: self._type = t
        return self._type

    def name(self, n = None):
        if n: self._name = n
        return self._name

    def sound(self, s = None):
        if s: self._sound = s
        return self._sound

    def __str__(self):
      return f'The {self.type()} is named {self.name()} and says {self.sound()}.'


def print_animal(o):
    if not isinstance(o, Animal):
        raise TypeError('print_animal() requiers an Animal')
    print('The {} is named {} and says {}'.format(o.type(), o.name(), o.sound()))

def make_animal():
  a0 = Animal(type = 'kitten', name = 'fluffy', sound = 'rwar')
  print_animal(a0)
  a0 = Animal(name = 'fluffy', sound = 'rwar')
  a0.sound('bark')
  print_animal(a0)
  print(a0)


class Animal2:
  def __init__(self, **kwargs):
    if 'type' in kwargs: self._type = kwargs['type']
    if 'name' in kwargs: self._name = kwargs['name']
    if 'sound' in kwargs: self._sound = kwargs['sound']

  def type(self, t = None):
    if t: self._type = t
    try: return self._type
    except AttributeError: return None

  def name(self, n = None):
    if n: self._name = n
    try: return self._name
    except AttributeError: return None

  def sound(self, s = None):
    if s: self._sound = s
    try: return self._sound
    except AttributeError: return None

  def __str__(self):
    return f'The {self.type()} is named {self.name()} and says {self.sound()}.'

  def __repr__(self):
    return f'The {self.type()} is named {self.name()} and says {self.sound()}.'

class Duck1(Animal2):
  def __init__(self, **kwargs):
    self._type = 'duck'
    if 'type' in kwargs: del kwargs['type']
    super().__init__(**kwargs)


class Kitten(Animal2):
  def __init__(self, **kwargs):
    self._type = 'kitten'
    if 'type' in kwargs: del kwargs['type']
    super().__init__(**kwargs)

  def kill(self, s):
    print(f'{self.name()} kills {s}')


def useAnimal2():
  a0 = Kitten(name = 'fluffy', sound = 'rwar')
  a1 = Duck1(name = 'donald', sound = 'quack')
  print(a0)
  print(a1)
  a0.kill('Duck')


class RevStr(str):
  def __str__(self):
    return self[::-1]

def useRevstr():
  hello = RevStr('something')
  print(hello)


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


# Iterator Class ---------- yield used in Generator
class inclusiveRange:
  def __init__(self, *args):
    numargs = len(args)
    self._start = 0
    self._step = 1

    # initialize parameters
    if numargs < 1:
        raise TypeError(f'expected at least 1 argument, got {numargs}')
    elif numargs == 1:
        self._stop = args[0]
    elif numargs == 2:
        (self._start, self._stop) = args
    elif numargs == 3:
        (self._start, self._stop, self._step) = args
    else:
        raise TypeError(f'expected at most 3 arguments, got {numargs}')

    self._next = self._start

  def __iter__(self):
    return self

  def __next__(self):
    if self._next > self._stop:
      raise StopIteration
    else:
      _r = self._next
      self._next += self._step
      return _r

try:
  for n in inclusiveRange(25, 3, 2, 1):
    print(n, end = ' ')
  print()
except TypeError as e:
  print(f'range error: {e}')

def excep():
  try:
    x = int('foo')
  except ValueError:
    print('caught error')
  try:
    x = 5/0
  except ValueError:
    print('caught error')
  # except ZeroDivisionError:
  #   print('divided by zero')
  except:
    print(f'unknown error: {sys.exc_info()[1]}')
  else:
    print('no Exception')
    print(x)

print('Hello World'.swapcase())
print('Hello World'.upper())
print('Hello World'.lower())
print('Hello World'.capitalize())
print('Hello World'.title())
print('Hello World'.casefold())
print('Hello World' + ', another world')
s = 'Hello {}'
print (s.format(42 * 7))

print ('the numbers are {xx} and {bb}'.format(xx = 100, bb = 300))
print ('the numbers are {1} and {0}'.format(100, 300))
print ('the numbers are {1:<5.3f} and {0:+08,}'.format(1, 34646164631).replace(',', '.'))
print ('the others are {:x}'.format(34646164631)) # hex
print ('the others are {:o}'.format(34646164631)) # octal
print ('the others are {:b}'.format(34646164631)) # binary

s = '''


this is a very long sentence.


'''
l = s.split('e')
s2 = ':'.join(l)
print (s2)


def readFile ():
  infile = open('lines.txt', 'rt') # read in text mode
  outfile = open('lines2.txt', 'wt') # write in text mode
  outfile2 = open('lines3.txt', 'wt') # write in text mode
  for line in infile:
    print(line.rstrip(), file = outfile)
    outfile2.writelines(line)
    print('.', end = '', flush = True)
    # print(line.rstrip())
  infile.close()
  outfile.close()
  print('\ndone.')



def readFileBinary ():
  infile = open('lines.txt', 'rb') # read in binary mode
  outfile = open('linesBinary.txt', 'wb') # write in binary mode
  while True:
    buf = infile.read(10240)
    if buf:
      outfile.write(buf)
      print('.', end = '', flush = True)
    else: break
  infile.close()
  outfile.close()
  print('\ndone.')

y = int ('42')
y = float ('42')
y = abs (-42)
y = divmod (-42, 3)
y = complex (-42, 3)
y = 99 + 3j

s = 'helloooooä'
print (repr(s))
print (ascii(s))
print (chr(128406))
print (ord('s'))

x = (1, 2, 3, 4, 5)
y = x
print(x)
print(y)
y = len(x)
print(y)
y = list(reversed(x))
print(y)
y = sum(x, 10)
print(y)
y = max(x)
print(y)
y = min(x)
print(y)
y = any(x)
print(y)
y = all(x)
print(y)
y = (6, 7, 8)
z = zip(x, y)
for a, b in z: print(f'{a} - {b}')
y = ('cat', 'dog', 'rabbit')
for i, v in enumerate(y): print (f'{i}: {v}')
x = 42
y = type(x)
print(x)
print(y)

v = sys.version_info
print('python version {}.{}.{}'.format(*v))
print(f'python platform {sys.platform}')

v = os.name
print (v)
v = os.getenv('PATH')
print (v)
v = os.getcwd()
print (v)
v = os.urandom(25).hex()
print (v)

x = random.randint(1, 1000)
print(x)
x = list(range(25))
random.shuffle(x)
print(x)

now = datetime.datetime.now()
print(now.year, now.month, now.day, now.hour, now.minute, now.second, now.microsecond)

def fibonaccii(n):
  a = b = 1
  for i in range(n):
    yield a
    a, b = b, a+b

print(sum(fibonaccii(10)))


x = [True, True, False]
if any(x):
    print("At least one True")
if all(x):
    print("Not one False")
if any(x) and not all(x):
    print("At least one True and one False")

x = [1, 2, 3]
y = map(lambda x : x + 1 , x)
# prints out [2,3,4]
print(list(y))

Vector = List[float]
Matrix = List[Vector]
def addMatrix(a : Matrix, b : Matrix) -> Matrix:
  result = []
  for i,row in enumerate(a):
    result_row =[]
    for j, col in enumerate(row):
      result_row += [a[i][j] + b[i][j]]
    result += [result_row]
  return result
x = [[1.0, 0.0], [0.0, 1.0]]
y = [[2.0, 1.0], [0.0, -2.0]]
z = addMatrix(x, y)


exitFlag = 0
class myThread (threading.Thread):
   def __init__(self, threadID, name, counter):
      threading.Thread.__init__(self)
      self.threadID = threadID
      self.name = name
      self.counter = counter
   def run(self):
      print ("Starting " + self.name)
      print_time(self.name, self.counter, 5)
      print ("Exiting " + self.name)

def print_time(threadName, delay, counter):
   while counter:
      if exitFlag:
         threadName.exit()
      time.sleep(delay)
      print ("%s: %s" % (threadName, time.ctime(time.time())))
      counter -= 1

# Create new threads
thread1 = myThread(1, "Thread-1", 1)
thread2 = myThread(2, "Thread-2", 2)

# Start new Threads
thread1.start()
thread2.start()
thread1.join()
thread2.join()
print ("Exiting Main Thread")


def make_incrementor(n):
  return lambda x: x + n

f = make_incrementor(42)
print(f(0))
print(f(1))

pairs = [(1, 'one'), (2, 'two'), (3, 'three'), (4, 'four')]
pairs.sort(key=lambda pair: pair[1])
print(pairs)


def main():
    print('in main')


if __name__ == '__main__':
    main()

myMessage = "welcome" + "to Python"
print(myMessage)

myMessage = "LikeGeeks" * 2
print(myMessage)

str = "welcome to likegeeks website"
print(str.find("likegeeks", 12))
