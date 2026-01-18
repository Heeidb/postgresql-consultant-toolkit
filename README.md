#Este projeto não foca apenas na criação de tabelas, mas na **saúde e manutenção** do ambiente, alinhado com práticas de prevenção e monitoramento.


#Objetivo: Simular o atendimento a um cliente que precisa de 

> 1.  Estruturação inicial do banco de dados.
> 2.  Scripts de diagnóstico para monitorar a saúde do ambiente.
> 3.  Rotinas de manutenção preventiva.


#ESTRUTURA

| `01_setup_ambiente.sql`  **Cenário:** Criação do ambiente do cliente (Simulação de E-commerce) com dados para teste. 

| `02_diagnostico_health.sql`  **Monitoramento:** Queries que um consultor rodaria para verificar o tamanho das tabelas e conexões ativas.

| `03_manutencao_preventiva.sql`  **Prevenção:** Scripts essenciais de limpeza (`VACUUM`) e indexação para garantir performance. 



#COMPETENCIAS

> **SQL Fundamental:** DDL e DML aplicados.
> **Organização:** Scripts numerados e comentados para facilitar o pareamento com o time.
> **Foco em Monitoramento:** Uso de tabelas de sistema (`pg_stat_activity`, `pg_database`) para entender o comportamento do banco.


#COMO UTILIZAR

Em um ambiente PostgreSQL (Local ou Linux):
1.  Execute o `01_setup_ambiente.sql` para gerar a massa de dados.
2.  Use o `02_diagnostico_health.sql` para extrair métricas do ambiente.
3.  Aplique o `03_manutencao_preventiva.sql` como sugestão de melhoria.





