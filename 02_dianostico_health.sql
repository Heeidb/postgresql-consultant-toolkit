02_dianostico_health.sql

-- RELATÓRIO DE MONITORAMENTO E SAÚDE DO BANCO
-- Fazemos scripts para entender o que está acontecendo no servidor (Troubleshooting inicial).

-- # 1. Verificar tamanho do banco de dados (Volumetria)
-- Isso ajuda a planejar backup e storage.
SELECT pg_size_pretty(pg_database_size(current_database())) AS tamanho_atual_db;

-- # 2. Verificar conexões ativas no momento
-- Essencial para identificar se a aplicação do cliente está "floocando" o banco.
SELECT pid, usename, client_addr, state, query 
FROM pg_stat_activity 
WHERE state = 'active';

-- # 3. Listar as 5 tabelas mais pesadas
-- Ajuda a identificar onde focar a otimização.
SELECT 
    relname AS nome_tabela, 
    pg_size_pretty(pg_total_relation_size(relid)) AS tamanho_total
FROM pg_catalog.pg_statio_user_tables 
ORDER BY pg_total_relation_size(relid) DESC
LIMIT 5;