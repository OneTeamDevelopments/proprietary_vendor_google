#!/bin/bash
clear
rm -rf proprietary-files.txt
for f in $(find proprietary) ; do
if [ ! -d "$f" ]; then
x=`echo $f | sed "s/proprietary\///g"`
  echo "    vendor/google/shamrock/$f:/system/$x \\" >> proprietary-files.txt
fi
done
