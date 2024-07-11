-- Selecione todos os clientes que moram em 'São Paulo'.

select * from clientes where cidade = 'São Paulo'

-- Liste todos os pedidos, ordenados pela data_pedido em ordem decrescente.

select * from pedidos order by data_pedido desc

-- Encontre todos os clientes com idade entre 25 e 35 anos.

select * from clientes where idade >= 25 and idade <= 35