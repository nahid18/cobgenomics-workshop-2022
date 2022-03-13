# Small Microbial Genome Assembly and Quality Evaluation

My second lecture of the Community of Biotechnology Genomics Learning Program 2022.

Video: Will be uploaded soon <br/>
Slide: [lecture6.pdf](https://github.com/nahid18/cobgenomics-workshop-2022/blob/master/lecture-6/lecture6.pdf)

# Complete Process

## Microbial Genome Assembly

#### 1. Create an environment
Create an environment with Python version 3:

```
conda create -n assembly python=3.8 -y
```

*Note: I have set the environment name as `assembly`. You can name it whatever you want to.*

#### 2. Activate that environment
```
conda activate assembly
```

#### 3. Software installation
```
conda install -c bioconda sra-tools fastqc trimmomatic megahit -y
```

##### Learn more about the installed tools:
sra-tools: [Paper](https://dx.doi.org/10.1093%2Fnar%2Fgkq1019) | [Documentation](https://github.com/ncbi/sra-tools#readme) <br/>
fastqc: [Documentation](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/) <br/>
trimmomatic: [Paper](https://doi.org/10.1093/bioinformatics/btu170) | [Documentation](http://www.usadellab.org/cms/?page=trimmomatic) <br/>
megahit: [Paper](https://doi.org/10.1093/bioinformatics/btv033) | [Documentation](https://github.com/voutcn/megahit#readme) <br/>

#### 4. Run the script
The code for the microbial genome assembly process is available in the `assembly.sh` file. Open that file to see the execution code.
```
bash assembly.sh
```


## Assembly Quality Evaluation

#### 1. Create separate environment
Create another environment with Python version 2:

```
conda create -n quality python=2.7 -y
```

*Note: I have set the environment name as `quality`. You can name it whatever you want to.*

#### 2. Activate that environment
```
conda activate quality
```

#### 3. Quast software installation
```
conda install -c bioconda quast -y
```

##### Learn more about the installed tool:
quast: [Paper](https://doi.org/10.1093/bioinformatics/btt086) | [Documentation](http://quast.sourceforge.net/docs/manual.html) <br/>

#### 4. Run the script
The code for the assembly quality evalution process is available in the `quality.sh` file. Open that file to see the execution code.
```
bash quality.sh
```
