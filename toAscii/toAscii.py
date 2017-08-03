# Af Emil S. Bak @ DIKU, 2017
# Try it!
# python toAscii -h 48656c6c6f20576f726c6421
# python toAscii -b 010010000110010101101100011011000110111100100000010101110110111101110010011011000110010000100001
# python toAscii -d 72101108108111328711111410810033

import sys, getopt

def converterDec(arg):
    chars = []
    output = []
    twoInt = 0
    threeInt = 0
    i = 0

    for c in arg:
        chars.append(c)
    while i < (len(chars)):
        strengen = ''
        if (chars[i] != '1') and (twoInt != 1) and (threeInt == 0):
            strengen = chars[i]
            strengen = strengen + chars[i+1]
            output.append(chr(int(strengen)))
            twoInt = 1
            i += 1
        elif (chars[i] == '1') and (twoInt != 1) and (threeInt == 0):
            strengen = chars[i]
            strengen = strengen + chars[i+1]
            strengen = strengen + chars[i+2]
            output.append(chr(int(strengen)))
            i += 1
            threeInt = 2
        else:
            i += 1
            twoInt = 0
            if (threeInt != 0):
                threeInt = threeInt - 1

    print (''.join(output))



def converter(arg, base, k):
    pair = [arg[i:i+k] for i in range(0, len(arg), k)]
    for n in range(0, len(pair)):
        try:
            hexConverted = (hex(int(pair[n],base)))
            hexConverted = hexConverted[2:]
            sys.stdout.write (hexConverted.decode("hex"))

        except ValueError:
            print ("Wrong input compared to base")

def main(argv):
    try:
        opts, args = getopt.getopt(argv,"b:d:o:h:",["binary","decimal","hex"])
    except getopt.GetoptError:
        print ("Wrong input - Try again (-b, -d, -h)")
        print ("toAscii [-argument] [input]")
        sys.exit(2)

    for opt, arg in opts:
        if opt in ("-b","--binary"):
            converter(arg,2,8)
            print ("")
        if opt in ("-d","--decimal"):
            converterDec(arg)
        if opt in ("-h","--hex"):
            converter(arg,16,2)
            print ("")

# Makes sure the MAIN is run
if __name__ == '__main__':
    main(sys.argv[1:])