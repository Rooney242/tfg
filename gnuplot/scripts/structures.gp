load "config.gp"
set term png
set output "../png/structures.png"

set key top left


set xlabel "Tamaño de traza en GB"
set ylabel "Cantidad de estructuras usadas"

plot "../data/data.dat" using ($1*150/(1024*1024*1024)):4 w linespoints ls 1 lw 3, \
	"../data/data.dat" using ($1*150/(1024*1024*1024)):5 w linespoints ls 2 lw 3, \
	"../data/data.dat" using ($1*150/(1024*1024*1024)):6 w linespoints ls 3 lw 3, \
	"../data/data.dat" using ($1*150/(1024*1024*1024)):7 w linespoints ls 4 lw 3, \
	"../data/data.dat" using ($1*150/(1024*1024*1024)):8 w linespoints ls 5 lw 3, \