
import runpy
import os
HERE = os.path.dirname(os.path.realpath(__file__))
os.chdir(HERE)

MAIN_FILE = "obf-paymentupdated.py"

if not os.path.isfile(MAIN_FILE):
    raise FileNotFoundError(f"{MAIN_FILE} not found in {HERE}")

runpy.run_path(MAIN_FILE, run_name="__main__")
