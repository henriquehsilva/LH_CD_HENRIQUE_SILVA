# 🎬 PProductions — Movie Data Analysis

Análise exploratória e modelagem preditiva em uma base cinematográfica (CSV) para orientar o estúdio PProductions sobre qual tipo de filme desenvolver. O projeto inclui EDA, NLP em sinopses (Overview), modelagem para prever a nota IMDb, e empacotamento do modelo em .pkl.

**Stack principal:** Python 3.12, pandas, scikit-learn, numpy, matplotlib/plotly, nltk/spacy (NLP opcional), pytest.
**Entrega:** relatórios (Notebook/PDF), código de modelagem, e modelo salvo .pkl.

## 📌 Objetivo
Analisar base de dados cinematográfica (CSV) e responder:
- Qual filme recomendar sem conhecer a pessoa?
- Quais fatores estão ligados ao faturamento alto?
- Insights da sinopse (`Overview`) → prever gênero?
- Como prever a nota IMDb?

## 📁 Estrutura do repositório


```text
pproductions-movie-analysis/
├─ data/
│  └─ movies.csv                           # base fornecida pelo cliente
├─ notebooks/
│  ├─ 01_eda.ipynb                         # EDA e hipóteses
│  ├─ 02_text_overview.ipynb               # NLP na coluna Overview (inferência de gênero)
│  └─ 03_modeling_imdb.ipynb               # Modelagem de IMDB_Rating (regressão)
├─ reports/
│  └─ EDA_Report.pdf                       # export do notebook
├─ models/
│  └─ imdb_model.pkl                       # modelo salvo
├─ src/
│  ├─ __init__.py                          # (atenção: dois underscores antes e depois de init)
│  ├─ preprocessing.py                     # limpeza, parsing (ex.: Runtime → minutos, Gross → numérico)
│  ├─ features.py                          # engenharia de atributos (One-Hot, TF-IDF, etc.)
│  ├─ modeling.py                          # treino/validação de modelos
│  └─ predict.py                           # carregamento do modelo e inferência
├─ tests/
│  └─ test_modeling.py                     # testes unitários (ex.: shape, pipeline, inferência)
├─ scripts/
│  ├─ test.sh                              # roda pytest via Docker (ou fallback)
│  └─ train.sh                             # treino + salvamento do modelo
├─ requirements.txt
├─ pytest.ini
├─ Dockerfile
├─ docker-compose.yml
└─ README.md
```

## 🔧 Requisitos

 - Opcional (rodar local):
    - Python 3.12 (recomendado)
    - pip e virtualenv ou Conda

 - Com Docker (recomendado para reprodutibilidade):
    - Docker Desktop
    - Docker Compose v2

## 🚀 Instalação e execução

Opção A) Rodar com Docker (recomendado)

```bash
    docker compose up --build
```
