# ANN

#### Overview about Perceptron

<p align="jutify">
The objective this project is to study the Artificial Neural Network using that Perceptron.
The figure below shows the structure of perceptron. The input values <b>(x, i=1,..., d)</b> with its weights <b>(w, i=1,...,d)</b> are combinated for result induce field values, that values are scaled by using activation function <b>(sigma or degree function)</b> to values 0 or 1.
**Equation of Neuron**
$$\left(y^0) =(\sum_{i=1}^d (x_i*b_i )\right)$$
Though a feedforward process the calibration of new weights and bias can be realized and this result in the training of network for prediction or learning the solution of problem. This mean that network is ready for to identify values how AND, XOR or any problem that can be linear sepated. 
</p>

#### Structure of Perceptron

![Alt text](image.png)

### To Build enviroment in Anaconda
 
```
conda create --name "name_env" 
conda info --envs
conda activate "nome_env"
conda deactivate
source ~/.bashrc               # init anaconda base
```

### Activate R:

```
conda activate r-environment
```

### Update R:

```
conda install -c conda-forge r-base=4.X.X
```

### Scripts:

```
source init.sh    # To initialization the enviroment
source stop.sh    # Deactivating the enviroment
source deploy.sh  # To initialization the deployment
```
### Install packages:

```
conda install -c conda-forge "name_package"
``` 
### To open jupyter notebook:
```
jupyter notebook --port=8889 --no-browser
```
### Build script Shell
```
chmod +x "name_script.sh"
```