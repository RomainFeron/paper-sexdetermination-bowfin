# Filtering 1
kpool filter -i bowfin_merged_kmer_table -o female_specific_kmer -s F --min-het 25 --max-hom 5
kpool filter -i bowfin_merged_kmer_table -o male_specific_kmer -s M --min-het 25 --max-hom 5

# Filtering 2
kpool filter -i bowfin_merged_kmer_table -o female_specific_kmer_15_2 -s F --min-het 15 --max-hom 2
kpool filter -i bowfin_merged_kmer_table -o male_specific_kmer_15_2 -s M --min-het 15 --max-hom 2

# Filtering 3
kpool filter -i bowfin_merged_kmer_table -o female_specific_kmer_15_0 -s F --min-het 15 --max-hom 0
kpool filter -i bowfin_merged_kmer_table -o male_specific_kmer_15_0 -s M --min-het 15 --max-hom 0
