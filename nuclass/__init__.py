"""
Central nuclass directory
"""
from pathlib import Path

output_dir = Path(__file__).parent.parent.resolve() / "output"
output_dir.mkdir(exist_ok=True, parents=True)
