class Book:
    def __init__(self, pages):
        self.pages = pages

    def __add__(self, otherBook):
        return self.pages + otherBook.pages

    def __mul__(self, otherBook):
        return self.pages * otherBook.pages

    def __gt__(self, otherBook):
        return self.pages > otherBook.pages


b1 = Book(100)
b2 = Book(300)

print(b1 + b2)
print(b1 * b2)
print(b1 > b2)

# overloading can be done between different classes to, but overloading should be defined in first writtern object, eg. if a+b, overloading should be defined in a.
