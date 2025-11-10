SELECT count(DtCriacao),
       count(DISTINCT idCliente)

       -- count distinct idcliente pegou os valores de clientes que não se repetiu


FROM transacoes

WHERE DtCriacao like '2025-07%' 



