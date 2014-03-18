pathin="/home/zhouyy/MasterThesis/thesis/picture/ch_experiment_gnuplot_dat/d1_distinct_mr123.dat"
pathout="/home/zhouyy/MasterThesis/thesis/picture/ch_experiment_gnuplot_eps/di_distinct_mr123.eps"


set terminal eps
set output pathout
set style data histogram 
set style histogram rowstacked
set boxwidth 0.4 relative
set style fill solid 0.4 border
unset title
set xlabel "数据集大小"
set ylabel "百分比"
#set xrange [6:9]
#set xtics ("10^6" 6, "10^7" 7, "10^8" 8, "10^9" 9)
#set key left top
a=0
ca(x)=(a=a+x,a)

b=0
cb(x)=(b=b+x,b)

c=0
cc(x)=(c=c+x,c)

d=0
cd(x)=(d=d+x,d)


plot pathin using ($2/ca($2)), pathin using ($3/cb($3)), pathin using ($4/cc($4))
#plot pathin using ($2/cumulative_sum($2)):xticlabels(1) title "Naive", pathin using 3:xticlabels(1) title "Naive+BA" 
#pathin using 4 title "MR-Cube"

