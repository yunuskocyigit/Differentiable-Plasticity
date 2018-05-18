# Differentiable-Plasticity
Training plastic neural networks 

## Available notebooks

#### NetworkFromKaggle.ipynb
A Kernel available on Kaggle (original can be found here https://www.kaggle.com/paultimothymooney/simpsons-recognition-method-comparison) trains a network on the data. The intention is to use this notebook as a starting ground for the project, and as a poit of reference when measuring the performance of models that utilize Differentiable Plasticity.

## How to use the notebooks

Currently all notebooks are running on the same data (this is something that might change if we want to see how DP performs on different types of datasets). The data is available on https://www.kaggle.com/alexattia/the-simpsons-characters-dataset. In order to run the notebooks, create a folder called 'data' on the same level of the folder hierarchy as the 'notebooks' folder. Note that git will ignore this folder so it has to be downloaded from the source. Before running the kernels make sure that you have extracted the folder and all of it's contents. Finally double check that the _test\_path_ and the _train\_path_ variables in the first cell of the notebook match the intended folders on your device. 
