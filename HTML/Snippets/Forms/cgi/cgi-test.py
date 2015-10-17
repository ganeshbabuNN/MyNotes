
import sys, os
import bwCGI

version = "5.4.1/py bwCGI/{}".format(bwCGI.__version__)
cgi = bwCGI.bwCGI()

for s in (
    "Content-type: text/plain", '',
    "BW Test version: {}".format(version),
    "Copyright 1995-2012 The BearHeart Group, LLC",
    "\nVersions:\n=================",
    "Python: {}".format(sys.version.split(' ')[0])
) :
    print(s)

form = cgi.vars()
if form :
    print("\nQuery Variables:\n=================")
    for k in sorted(form) :
        v = ']['.join(form.getlist(k))  # multiple items as [a][b][c]...
        print("{} [{}]".format(k, v))

print("\nEnvironment Variables:\n=================")
for k in sorted(os.environ.keys()) :
    v = os.environ[k]
    print("{} [{}]".format(k, v))

