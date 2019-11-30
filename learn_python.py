""" Learning Python
    From Packt
"""

import math
# from pymodules import mymath
# import pymodules.mymath as myfunc
from pymodules import mymath as myfunc
from square import Square
from triangle import Triangle


def main():
    # print("hello world")
    # print('Hello' + 'World!')

    # # x is identifier, None/Number/or any value is literal
    # x = None
    # print(x)
    # print(type(x))

    # y = 4 + 5j
    # print(type(y))

    # my_list = ["name", 32, 4.5]
    # print(my_list)
    # print(my_list[0])

    # # tuples are immutable
    # my_tuple = (12, "newName", True, "learning")
    # print(my_tuple)

    # my_range = range(1, 10, 2)
    # print(my_range)
    # new_list = list(my_range)
    # print(new_list)

    # # sets does not have order, so value according to index does not make sense
    # my_set = {3, 4, 5, 16, 7, 10, 12, 15}
    # print(my_set)
    # print(my_set)

    # my_dict = {10: "name", 11: "address"}
    # print(my_dict)
    # print(my_dict[10])

    # a = 10
    # b = 3
    # print(a+b)
    # print(a-b)
    # print(a*b)
    # print(a/b)
    # # floor division method = quotient
    # print(a//b)
    # print(a % b)
    # print(a**b)
    # a += b
    # a -= b
    # a += b
    # print(a)
    # print(-a)
    # print(a < b)
    # print(a > b)
    # print(a == b)
    # print(a != b)
    # print(a < b or a == b)
    # print(not a < b)

    # text = "long \
    # string \n \
    # \\ \" \' \t very long"
    # print(text)

    # # for different data type use , for same use +
    # print("5 multiplied by 6 is: ", 5*6)
    # print("5 multiplied by 6 is: " + str(5*6))
    # print("{0} multiplied by {1} is: {2}".format(5, 6, 5*6))

    # print("this is %s" % "some string")
    # print("this is %.2f" % 3.2562)
    # print("this is %s and %.2f" % ("string", 3.2562))

    # my_name = input("write your name: ")
    # print("your name is " + my_name)
    # my_age = int(input("write your age: "))
    # print(type(my_age))

    # print(dir(__builtins__))
    # print(max(3, 4, 5, 33, 22))
    # print(pow(3, 4))

    # print(math.sqrt(5))
    # print(dir(math))

    # age = 18
    # if age == 18:
    #     print("ok")
    # elif age > 18:
    #     print("may be ok")
    # else:
    #     print("not ok")

    # i = 0
    # while i < 10:
    #     i += 1
    #     print(i)
    # else:
    #     print("loop completed")

    # A = [0, 1, 2, 3, 4, 5]
    # B = (0, 1, 2, 3, 4, 5)
    # C = {0, 1, 2, 3, 4, 5}
    # D = "myname"
    # E = {"name": "sarat",
    #      "age": 19}

    # print(0 in A)
    # print(1 in B)
    # print(2 in C)
    # print("s" in D)
    # print("name" in E)

    # for i in A:
    #     if i == 2:
    #         print("using break")
    #         break
    #     print(i)

    # for i in B:
    #     if i == 2:
    #         print("using continue")
    #         continue
    #     print(i)

    # for i in E:
    #     print(i)

    # for i in E.keys():
    #     print(i)

    # for i in E.values():
    #     print(i)

    # for i, j in E.items():
    #     print(i, ": ", j)

    # for x in range(1, 5):
    #     print(x)
    # else:
    #     print("loop completed")

    # string1 = "   hello world   "
    # string2 = "HELLO WORLD"
    # print(string1.capitalize())
    # print(string1.upper())
    # print(string2.lower())
    # print(string2[0])
    # print(string2[0:5])
    # print(string1.strip())
    # print(string1.lstrip())
    # print(string1.rstrip())
    # print(string1.islower())
    # print(string1.isupper())
    # print(string1.replace("h", "SSS"))
    # print(string1.split(" "))
    # print(string1.split("o"))
    # print(string1 * 5)

    # lists are mutable
    # newList = ["name", 32, "age", 15.5, 99]
    # print("lists are mutable. ", newList[0])
    # print(len(newList))
    # newList.insert(1, 99)
    # print(newList)
    # newList.remove(99)
    # print(newList)
    # newList.pop()
    # print(newList)
    # # del(newList)
    # # newList.clear()
    # # newList.sort()
    # # newList.reverse()
    # newList.append(77)
    # print(newList)
    # print(newList.count(32))

    print("lists are mutable.")
    print("dictionaries are mutable.")
    print("tuples are immutable.")

    # newTuple = (32, 43, "nafa", 25.5, [10, 5])
    # oldTuple = (55, )
    # print(newTuple)
    # print(newTuple[1])
    # print(newTuple.count(32))
    # print(len(newTuple))
    # cTuple = oldTuple + newTuple
    # print(cTuple)
    # newTuple = cTuple
    # print(newTuple)
    # cTuple = ("HEllo", ) * 5
    # print(cTuple)
    # dTuple = (1, 2, 4, 5, 0)
    # print(max(dTuple))
    # del(dTuple)

    # me = {"name": "sarat",
    #       "age": 99,
    #       ("h", "w"): (6, 75)}
    # print(me["name"])
    # print(me[("h", "w")])
    # me['salary'] = "nothing"
    # print(me)
    # print(len(me))
    # print(me.get('name'))
    # me.pop('salary')
    # # me.clear()
    # print(me.values())
    # me.update({"name": "its me"})
    # me["name"] = "sarat"

    # x = [4, 5, 52, 6, 61, 7, 8, 9]
    # y = [4, 5, 5, 6, 6, 7, 8, 9]
    # z = "sdfoasfof string it is"
    # print(x[0:4:1])
    # print(x[0:4:2])
    # print(y[: 4])
    # print(y[4:])
    # print(y[:])  # makes copy of list
    # print(z[::2])
    # print(x[::-1])
    # print(x[-3:])
    # print(x[-3:-1])
    # print(x[3:1:-1])

    # # FUNCTIONS
    # def sum_f(arg1, arg2):
    #     if type(arg1) == type(arg2):
    #         return str(arg1+arg2)
    #     else:
    #         return "data type did not match."

    # print(sum_f("does it ", "work"))
    # print(sum_f(5, 6))
    # print(sum_f(5, "dfasf"))

    # def shop(item, price=60):
    #     print("item : ", item)
    #     print("price : ", price)

    # shop("sugar", 100)
    # shop(price=50, item="sugar")
    # shop("sugar")

    # def std(name, clas, *marks):
    #     global nothing  # not a good idea
    #     nothing = "noothing"
    #     print("name: ", name)
    #     print("class: ", clas)
    #     print("marks: ", marks)

    # std("me", "what", 100, 90, 30)
    # print(nothing)
    # std("me", "what")

    # def std2(name, clas, **marks):
    #     print("name: ", name)
    #     print("class: ", clas)
    #     print("marks: ", marks)

    # std2(name="me", clas="what", english=100, maths=90, science=30)

    # OOPS: encapsulation, abstraction, inheritance, polymorphism
    # class Student:
    #     def __init__(self, name, age, marks=0):
    #         self.name = name
    #         self.age = age
    #         self.marks = marks
    #         self.__private = 80  # private variable

    #     def get_private(self):
    #         return self.__private

    #     def set_private(self, new_value):
    #         self.__private = new_value

    #     def display(self):
    #         self.__pvt_function()
    #         print("my name is ", self.name, "my age is: ",
    #               self.age, "my marks: ", self.marks)

    #     def __pvt_function(self):
    #         print("this is private method")

    # sm = Student("me", 33, 99)
    # sm.display()
    # print(sm.name)
    # print(id(sm))
    # # print(sm.__private)
    # sm.set_private(99)
    # print(sm.get_private())
    # # sm.__pvt_function()

    """ INHERITANCE """
    # class Polygon:
    #     __width = None
    #     __height = None

    #     def set_value(self, width, height):
    #         self.__width = width
    #         self.__height = height

    #     def get_width(self):
    #         return self.__width

    #     def get_height(self):
    #         return self.__height

    # class Square(Polygon):
    #     def area(self):
    #         return self.get_height() * self.get_width()

    # s1 = Square()
    # s1.set_value(4, 6)
    # print("area of square is: ", s1.area())

    # print(mymath.add(3, 4))  # works if imported using from
    # print(pymodules.mymath.add(3, 4)) # if as is not used
    # print(myfunc.add(3, 4))

    # s1 = Square()
    # s1.set_value(4, 6)
    # s1.set_color("Blue")
    # print("area of square is: ", s1.area())
    # print(s1.get_color())

    # s1 = Triangle()
    # s1.set_value(4, 6)
    # s1.set_color("RED")
    # print("area of square is: ", s1.area())
    # print(s1.get_color())

    # class Parent:
    #     def __init__(self, name):
    #         print("Parent init", name)

    # class Parent2:
    #     def __init__(self, name):
    #         print("Parent2 init", name)

    # class Child(Parent, Parent2):
    #     def __init__(self, name):
    #         print("child init")
    #         super().__init__(name)
    #         Parent2.__init__(self, name)

    # child_obj = Child("its me")
    # print(Child.__mro__)
    # # print(child_obj)


# if this file is starting file/main, then executes main(), if loaded as module, then dont
if __name__ == "__main__":
    main()


# pip install opencv-python
# pip list
# pip show opencv-python
# pip --help
