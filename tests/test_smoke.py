# tests/test_smoke.py
import os
import pandas as pd

def test_dataset_existe_e_tem_linhas():
    assert os.path.exists("data/movies.csv"), "data/movies.csv não encontrado"
    df = pd.read_csv("data/movies.csv")
    assert len(df) > 0, "dataset vazio"
