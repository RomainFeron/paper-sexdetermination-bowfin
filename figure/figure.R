library(sgtr)
library(ggplot2)
library(cowplot)

setwd("<path_to_directory>")

depth <- plot_manhattan("default_window.tsv",
               chromosomes_file = "chromosomes.tsv",
               tracks = list(single_metric_track("Depth_ratio",
                                                 label = "F/M depth ratio")),
               chromosomes_as_numbers = TRUE)

fst <- plot_manhattan("default_window.tsv",
                        chromosomes_file = "chromosomes.tsv",
                        tracks = list(single_metric_track("Fst",
                                                          label = expression(bold(paste("F/M F"["ST"]))),
                                                          colors = c("grey20", "grey70"))),
                        chromosomes_as_numbers = TRUE)

snps_m <- plot_manhattan("default_window.tsv",
                      chromosomes_file = "chromosomes.tsv",
                      tracks = list(single_metric_track("Snps_males",
                                                        label = "M. SNPs",
                                                        colors = c("dodgerblue1", "dodgerblue4"))),
                      chromosomes_as_numbers = TRUE)

snps_f <- plot_manhattan("default_window.tsv",
                         chromosomes_file = "chromosomes.tsv",
                         tracks = list(single_metric_track("Snps_females",
                                                           label = "F. SNPs",
                                                           colors = c("firebrick1", "firebrick4"))),
                         chromosomes_as_numbers = TRUE)

combined <- plot_grid(fst[[1]], snps_f[[1]], depth[[1]], snps_m[[1]], ncol = 2,
                      labels = c("A", "C", "B", "D"))

ggsave("figure.png", combined, width = 16, height = 12)
