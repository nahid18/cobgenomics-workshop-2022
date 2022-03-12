SRA="SRR13722033"
ADAPTER="data/adapter_pe.fa"

# Create directories
mkdir -p sra fastqc trimmomatic trimmed_fastqc


# Download the data
fastq-dump --split-files --outdir sra --gzip $SRA

# Define fastq files
fastq_1="sra/${SRA}_1.fastq.gz"
fastq_2="sra/${SRA}_2.fastq.gz"


# Quality control
fastqc -o fastqc $fastq_1 $fastq_2


# Define files for trimmomatic
pgz_1="trimmomatic/${SRA}_1P.fastq.gz"
ugz_1="trimmomatic/${SRA}_1U.fastq.gz"
pgz_2="trimmomatic/${SRA}_2P.fastq.gz"
ugz_2="trimmomatic/${SRA}_2U.fastq.gz"


# Trim with trimmomatic (paired end)
trimmomatic PE $fastq_1 $fastq_2 $pgz_1 $ugz_1 $pgz_2 $ugz_2 ILLUMINACLIP:"${ADAPTER}":2:40:15 SLIDINGWINDOW:4:20 MINLEN:25


# Quality control of the trimmed files
fastqc -o trimmed_fastqc $pgz_1 $pgz_2


# Megahit assembly
megahit -1 ${pgz_1} -2 ${pgz_2} -o megahit_out
