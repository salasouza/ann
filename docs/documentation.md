
## Documentation to setup enviroment:

### 1. To Build enviroment in Anaconda
 
```
conda create --name "name_env" 
conda info --envs
conda activate "nome_env"
conda deactivate
source ~/.bashrc               # init anaconda base
```

### 2. Activate R:

```
conda activate r-environment
```

### 3. Update R:

```
conda install -c conda-forge r-base=4.X.X
```

### 4. If you to want building Scripts:

```
source init.sh    # To initialization the enviroment
source stop.sh    # Deactivating the enviroment
source deploy.sh  # To initialization the deployment
```
### 5. Install packages in Conda enviroment:

```
conda install -c conda-forge "name_package"
``` 
### 6. If you quant open jupyter notebook:
```
jupyter notebook --port=8889 --no-browser
```
### 7. Build script Shell
```
chmod +x "name_script.sh"
```

### 8. Requirements for to execute script R:

```
Packages:
ggplot2
glue

install.packages('package')
```
