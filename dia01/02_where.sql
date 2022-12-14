-- Databricks notebook source
SELECT * FROM silver_olist.pedido

-- Leia-se: Selecione TUDO da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido,
       descSituacao
       
FROM silver_olist.pedido

-- Leia-se: Selecione as tabelas idPedido e descSituacao da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido,
       descSituacao
       
FROM silver_olist.pedido

LIMIT 5

-- Leia-se: Selecione as tabelas idPedido e descSituacao da tabela silver_olist.pedido limitando à 5 registros 

-- COMMAND ----------

SELECT *,
        DATEDIFF(dtEstimativaEntrega, dtEntregue) AS qtDiasPromessaEntrega
        
FROM silver_olist.pedido



-- COMMAND ----------


