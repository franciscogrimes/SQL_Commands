-- Função Agregada: Encontre a média de idade dos clientes que têm pedidos com valor total superior a 300,00.

SELECT AVG(c.idade) AS media_idade
FROM clientes c
WHERE c.cliente_id IN (
    SELECT p.cliente_id
    FROM pedidos p
    GROUP BY p.cliente_id
    HAVING SUM(p.valor_pedido) > 300
);


Subconsulta: Liste todos os produtos que foram pedidos mais de uma vez.

SELECT produto_id, nome_produto
FROM produtos
WHERE produto_id IN (
    SELECT produto_id
    FROM itens_pedido
    GROUP BY produto_id
    HAVING COUNT(*) > 1
);