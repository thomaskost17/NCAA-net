# NCAA-net

This is an attempt to apply deep learning to the NCAA tournamnet. Basketball is one of the most highly documented sports. With so much data existing it beggs the question as to wether a nerual net is capable of learning from these patterns to create a "good" bracket at the end of the season. The prize for good performance is not bad motivation either!

# Data 
The data for this project will be used from the T-Rank website for its conveinence. Additonally, since many of the metrics on here are calculated metrics, this will be in effect doing some preprocessing. The data can be found [here](https://barttorvik.com/trank.php#). Additionally, for this project the data will be stored in a local directory called `data`. For the conveinence of myself and others, this functionality has been included in the `do.sh` script. To request the data be pulled run:

```
./do.sh -d
```

# Envrionment Setup and Choice of API
This project is set up using the conda envrionment package manager. To recreate the envrionment the following commands can be run. First we must create the conda environment:

```
conda create --name NCAA-net python=3.9
```

The required packages can then be installed via the following commands:

```
conda activate NCAA-net
pip install -r requirements.txt
```
At this point you should have a functional python environment identical to the one used in the development of this project. Note, any alternative methods of installing the environment are also acceptable as the requirements.txt file is included.
While the requirements.txt file takes care of the majority of the instillation we must still install Pytorch (chosen so this can easily be run on local machines without the extensive installation Keras requires). 

It should be noted that if you plan to use pytorch to run the project you should install it to fit your system requirements. The command for this can be generated at the [Pytorch Homepage](https://pytorch.org/). For conveinence, if you are running a linux system without GPU, with the `NCAA-net` envrionment active, you may run:

```
pip3 install torch==1.10.2+cpu torchvision==0.11.3+cpu torchaudio==0.10.2+cpu -f https://download.pytorch.org/whl/cpu/torch_stable.html
```

