#!/bin/bash

foamLog log >/dev/null

gnuplot -persist > /dev/null 2>&1 << EOF
        set logscale y
        set title "Residual vs. Iteration"
        set xlabel "Iteration"
        set ylabel "Residual"
        plot    "logs/Uy_0" with lines,\
                "logs/Uz_0" with lines
EOF
