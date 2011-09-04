#!/usr/bin/env python

# given YYYY-MM-DD return the one day earlier as YYYYMMDD

import sys, os
from datetime import date, timedelta

if len(sys.argv) != 2:
    print "Usage: ", sys.argv[0], " YYYY-MM-DD"
    sys.exit(os.EX_USAGE)

# convert input string to date, subtract one day
#
inarray = sys.argv[1].split('-')
log_day = date(int(inarray[0]), int(inarray[1]), int(inarray[2]))
merge_day = log_day - timedelta(1)

# convert back to string and print
print merge_day.strftime("%Y%m%d")

sys.exit()
