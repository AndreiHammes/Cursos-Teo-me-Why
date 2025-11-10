SELECT 
        sum(qtdePontos),
        
        sum(CASE 
            WHEN qtdePontos > 0 THEN qtdePontos
            END) AS qtdePontosPositivos,
        sum(CASE
            WHEN qtdePontos < 0 THEN QtdePontos
            END) AS qtdePontosNegativos



FROM transacoes

WHERE DtCriacao like '2025-07%'

