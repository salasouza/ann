# ANN

    The objective this project is to study the Artificial Neural Network using that Perceptron.The figure below show that scruture of perceptron.
The input values (x, i=1,..., d) with its weights (w, i=1,...,d) are combinated for result induce filed valures, that values are 



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