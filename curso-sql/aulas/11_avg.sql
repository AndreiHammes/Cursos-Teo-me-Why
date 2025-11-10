-- avarage 
-- round arredondou
SELECT round(avg(qtdePontos),2) AS MediaPontos,
        min(qtdePontos) AS MinCarteira,
        max(qtdePontos) AS MaxCarteira


FROM clientes
