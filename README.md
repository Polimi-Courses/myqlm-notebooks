# myQLM notebooks

## HowTo use the notebooks

### Locally

Before proceeding, check that your python version is supported [here](https://myqlm.github.io/myqlm_specific/install.html#compatibility-matrix).
You can check your python version using

	python3 --version

If your python version is supported, you need to install myqlm on your computer. To install it in your user directories, run

	pip install --user myqlm
	pip install --user jupyter

To display the circuit inside jupyter-notebooks, you can install the following magic

	python -m qat.magics.install

Then, you can clone this repository 

	git clone https://github.com/Polimi-Courses/myqlm-notebooks.git
	cd myqlm-notebooks/
	git checkout polimi2022

and launch the jupyter kernel

	jupyter notebook polimi2022_index.ipynb

### Docker
You can build your own image using the provided `Dockerfile`.

First, clone the repository
	
	git clone https://github.com/Polimi-Courses/myqlm-notebooks.git
	cd myqlm-notebooks/
	git checkout polimi2022

Then, build the image.
	
	docker build -t myqlm-notebooks .

Finally, you can launch the container

	docker run --rm -v <PWD>/:/myqlm -p 1234:1234 myqlm-notebooks

replacing `<PWD>` with the path to the directory containing the notebooks. After that, click on the link provided or copy-paste the link (including the token) in your browser and open the `polimi2022_index.ipynb` file.

    
### MyBinder
It is the suggested solution. It will create a new docker container automatically and open it automatically.

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/Polimi-Courses/myqlm-notebooks/polimi2022?labpath=polimi2022_index.ipynb)

## Documentation

Check out [https://myqlm.github.io](https://myqlm.github.io) for the full documentation.
