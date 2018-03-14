#!/usr/bin/env python

# Af Emil S. Bak @ EGMONT 2018
# Try it: 'python pizza.py <fil.txt>'
#   <fil.txt> must contain <NAME> <NUMBER> only!

import sys, getopt

pizzaTal   = 42
toppingTal = 12

def main(argv):
    if (len(sys.argv) < 2):
        print "Error, no text file specified!"
        print "Try: 'python pizza.py tal.txt' etc"
    else:
        file = open(str(argv[0]), "r")

        print "    **** PIZZAROULETTE ****  "
        for line in file:
            a,b = line.split()
            print (a.ljust(8)+": Pizza #"+str(int(b)%pizzaTal).rjust(2)+", topping #" + str(int(b)%toppingTal))


if __name__ == '__main__':
    main(sys.argv[1:])