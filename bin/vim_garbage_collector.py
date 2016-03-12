#!/bin/env python

import os
import re

listing = os.listdir('.')

garbage_regex = re.compile(r"(\.(.*?))?\.(un~|swp)")

garbage = filter(lambda x: x is not None, map(lambda x: garbage_regex.match(x), listing))

for g in garbage:
    original_file_name = g.group(2)
    if original_file_name not in listing:
        print("Removing %s" % g.group(0))
        os.remove(g.group(0))
