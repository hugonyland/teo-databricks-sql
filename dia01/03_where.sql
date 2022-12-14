-- Databricks notebook source
SELECT *
FROM silver_olist.pedido

WHERE descSituacao = 'canceled'


-- LIMIT 100

-- Leia-se: Selecione todas colunas da tabela silver_olist.pedido onde a situação do pedido seja cancelado.


-- COMMAND ----------

SELECT *
FROM silver_olist.pedido

WHERE descSituacao = 'shipped'
AND year(dtPedido) = '2018'

-- LIMIT 100

-- Leia-se: Selecione todas colunas da tabela silver_olist.pedido onde a situação do pedido seja enviado de 2018.


-- COMMAND ----------

SELECT *
FROM silver_olist.pedido

WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND year(dtPedido) = '2018'


-- LIMIT 100

-- Leia-se: Selecione todas colunas da tabela silver_olist.pedido onde a situação do pedido seja enviado ou cancelados de 2018.


-- COMMAND ----------

SELECT *
FROM silver_olist.pedido

WHERE descSituacao IN ('shipped', 'canceled')
AND year(dtPedido) = '2018'

-- Leia-se: Selecione todas colunas da tabela silver_olist.pedido onde a situação do pedido seja enviado ou cancelados de 2018. (Usando o comando IN)


-- COMMAND ----------

SELECT *,
      datediff (dtEstimativaEntrega, dtAprovado)
      
FROM silver_olist.pedido

WHERE descSituacao IN ('shipped', 'canceled')
AND year(dtPedido) = '2018'
AND datediff (dtEstimativaEntrega, dtAprovado) > 30

-- Leia-se: Selecione todas as colunas (exibindo uma coluna nova, mas não criando-a no banco), da tabela silve_olist.pedido onde as situações dos pedidos sejam enviados OU cancelados E sejam do ano 2018 E a diferença de datas entre a estimativa de entrega e aprovação do pedido seja maior de 30 dias. 
