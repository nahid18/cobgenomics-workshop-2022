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

#### 4. Run the script
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

#### 4. Run the script
```
bash quality.sh
```