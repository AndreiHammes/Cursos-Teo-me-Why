SELECT idCliente,
       qtdePontos,
       CASE
          WHEN QtdePontos <= 500 THEN 'Ponei'
          WHEN QtdePontos > 500 AND QtdePontos <= 1000 THEN 'Ponei Premium'
          WHEN qtdePontos > 1000 AND qtdePontos <= 5000 THEN 'Mago Aprendiz'
          WHEN QtdePontos > 5000 AND qtdePontos <= 10000 THEN 'Mago Mestre'
          ELSE 'Mago Supremo'
        END AS NomeGrupo,

        CASE
          WHEN qtdePontos <= 1000 THEN 1
          ELSE 0
        END AS flponei,

        CASE 
          WHEN qtdePontos > 1000 THEN 1
          ELSE 0
        END AS flmago

FROM clientes

ORDER BY qtdePontos DESC