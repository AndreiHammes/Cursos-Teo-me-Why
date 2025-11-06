-- SELECT * FROM clientes 
-- ORDER BY qtdePontos DESC 
-- LIMIT 15

SELECT * 
FROM clientes 
WHERE flTwitch = 1
ORDER BY DtCriacao,
         qtdePontos DESC
