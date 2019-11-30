num = 1
sum = 0

print("enter number to add, press 0 to exit.")

while num != 0:
    num = int(input("enter number: "))
    sum += num
else:
    print("the sum is: ", sum)
    print("loop completed")
