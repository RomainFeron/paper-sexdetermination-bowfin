# Scripts used in the analyses of sex determination for Bowfin

Analyses were run by Qiaowei Pan with input from Romain Feron for the [bowfin genome paper]() paper (update after pub).

## Reference-based pooled sequencing analyses

The PSASS snakemake workflow was run using the config file `config.yaml` provided in `psass/`. The workflow itself is provided in `psass/` and can be run with snakemake >= 5.8.1 with the `--use-conda` flag.

## Sex-biased kmer analyses

Scripts used to identify sex-biased kmers are provided in `kpool/`; they require Jellyfish 2.2.10 and [Kpool](https://github.com/SexGenomicsToolkit/kpool). Scripts were run in the following order:

- jelly_count_female.sh
- jelly_count_male.sh
- jellyfish_dump_female.sh
- jellyfish_dump_male.sh
- merge_table.sh
- filter_table.sh

## Generate basic figure

Data and an R script to generate the base figure included in the paper are provided in `figure`. You only need to replace the folder path with that of the `figure` folder in the R script to replicate the figure.
