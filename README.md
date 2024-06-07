# Material for AZURE2 R-Matrix Summer School 2024

The AZURE2 material for the [AZURE2 R-Matrix Summer School 2024](https://indico.ph.ed.ac.uk/event/274/). The example include frequentist and bayesian minimizations for the 12C(p,g)13N reaction, in form of Jupyter noteboks. Additionally, other nuclear reactions are included, mostly incomplete, that can be checked and tested as exercise.

## Usage

If a working AZURE2 is installed on the PC and the binary is included in the ```PATH``` variable, the ```python3``` packages in the ```environment.yaml``` file should be installed. Otherwise, it is possible to create the  ```azure2 ``` enviornment with:
```
conda env create -f environment.yaml
```
Once the installation finishes, we can activate the enviornment and launch a Jupyter server session:
```
conda activate azure2
jupyter lab --port 8888 --NotebookApp.token='' --NotebookApp.password=''
```
Now the Jupytor session can be acessed on [http://localhost:8888](http://localhost:8888).

As an alternative to conda and Jupyter, the same packages can be installed thorugh ```pip ``` and the Jupyter can be run through VSCode.

## Docker

In case the AZURE2 binary is not present, the docker container  ```skowrons/azure2 ``` can be used. Run either ```start_linux.sh ``` or  ```start_mac.sh ```, depending on your OS, to set it up. For more info about the docker container, refer to [DockerHub](https://hub.docker.com/repository/docker/skowrons/azure2) website.

# Exercises

In the  ```reactions/12c_pg/ ``` three different notebooks are present. 

The  ```reactions/12c_pg/1_Frequentist.ipynb``` perform the frequentist minimization of the 12C(p,g)13N reaction with the use of [lmfit](https://lmfit.github.io/lmfit-py/index.html) package. As a first exercise, you can run it and check the results. Then try to [change the minimizer](https://lmfit.github.io/lmfit-py/fitting.html) and confront the results. As a second step, try running the minimization with ```scale_covar=True``` and compare the results. Finally, try to sample the initial parameters from a uniform distribution around the starting values and check if the minimizer finds the same answer.

The  ```reactions/12c_pg/2_Bayesian.ipynb``` perform the Markov Chain Monte Carlo of the 12C(p,g)13N reaction with the use of [emcee](https://emcee.readthedocs.io/en/stable/) package. Beware, it could take some time to run it. Check if it reaches the minimum. How many samples to you have to burn? How does it look like compared to the frequentist approach.

The  ```reactions/12c_pg/3_Tempered_Bayesian.ipynb``` perform the Tempered Markov Chain Monte Carlo of the 12C(p,g)13N reaction with the use of [reddemcee](https://github.com/ReddTea/reddemcee) package. It is advised not to run it at school since it requires some hours to run, but anyway it can be a nice example to explore the difference of this technique with respect to the classic Markov Chain Monte Carlo approach.

Finally, in ```reactions/``` examples of other reactions are present. Feel free to adapt the previous notebooks to one of these new cases.