set term x11
set xlabel "t"
set ylabel "B"

plot "budworm.dat" using 1:2 with lines
