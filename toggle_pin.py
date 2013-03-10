import sys
import piface.pfio as pfio

pfio.init()

end = len(sys.argv)
for i in range(1, end):
	pin = int(sys.argv[i])
	print "Pin = ", pin
	pfio.digital_write(pin, 1)
