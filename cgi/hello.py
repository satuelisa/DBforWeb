#!/usr/bin/env python3
# enable debugging

# chown www-data:www-data own the folder and its contents
# chmod a+x for the .py to make script executable (500 error if not)

import cgitb
cgitb.enable()
print("Content-Type: text/html;charset=utf-8\n")
print("<html><body>\n")
f = [0, 1]
while len(f) < 30:
    f.append(f[-1] + f[-2]);
pos = 0
for value in f:
    print(f'F({pos}) = {value}<br>\n')
    pos += 1
print("</body></html>")
