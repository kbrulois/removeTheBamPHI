# NAME

removedTheBamPHI.sh - Remove potentially identifiable sequencing data from bam files. 

# SYNOPSIS

    removedTheBamPHI.sh file.bam 

# DESCRIPTION

**removedTheBamPHI.sh file** replaces the string in the SEQ column of 
Sequence Alignment/Map files with a repeated string of * of the same length. The 
result is saved as a bam file (with "_deid" appended to the file name). The 
resulting bam file lacks identifiable sequencing information but is still 
compatible with many downstream analyses, including differential splicing 
analysis. 

# USAGE

Example:

    removedTheBamPHI.sh /data/test.bam
    samtools view test.bam | tail
    samtools view test_deid.bam | tail 

![Single-nucleotide polymorphisms (red lines; test.bam) are removed by removedTheBamPHI.sh (test_deid.bam)](https://github.com/kbrulois/removeTheBamPHI/data/igv_snapshot_ABCA2_hg38.pdf)
Format: ![Alt Text](url)


# DEPENDENCIES

Uses samtools and awk.

# AUTHOR

Written by Kevin Brulois
