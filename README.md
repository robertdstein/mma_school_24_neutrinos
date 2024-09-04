# mma_school_24_neutrinos

# Install Instructions

0. Start downloading the ZTF data (it'll take ages...)

    ```
    https://ztf.uw.edu/alerts/public/ztf_public_20191001.tar.gz 
    ```

The rest of the installation instructions assume you have anaconda installed ().
If not, you can either install it, or scroll down and use the docker instructions.

1. Clone the repository
    ```bash
    git clone git@github.com:robertdstein/mma_school_24_neutrinos.git
    ```
2.  Create a conda environment

    ```bash
    conda create -n nuclassenv python=3.11
    ```
    
3. Activate the conda environment

    ```bash
    conda activate nuclassenv
    ```
   
4. Install the required packages

    ```bash
   cd mma_school_24_neutrinos
   pip install -e .
    ```

5. Install the jupyter kernel

    ```bash
    python -m ipykernel install --user --name nuclassenv
    ```

6. Start the jupyter notebook

    ```bash
    jupyter notebook
    ```
   
## Alternative: Docker Instructions

1. Clone the repository

    ```bash
    git clone
   