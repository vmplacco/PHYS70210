
set terminal postscript enhanced color size 6,4
set output "plot1.eps"

set key top left
set xlabel "T_{eff} (K)"
set ylabel "log(g) (cgs)"

set format y "%.1f"

set label "weird star" at 5900,0.9 right font ",8"
set arrow from 5800,0.7 to 5800,0.9

set xrange[7500:3500]
set yrange[5.5:-0.5]

set title "My first gnuplot pretty plot with bisque4 color"

set pm3d map

splot "<awk '$3!=-9999' table1.dat" using 3:4:6 notitle\
     with points pointtype 7 pointsize 0.7 pal,\
	"250.iso" using (10**$2):4:(0) title "isochrone" with lines lt -1 lw 1 lc "red"
     
#w p pt 7 ps 0.7 lc rgb "#8B7D6B"

exit
