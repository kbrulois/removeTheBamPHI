# NAME

removeTheBamPHI.sh - Remove potentially identifiable sequencing data from bam files. 

# SYNOPSIS

    removeTheBamPHI.sh file.bam 

# DESCRIPTION

**removeTheBamPHI.sh file** replaces the string in the SEQ column of 
Sequence Alignment/Map files with a repeated string of * of the same length. The 
result is saved as a bam file (with "_deid" appended to the file name). The 
resulting bam file lacks identifiable sequencing information but is still 
compatible with many downstream analyses, including differential splicing 
analysis. 

# USAGE

Example:

    removeTheBamPHI.sh /data/test.bam
    samtools view test.bam | tail
    samtools view test_deid.bam | tail 

![IGV screenshot of test.bam and test_deid.bam](data/igv_snapshot_ABCA2_hg38.pdf)

# DEPENDENCIES

Uses samtools and awk.

# AUTHOR

Written by Kevin Brulois
