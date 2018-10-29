import sys
import re
import os


def process_file(fname, outFile):
    modell_in = open(fname, "r")
    modell_out = open(outFile, "w")
    while True:
        c = modell_in.read(8192)
        if c == '':
            return

        c = re.sub(r'/solu', '/eof', c)
        modell_out.write(c)
    modell_in.close()
    modell_out.close()


if __name__ == '__main__':
    tempFile = "C:\\Users\\Asus\\desktop\\modell_1.inp"
    os.rename(sys.argv[1], tempFile)
    process_file(tempFile, sys.argv[1])
    os.remove(tempFile)
