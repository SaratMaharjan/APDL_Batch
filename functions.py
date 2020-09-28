import math


def resultant(*args):
    return math.sqrt(sum([item**2 for item in args]))


def dsin(arg):
    return math.sin(math.radians(arg))


def dcos(arg):
    return math.cos(math.radians(arg))


def dtan(arg):
    return math.tan(math.radians(arg))


def carea(diameter):
    return math.pi*diameter**2/4
