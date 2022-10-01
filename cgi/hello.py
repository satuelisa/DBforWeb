#!/usr/bin/env python3
# enable debugging
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
