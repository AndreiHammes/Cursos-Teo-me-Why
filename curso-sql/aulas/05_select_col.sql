SELECT idCliente,
        -- qtdePontos,
        -- qtdePontos + 10 AS qtdePontosPlus10,
        -- qtdePontos * 2 AS qtdePontosX2qtdePontos * 2 AS qtdePontosX2
                    -- usamos AS para nomear colunas 
        DtCriacao,
        substr(DtCriacao, 1, 10) AS dataFormathy
FROM clientes