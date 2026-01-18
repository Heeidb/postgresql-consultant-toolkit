03_manutencao_preventiva.sql

-- PLANO DE MANUTENÇÃO PREVENTIVA
-- Comandos sugeridos para manter a performance e evitar degradação (Bloat).

-- # 1 VACUUM (Limpeza)
-- Recupera espaço morto deixado por updates e deletes.
-- Importante: Em produção, o autovacuum deve estar configurado, mas este comando força a limpeza.
VACUUM VERBOSE ANALYZE clientes;
VACUUM VERBOSE ANALYZE pedidos;

-- # 2 REINDEX (Manutenção de Índices)
-- Útil caso os índices estejam corrompidos ou inchados.
REINDEX TABLE clientes;

-- # 3 ANÁLISE DE ESTATÍSTICAS
-- Atualiza as estatísticas para que o Query Planner tome melhores decisões.
ANALYZE clientes;
ANALYZE pedidos;