#!/usr/bin/env python3

import os
import time
import sys
import glob
import re

# what a hack
dry_run = "--dry-run" in sys.argv[1:]

if (dry_run):
    print("Dry run: printing rename plans only.")


filelist = []
for glb in sys.argv[1:]:
    if glb == "-dry-run":
        continue
    filelist.extend(glob.glob(glb))

print(f"Nbr of files: {len(filelist)}")

ctime_filelist = [(os.path.getctime(f),f) for f in filelist]
ctime_filelist.sort()

numbering_exp = re.compile(r"[0-9]+ (.*)")
def adjust_name(name, nbr):
    m = numbering_exp.match(name)
    if m:
        name = m.group(1)
    return f"{nbr:03d} {name}"

renaming_plan = [(f,os.path.join(os.path.dirname(f),adjust_name(os.path.basename(f),idx+1))) for (idx,(_,f)) in enumerate(ctime_filelist)]
for x,y in renaming_plan:
    print(f"'{x}' -> '{y}'")
    if not dry_run:
        os.rename(x,y)
