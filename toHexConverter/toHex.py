# Af Emil S. Bak @ DIKU, 2017

import sys, getopt


def converter(arg, base):
	try:
		print (hex(int(arg,base)))
	except ValueError:
		print ("Wrong input compared to base")

def main(argv):
	try:
		opts, args = getopt.getopt(argv,"b:d:o:h:",["binary","decimal","octal","hexa"])
	except getopt.GetoptError:
		print ("Wrong input - Try again (-b, -d, -o, -h)")
		print ("tohex [-argument] [input]")
		sys.exit(2)

	for opt, arg in opts:
		if opt in ("-b","--binary"):
			converter(arg,2)
		if opt in ("-d","--decimal"):
			converter(arg,10)
		if opt in ("-o","--octal"):
			converter(arg,8)
		if opt in ("-h","--hexa"):
			converter(arg,16)

# Makes sure the MAIN is run
if __name__ == '__main__':
	main(sys.argv[1:])