-- Databricks notebook source
SELECT COUNT(*) AS nrLinhasNaoNulas -- linhas não nulas
FROM silver_olist.cliente

-- COMMAND ----------

SELECT
    COUNT(*) AS nrLinhasNaoNulas, -- linhas não nulas
    COUNT(idCliente) AS nrIdClienteNaoNulo


FROM silver_olist.cliente

-- COMMAND ----------

SELECT
    COUNT(*) AS nrLinhasNaoNulas, -- linhas não nulas
    COUNT(idCliente) AS nrIdClienteNaoNulo, -- id de clientes distintos
    COUNT(DISTINCT idCliente) AS nrIdClienteDistintos -- id clientes distintos

FROM silver_olist.cliente

-- COMMAND ----------

SELECT
    COUNT(*) AS nrLinhasNaoNulas, -- conta linhas não nulas
    COUNT(idCliente) AS nrIdClienteNaoNulo, -- conta id de clientes distintos
    COUNT(DISTINCT idCliente) AS nrIdClienteDistintos, -- conta id clientes distintos
    
    COUNT(idClienteUnico) AS nrIdClienteUnico, 
    COUNT(DISTINCT idClienteUnico) AS nrIdClienteUnicoDistintos -- conta id de Clientes Unico

FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
      COUNT(*) AS qtLinhas,
      COUNT(DISTINCT idCliente) AS qtClientes,
      COUNT(DISTINCT idClienteUnico) AS qtClientesUnicos
      
FROM silver_olist.cliente

WHERE descCidade IN ('presidente prudente', 'curitiba')

-- COMMAND ----------

SELECT 
    ROUND( AVG(vlPreco),2) AS avgPreco, -- media da coluna vlPreco (Preço médio dos produtos)
    
    INT( PERCENTILE(vlPreco, 0.5)) AS medianPreco,
    
    MAX(vlPreco) AS maxPreco, -- preço máximo da coluna vlPreco
    AVG(vlFrete) AS avgFrete, -- media de coluna vlFrete (Preço médio dos fretes)
    MAX(vlFrete) AS maxPreco, -- preço máximo de frete da coluna vlFrete
    MIN(vlFrete) AS minFrete -- Preço mínimo de frete

FROM silver_olist.item_pedido
