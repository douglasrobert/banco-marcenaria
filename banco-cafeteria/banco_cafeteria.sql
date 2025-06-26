-- Criação da tabela de produtos
CREATE TABLE IF NOT EXISTS produtos (
  id_produto INTEGER PRIMARY KEY,
  nome TEXT NOT NULL,
  preco REAL NOT NULL,
  estoque INTEGER NOT NULL
);

-- Inserção de 3 cafés especiais como produtos
INSERT INTO produtos VALUES (1, 'Café Especial Caramelo 250g', 59.00, 20);
INSERT INTO produtos VALUES (2, 'Café Especial Microlote Caparaó 250g', 68.00, 15);
INSERT INTO produtos VALUES (3, 'Café Especial Microlote Biomas Brasileiros 250g', 80.00, 10);

-- Criação da tabela de pedidos
CREATE TABLE IF NOT EXISTS pedidos (
  id_pedido INTEGER PRIMARY KEY,
  cliente TEXT NOT NULL,
  data_pedido TEXT NOT NULL,
  id_produto INTEGER,
  FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

-- Inserção de 3 pedidos atualizados
INSERT INTO pedidos VALUES (1, 'João da Silva', '2025-06-01', 1); -- Café Caramelo
INSERT INTO pedidos VALUES (2, 'Maria Oliveira', '2025-06-05', 2); -- Caparaó
INSERT INTO pedidos VALUES (3, 'Carlos Santos', '2025-06-10', 3); -- Biomas Brasileiros
