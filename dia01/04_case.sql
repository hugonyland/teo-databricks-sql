-- Databricks notebook source
SELECT *,

       CASE WHEN descUF = 'SP' THEN 'paulista'
         WHEN descUF = 'RJ' THEN 'fluminense'
         WHEN descUF = 'PR' THEN 'paranaense'
         ELSE 'outros'
       END AS descNacionalidade
       
FROM silver_olist.cliente

-- Leia-se: 

-- COMMAND ----------

SELECT *,

       CASE 
         WHEN descUF = 'SP' THEN 'paulista'
         WHEN descUF = 'RJ' THEN 'fluminense'
         WHEN descUF = 'PR' THEN 'paranaense'
         ELSE 'outros'
       END AS descNacionalidade,
       
      CASE
      WHEN descCidade LIKE '%sao%' THEN 'tem sao no nome'
      ELSE 'nao tem sao no nome'
      END AS descCidadeSao
       
FROM silver_olist.cliente

-- COMMAND ----------

SELECT *,
  
      CASE 
        WHEN descUF IN ('SP', 'RJ', 'MG', 'ES') THEN 'sudeste'
      END AS descRegiao

FROM silver_olist.vendedor

