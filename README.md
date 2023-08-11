# datafin

The objective this project is study time series of cryptocurrencies.

## To Build enviroment in Anaconda
 
 ```
 conda create --name "name_env" 
 conda info --envs
 conda activate "nome_env"
 conda deactivate
 source ~/.bashrc  # init anaconda base
 ```

# Activate R:

```
conda activate r-environment
```

# Update R:

```
conda install -c conda-forge r-base=4.X.X
```

## Scripts:

```
source env_init.sh    # To initialization the enviroment
source stopped_env.sh # Deactivating the enviroment
./jupyter_init.sh     # To initialization the notebook
./gitScript.sh        # To commit code
```
## Install packages:

```
conda install -c conda-forge "name_package"
``` 
## To open jupyter notebook:
```
 jupyter notebook --port=8889 --no-browser
```
## Build script Shell
```
chmod +x "name_script.sh"
```
