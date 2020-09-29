#!/bin/sh

jellyfish count -F 2 bowfin_M_L004_R1.fastq bowfin_M_L004_R2.fastq -m 31 -s 1500M -t 10 -C -L 5 -U 50000 -o bowfin_male_mer_count.jf
