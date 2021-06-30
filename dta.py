#!/usr/bin/env python3

import sys
import webbrowser
import datetime
import clipboard

# datetime object containing current date and time
now = datetime.datetime.now()

# mm/dd/YY,H:M:S
dt_string = now.strftime("%m/%d/%Y,%H:%M")
print(dt_string)
clipboard.set(dt_string)


