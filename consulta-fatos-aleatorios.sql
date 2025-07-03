SELECT fact, created_at, updated_at
FROM `case.dataset.cat_facts`
WHERE RAND() < 0.10;

/*Para extrair em formato csv pode se utilizar da interface do console 
e especificar o formato ou como no script abaixo: */

EXPORT DATA OPTIONS(
  uri='gs://bucket-de-exportacao/cat_facts_sample_qa_*.csv',
  format='CSV',
  overwrite=true,
  header=true,
  field_delimiter=','
)
AS
SELECT fact, created_at, updated_at
FROM `case.dataset.cat_facts`
WHERE RAND() < 0.10;
