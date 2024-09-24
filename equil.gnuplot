set term x11
set xlabel "t"
set ylabel "dBdt"

plot "budworm.dat" using 1:3 with lines
