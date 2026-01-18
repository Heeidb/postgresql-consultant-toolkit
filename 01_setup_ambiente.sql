
--- # Simulando o nosso entorno

CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    data_cadastro DATE DEFAULT CURRENT_DATE
);

CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    cliente_id INT REFERENCES clientes(id),
    valor_total NUMERIC(10,2),
    status VARCHAR(20)
)

INSERT INTO clientes (nome) VALUES ('Empresa A'), ('Empresa B'), ('Empresa C');
INSERT INTO pedidos (cliente_id, valor_total, status) VALUES 
(1, 5000.00, 'finalizado'),
(1, 1200.00, 'pendente'),
(2, 300.00, 'cancelado'),
(3, 8900.00, 'finalizado');