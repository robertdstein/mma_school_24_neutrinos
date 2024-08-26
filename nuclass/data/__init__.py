"""
Data folder for the nuclass package.
"""
from pathlib import Path
import pandas as pd

data_dir = Path(__file__).parent.resolve()
files_dir = data_dir / "data_files"

# ICECAT-1: IceCube Event Catalog of Alert Tracks
# (copied from https://doi.org/10.7910/DVN/SCRUCD)

icecat1_path = files_dir / "IceCube_Gold_Bronze_Tracks.csv"
icecat1 = pd.read_csv(icecat1_path)