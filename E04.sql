-- Encontre todos os clientes cujo nome começa com a letra 'A'.

select * from clientes where nome like 'A%'

-- Calcule o valor total de pedidos para cada cliente.

select sum(valor) from pedidos

-- Encontre a média de idade dos clientes em cada cidade.

select avg(idade) from clientes