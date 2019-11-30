# import builtins
# help(builtins)

result = None
x = 50
y = 0
z = "faf"
a = 10

print("...................................")

try:
    result = x/y
except TypeError as e:
    print(type(e), e)
except ZeroDivisionError as e:
    print("don not divide with zero")
except Exception as e:
    print(type(e), e)
else:
    print("it is else")
finally:
    print("its final")

print("...................................")

try:
    result = x/a
except TypeError as e:
    print(type(e), e)
except ZeroDivisionError as e:
    print("don not divide with zero")
except Exception as e:
    print(type(e), e)
else:
    print("it is else")
finally:
    print("its final")

print("...................................")

try:
    result = x/z
except TypeError as e:
    print(type(e))
except ZeroDivisionError as e:
    print("don not divide with zero")
except Exception as e:
    print(type(e), e)

print("...................................")

print(result)


class MyException(Exception):
    def __init__(self, arg):
        self.msg = arg


z = 99
a = 55
if z > a:
    # raise Exception("its crazy")
    raise MyException("its crazy")
else:
    raise ValueError("not in range")
