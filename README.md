# mma_school_24_neutrinos

# Install Instructions

0. Start downloading the ZTF data (it'll take ages...)

    ```
    https://ztf.uw.edu/alerts/public/ztf_public_20191001.tar.gz 
    ```
Also try downloading https://docs.anaconda.com/miniconda/

The rest of the installation instructions assume you have anaconda installed.
If not, you can either install it, or scroll down and use the docker instructions.

1. Clone the repository
    ```bash
    git clone https://github.com/robertdstein/mma_school_24_neutrinos.git
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

These instructions are similar to the Gamma exercises, but with a few modifications.

1. Clone the repository

    ```bash
    git clone https://github.com/robertdstein/mma_school_24_neutrinos.git
   ```
   
2. Move the ZTF data to the mma_school_24_neutrinos folder

    ```bash
    mv /path/to/ztf/data mma_school_24_neutrinos/data
    ```
   
3. Build the docker image

    ```bash
   cd mma_school_24_neutrinos
   docker build --platform linux/amd64 -t nuclass .
   ```
   
4. Run the docker image

    ```bash
    docker run -p 8888:8888 -v $(pwd):/workspace nuclass
    ```