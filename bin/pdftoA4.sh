#!/bin/bash



gs \
 -o a4.$1 \
 -sDEVICE=pdfwrite \
 -sPAPERSIZE=a4 \
 -dFIXEDMEDIA \
 -dPDFFitPage \
 -dCompatibilityLevel=1.4 \
 $1
