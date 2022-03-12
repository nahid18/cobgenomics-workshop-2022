# Quality evalution with Quast.py

ASSEMBLED="megahit_out/final.contigs.fa"
REF_FASTA="data/MN908947.3.fasta"
REF_GFF="data/ASM985889v3.100.gff3"


quast.py -o quast_out $ASSEMBLED -r $REF_FASTA -g $REF_GFF -t 4 --space-efficient
