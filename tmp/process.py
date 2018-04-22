#!/usr/bin/env python

import sys
import re

with open(sys.argv[1]) as f:
    cnt = 1
    for line in f:
#        while not "@" in line:
#            print(line)
            if "@" in line:
                m = re.search('{(.+?),', line)
                if m:
                    citekey = m.group(1)
                    print(cnt, citekey)
                    cnt += 1
                # open file for writing, named 'citekey'
                # write this line on the file

