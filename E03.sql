-- Insira um novo cliente na tabela clientes com os seguintes dados: nome: 'Lucas Lima', cidade: 'Salvador', idade: 29.
insert into clientes(nome, cidade, idade) values('Lucas Lima', 'Salvador', 29)

-- Atualize o campo cidade do cliente com cliente_id = 3 para 'Fortaleza'.

UPDATE clientes SET cidade = "Fortaleza" WHERE cliente_id = 4;

-- Delete todos os pedidos que têm valor inferior a 150.00.

DELETE FROM pedidos WHERE valor < 150;