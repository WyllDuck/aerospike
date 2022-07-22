#!/bin/bash

foamLog log >/dev/null

gnuplot -persist > /dev/null 2>&1 << EOF
        set logscale y
        set title "Residual vs. Iteration"
        set xlabel "Iteration"
        set ylabel "Residual"
        plot    "logs/e_0" with lines,\
                "logs/omega_0" with lines,\
                "logs/k_0" with lines
EOF