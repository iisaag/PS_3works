SELECT 
    p.nome_produto,
    SUM(v.quantidade) AS total_vendido
FROM produtos p
JOIN vendas v ON p.id = v.produto_id
GROUP BY p.nome_produto
ORDER BY total_vendido DESC;