# Dockerfile
FROM python:3.12-slim

# Configs básicas e cache do pip desabilitado
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1 \
    PYTHONPATH=/app

# Diretório de trabalho padrão
WORKDIR /app

# Dependências de sistema (compilação de numpy/scikit-learn, etc.)
RUN apt-get update -y && apt-get install -y --no-install-recommends \
    build-essential gcc g++ git \
 && rm -rf /var/lib/apt/lists/*

# Instala as libs Python primeiro (melhor cache)
COPY requirements.txt .
RUN python -m pip install --upgrade pip && pip install -r requirements.txt

# Copia o restante do projeto
COPY . .

# Comando padrão: testes (pode sobrescrever no docker compose)
CMD ["pytest", "-q"]
