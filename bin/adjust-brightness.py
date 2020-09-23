#!/usr/bin/env python3

import os
import sys

try:
    current = float(open(os.path.join(os.getenv("HOME"),"var","last-brightness"),"rt").read().strip())
    diff = float(sys.argv[1])

    new = current + diff
    if new < 0:
        new = 0.0
    elif new > 1.4:
        new = 1.4

    os.system(f"set-brightness.sh {new}")

except:
    print("--error.")

