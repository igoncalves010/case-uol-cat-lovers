CREATE TABLE `case.dataset.cat_facts` (
  fact_id INT,
  fact TEXT,
  length INT64,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
)
PARTITION BY
  TIMESTAMP_TRUNC(created_at, DAY) --particao por data de criação, extraindo somente o dia