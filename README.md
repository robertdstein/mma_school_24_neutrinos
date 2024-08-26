# mma_school_24_neutrinos

# Install Instructions

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
