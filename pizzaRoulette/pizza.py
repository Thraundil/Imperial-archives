#!/usr/bin/env python

# Af Emil S. Bak @ EGMONT 2018
# Try it: 'python pizza.py <fil.txt>'
#   <fil.txt> must contain <NAME> <NUMBER> only!
#   <fil.txt> Numbers should be between 10-99

import sys, getopt
import random

pizzaTal   = 42
toppingTal = 12

def main(argv):
    if (len(sys.argv) < 2):
        print "Error, no text file specified!"
        print "Try: 'python pizza.py tal.txt' etc"
    else:
        file = open(str(argv[0]), "r")

        print "    **** PIZZAROULETTE ****  "
        counter = 1

        for line in file:
            a,b = line.split()
            print (a.ljust(8)+": Pizza #"+str(pizza(b,counter)).rjust(2)+", topping #" + str(topping(b,counter)))
            counter += 1

def pizza(userNumber, counter):
    random.seed(int(userNumber)*counter)
    return (random.randint(1, pizzaTal))

def topping(userNumber, counter):
    random.seed(int(userNumber)*counter)
    return (random.randint(1, toppingTal))

if __name__ == '__main__':
    main(sys.argv[1:])