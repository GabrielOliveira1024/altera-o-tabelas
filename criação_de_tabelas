CREATE TABLE clientes (
    id_cli INT PRIMARY KEY,
    nome_cli VARCHAR(100),
    email_cli VARCHAR(100),
    cidade_cli VARCHAR(100)
);

CREATE TABLE produtos (
    id_pro INT PRIMARY KEY,
    nome_pro VARCHAR(100),
    categoria_pro VARCHAR(100),
    preco_pro NUMERIC(10,2),
    estoque_pro INT
);

CREATE TABLE vendas (
    id_ven INT PRIMARY KEY,
    id_cli INT REFERENCES clientes(id_cli),
    data_ven DATE
);

CREATE TABLE itens_de_venda (
    id_iten INT PRIMARY KEY,
    id_ven INT REFERENCES vendas(id_ven),
    id_pro INT REFERENCES produtos(id_pro),
    qtde_pro INT,
    preco_unt NUMERIC(10,2)
);
