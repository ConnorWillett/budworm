#!/bin/bash

r=0.01

for ((i=0; i<=100; i++))
do
  
  ./dbdtVr $r > dbdtVr.dat
  file=$(echo "dbdtVr$r")
  gnuplot dbdtVr.gnuplot > $file.png
  cp dbdtVr.dat $file.dat

  r=$(echo "$r + 0.01" | bc -l)
done

