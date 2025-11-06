SELECT idCliente,
        DtCriacao,

        datetime(substr(DtCriacao, 1,16)) AS dataFormatada,
        strftime('%w',substr(DtCriacao,1,16)) AS diaDaSemana
        -- Dia da semana começa no 0 (sunday == domingo, portanto segunda == 1)
FROM clientes