import math


def predef(radius, length, thickness):
    effLength = 2.3 * math.pow(length**2 * radius * thickness, 0.25)
    pre1 = 0.01*effLength
    pre2 = 25*thickness*0.01
    pre = int(max(pre1, pre2)*100)/100
    print("Predeformation of", pre, "mm for thickness",
          thickness, "mm, radius", radius, "mm and length", length, "mm.")
    return pre
