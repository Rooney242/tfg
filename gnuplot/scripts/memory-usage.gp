load "config.gp"
set term png
set output "../png/memory-usage.png"

set xlabel "Tamaño de traza en MB"
set ylabel "Tamaño de estructuras usadas en KB"
plot "../data/data.dat" using ($1*58/(1024*1024)):($9/(1024)) w linespoints ls 1 lw 3 notitle