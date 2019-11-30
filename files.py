fileHandler = open("pydata.txt", "w")

# fileHandler.write("from python again \n")
# fileHandler.write("from python again \n")

for i in range(1, 11):
    fileHandler.write("%d \n" % i)

fileHandler.close()

fh = open("pydata.txt", "r")
print(fh.read(3))
print(fh.read(20))
print(fh.readline())
print(fh.readlines())

for line in fh:
    print(line)

fh.close()
