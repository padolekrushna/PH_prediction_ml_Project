import sys
import subprocess

notebook_path = "ph_prediction.ipynb"
output_path = "output.ipynb"

subprocess.run([
    "jupyter", "nbconvert", "--to", "notebook", "--execute",
    "--inplace", "--output", output_path, notebook_path
], check=True)
