#Questao 1 - extração de dados da API e salvar os dados no csv

import requests
import pandas as pd

url = "https://catfact.ninja/facts?limit=100"  # Limite pode ser ajustado

response = requests.get(url)
data = response.json()

facts = data["data"]  # A chave dos dados varia conforme a API, verifique na documentação

df = pd.DataFrame(facts)
df.to_csv("cat_facts.csv", index=False)
print("Arquivo CSV salvo com sucesso!")
