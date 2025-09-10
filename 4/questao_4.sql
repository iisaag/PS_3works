CREATE VIEW relatorio_vendas_diarias AS
SELECT 
    v.data_venda,
    p.nome_produto,
    SUM(p.preco * v.quantidade) AS total_faturado
FROM vendas v
JOIN produtos p ON v.produto_id = p.id
GROUP BY v.data_venda, p.nome_produto;
