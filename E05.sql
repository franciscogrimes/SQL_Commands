-- Liste todos os pedidos junto com as informações dos clientes, usando um INNER JOIN.

SELECT * FROM pedidos INNER JOIN clientes ON pedidos.cliente_id = clientes.cliente_id;

-- Faça uma consulta que retorna todos os clientes e seus pedidos, incluindo clientes que não fizeram pedidos (use LEFT JOIN).

SELECT * FROM clientes left JOIN pedidos ON clientes.cliente_id = pedidos.cliente_id;

-- Faça uma consulta que retorna todos os produtos e seus itens pedidos, incluindo produtos que não foram pedidos (use RIGHT JOIN).

SELECT * FROM itens_pedidos right JOIN produtos ON itens_pedidos.produto_id = produtos.produto_id;

-- Utilize UNION para combinar duas consultas: uma que retorna clientes de 'São Paulo' e outra que retorna clientes de 'Rio de Janeiro'.

SELECT * FROM clientes where cidade = 'Rio de Janeiro' UNION SELECT * FROM clientes where cidade = 'São Paulo'
