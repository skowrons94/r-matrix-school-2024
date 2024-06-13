# Material for AZURE2 R-Matrix Summer School 2024

The AZURE2 material for the [AZURE2 R-Matrix Summer School 2024](https://indico.ph.ed.ac.uk/event/274/). The examples include frequentist and bayesian minimizations for the $^{12}\textup{C}(p,\gamma)^{13}\textup{N}$ reaction in form of Jupyter noteboks. Additionally, other nuclear reactions (mostly incomplete) are included that can be checked and tested as exercise.

## Usage

If a working AZURE2 is installed on the PC and the binary is included in the ```PATH``` variable, the ```python3``` packages in the ```environment.yaml``` file should be installed to properly run the examples. Otherwise, it is possible to create the  ```azure2``` environment with:
```
conda env create -f environment.yaml
```
Once the installation finishes, we can activate the enviornment and launch a Jupyter server session:
```
conda activate azure2
jupyter lab --port 8888 --NotebookApp.token='' --NotebookApp.password=''
```
Now the Jupytor session can be acessed on [http://localhost:8888](http://localhost:8888). If you are using Visual Studio Code, you do not have the launch the Jupyter session since it takes care of it for you.

As an alternative to conda, the same packages can be installed through ```pip``` package manager.

## Docker

In case the AZURE2 binary is not installed, or can not be compiled, the docker container  ```skowrons/azure2``` can be used as an alternative. You should first download and setup up Docker. Then run either ```start_linux.sh``` or  ```start_mac.sh```, depending on your OS. For more information about the container, refer to [DockerHub](https://hub.docker.com/repository/docker/skowrons/azure2) website.

# Exercises

In the  ```reactions/12c_pg/``` two different notebooks are present. 

The  ```reactions/12c_pg/1_Frequentist.ipynb``` performs the frequentist minimization of the $^{12}\textup{C}(p,\gamma)^{13}\textup{N}$ reaction with the use of [lmfit](https://lmfit.github.io/lmfit-py/index.html) package. As a first exercise, you can run it and check the result. Then try to [change the minimizer](https://lmfit.github.io/lmfit-py/fitting.html) and compare the best-fit parameters. Then, try to sample the initial parameters from a uniform distribution around the starting values and check if the minimizer finds the same answer.

The  ```reactions/12c_pg/2_Bayesian.ipynb``` perform the Markov Chain Monte Carlo of the $^{12}\textup{C}(p,\gamma)^{13}\textup{N}$ reaction with the use of [emcee](https://emcee.readthedocs.io/en/stable/) package. Beware, it could take some time to run it. Once finished, check if it reached the minimum. How many samples do you have to burn? How does it look compared to the frequentist approach? Try to change one of the informative priors and see how this affects your result.

Finally, in ```reactions/``` directory examples of other reactions are present. Feel free to adapt the previous notebooks to one of these new cases.