-- 1 selecione todos os cliente com e-mail cadastrado

SELECT * FROM clientes WHERE flEmail == 1;

-- 2 selecine todas as transações de 50 pontos (exatos) 

SELECT * FROM transacoes
WHERE QtdePontos = 50;

-- nessa tabela transacoes temos a coluna IdCliente, é o mesmo cliente da outra tabela, o nome disso é relacionamento, eu tenho uma relação entre a minha entidade cliente da tabela cliente com a transacao. Na tabela clientes, essa entidade é uma chave primária, onde na tabela clientes ele é um valor único que não pode se repetir e aqui na tabela transacoes o IdTransacao é a chave primária, então o IdCliente na tabela transacoes é a CHAVE ESTRANGEIRA, pois é uma chave primária na tabela dele e nessa tabela ele pode se repetir, temos então essa relação. 

-- 3 Selecione todos os clientes com mais de 500 pontos

SELECT idCliente, qtdePontos FROM clientes WHERE qtdePontos > 500;

-- 4 Selecione produtos que contém 'churn' no nome

SELECT IdProduto, DescNomeProduto FROM produtos
WHERE DescNomeProduto LIKE 'Churn%'; -- o % é um coringa, qualquer valor após o sinal entra, se quisessemos pegar todos os valoes que terminam com pp, usar %pp onde entra todos os valores antes do pp que tenham pp como valor final | se eu sei exatamente o que eu quero buscar, não utilizar o like pois é muito mais custoso do que as outras opções, daria pra usar o IN (valor1,valor2), a melhor forma então para realizar essa query onde eu quero pegar todos os valores que contenham 'churn' seria referenciar pela coluna 'DescCategoriaProduto', onde temos os valores com 'churn_model':

SELECT IdProduto, DescNomeProduto FROM produtos
WHERE DescCategoriaProduto = 'churn_model' 