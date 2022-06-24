import pandas as pd
from pathlib import Path

#Constantes
ROOT = Path('.').resolve()
DATA_RAW_PATH = ROOT.joinpath('data', 'raw')
DATA_RAW = str(list(DATA_RAW_PATH.iterdir())[0])
SPLIT_DF = ROOT.joinpath('data', 'split')

def read_excel(file: str, sheet_name: str) -> pd.DataFrame:

    df = pd.read_excel(file, sheet_name=sheet_name)
    return df

cliente = read_excel(DATA_RAW, 'Cliente')
descuento = read_excel(DATA_RAW, 'Descuento')
ventas = read_excel(DATA_RAW, 'Ventas')

ventas['ID'] = pd.Series([i for i in range(1, len(ventas)+1)])

cliente.to_csv(str(SPLIT_DF)+'/cliente.csv', index=False)
descuento.to_csv(str(SPLIT_DF)+'/descuento.csv', index=False)
ventas.to_csv(str(SPLIT_DF)+'/ventas.csv', index=False)
