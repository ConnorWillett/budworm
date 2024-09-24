set term png
set xlabel "t"
set ylabel "dBdt"


plot "dbdtVr.dat" using 1:2 with lines
