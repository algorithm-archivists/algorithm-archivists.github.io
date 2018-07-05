# submitted by Pierrick Lebourgeois

import math
import random

def inCircle(x, y, r):
	return x**2 + y**2 < r**2


def monteCarlo(n):
	piCount = 0;
	
	for i in xrange(n):
		
		x = random.random()
		y = random.random()
		
		if inCircle(x, y, 1):
			piCount += 1
		
		piEstimate = 4.0 * piCount / n;
		error = 100.0 * (math.pi - piEstimate) / math.pi
		
		if error < 0.1 :
			print("The estimate of pi is %f \t Percent error is: %f" % (piEstimate, error) )


if __name__ == "__main__":
	monteCarlo(1000000)
