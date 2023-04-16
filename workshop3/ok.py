#make a pyhton file where you can show the time spent in the python file.

import time
import sys 

def main():
    start_time = time.time()
    print("Time spent: %s seconds" % (time.time() - start_time))
if __name__ == '__main__':
    main()
    