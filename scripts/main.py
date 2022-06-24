import pandas as pd
from pathlib import Path

#Constantes
ROOT = Path('.').resolve()
DATA_RAW_PATH = ROOT.joinpath('data', 'raw')
DATA_RAW = str(list(DATA_RAW_PATH.iterdir())[0])


def read_excel(file: str, sheet_name: str) -> pd.DataFrame:

    df = pd.read_excel(file, sheet_name=sheet_name)
    return df

cliente = read_excel(DATA_RAW, 'Cliente')


print(cliente.head())