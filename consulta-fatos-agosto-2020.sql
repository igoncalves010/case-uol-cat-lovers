SELECT *
FROM `case.dataset.cat_facts`
WHERE EXTRACT(YEAR FROM updated_at) = 2020
  AND EXTRACT(MONTH FROM updated_at) = 8;
