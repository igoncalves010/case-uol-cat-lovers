#Questao 1 - extração de dados da API e salvar os dados no csv

# Questão 1 - Extração de dados da API e salvar os dados no CSV

import requests
import pandas as pd
from datetime import datetime

url = "https://catfact.ninja/facts?limit=100"  # Limite pode ser ajustado

response = requests.get(url)
data = response.json()

facts = data["data"]

# Adiciona campos de data simulados
timestamp = datetime.utcnow().isoformat()

for fact in facts:
    fact["created_at"] = timestamp
    fact["updated_at"] = timestamp

# Converte para DataFrame e salva em CSV
df = pd.DataFrame(facts)
df.to_csv("cat_facts.csv", index=False)

print("✅ Arquivo cat_facts.csv salvo com sucesso!")
