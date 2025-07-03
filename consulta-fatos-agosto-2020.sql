SELECT *
FROM `case.dataset.cat_facts`
WHERE EXTRACT(YEAR FROM updated_at) = 2020
  AND EXTRACT(MONTH FROM updated_at) = 8;


/*Talvez nao funcione pq a api nao esta mais fornecendo ess informação de data, 
entao, eu criei essas campos via script com a data gerada de hoje, 03/07/2025, 
mas é só trocar o filtro na query para data gerada que é pra funcionar */