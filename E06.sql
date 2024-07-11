-- Encontre o total de itens pedidos em cada mês.

SELECT
    EXTRACT(MONTH FROM data_pedido) AS mes,
    COUNT(pedido_id) AS total_pedidos
FROM
    pedidos
GROUP BY
    EXTRACT(MONTH FROM data_pedido)
ORDER BY
    mes;

-- Liste os clientes que não têm pedidos associados.

SELECT * FROM clientes left JOIN pedidos ON clientes.cliente_id = pedidos.cliente_id where pedidos.pedido_id IS NULL

-- Encontre o pedido de maior valor.

SELECT MAX(valor) FROM pedidos;


-- Encontre o total de itens pedidos para cada produto.

SELECT
    p.produto_id,
    p.nome_produto,
    SUM(pi.quantidade) AS total_itens_pedidos
FROM produtos p
JOIN itens_pedido pi ON p.produto_id = pi.produto_id
GROUP BY p.produto_id, p.nome_produto;

-- Calcule a soma dos valores dos pedidos para cada cliente que tenha feito mais de um pedido.

SELECT
    c.cliente_id,
    c.nome_cliente,
    SUM(p.valor_pedido) AS soma_valores_pedidos
FROM clientes c
JOIN pedidos p ON c.cliente_id = p.cliente_id
GROUP BY c.cliente_id, c.nome_cliente
HAVING COUNT(p.pedido_id) > 1;

-- Encontre o preço médio dos produtos em cada categoria.

SELECT
    c.categoria_id,
    c.nome_categoria,
    AVG(p.preco) AS preco_medio
FROM categorias c
JOIN produtos p ON c.categoria_id = p.categoria_id
GROUP BY c.categoria_id, c.nome_categoria;


-- Encontre o cliente que fez o pedido de maior valor.

SELECT
    c.cliente_id,
    c.nome_cliente,
    MAX(p.valor_pedido) AS maior_valor_pedido
FROM clientes c
JOIN pedidos p ON c.cliente_id = p.cliente_id
ORDER BY p.valor_pedido DESC
LIMIT 1;