# ☕ Banco de Dados para Marcenaria & Cafeteria Artesanal

Este projeto contém a modelagem e implementação de um banco de dados relacional utilizando **SQLite**, com foco em produtos e pedidos de cafés especiais artesanais. A ideia surgiu a partir da adaptação de um sistema web para uma marcenaria local que também comercializa cafés e itens especiais.

---

## 📌 Objetivo

Criar um banco de dados relacional com duas tabelas (`produtos` e `pedidos`), que armazene as informações básicas de produtos comercializados (cafés artesanais) e os respectivos pedidos realizados.

---

## 🛠 Tecnologias Utilizadas

- **VS Code** (como editor de código)
- **SQLite** (banco de dados local)
- **Extensão SQLite (alexcvzz)** para execução direta no VS Code
- **Git** para controle de versão
- **GitHub** para hospedagem do código

---

## 🗃 Estrutura do Banco de Dados

### Tabela `produtos`

| Campo      | Tipo      | Descrição                                |
|------------|-----------|-------------------------------------------|
| id_produto | INTEGER   | Chave primária (auto-incremento)          |
| nome       | TEXT      | Nome do produto (café)                    |
| preco      | REAL      | Preço do produto                          |
| estoque    | INTEGER   | Quantidade em estoque                    |

### Tabela `pedidos`

| Campo       | Tipo    | Descrição                                |
|-------------|---------|-------------------------------------------|
| id_pedido   | INTEGER | Chave primária (auto-incremento)          |
| cliente     | TEXT    | Nome do cliente                           |
| data_pedido | TEXT    | Data do pedido (formato YYYY-MM-DD)       |
| id_produto  | INTEGER | FK para `produtos(id_produto)`            |

---

---

## 🧪 Como Utilizar no VS Code

### 1. Instalar a extensão SQLite (alexcvzz)

* No VS Code, vá em `Extensões (Ctrl+Shift+X)`
* Pesquise por **SQLite** (autor: `alexcvzz`) e instale

### 2. Criar o Banco

1. Crie um novo arquivo chamado: `cafeteria.db`
2. Crie outro arquivo: `banco.sql` e cole os comandos SQL acima

### 3. Executar o SQL

* Abra o `SQLite Explorer` na lateral esquerda
* Clique em **"Open Database"** → selecione `cafeteria.db`
* Clique com o botão direito no banco → `New Query`
* Cole os comandos do `banco.sql` e pressione `Ctrl+Enter` para executar

### 4. Visualizar Tabelas e Dados

* Expanda `Tables → produtos` ou `pedidos`
* Clique com o botão direito → `Show Table`

---

## 💡 Exemplos de Consultas

sql
-- Ver todos os produtos
SELECT * FROM produtos;

-- Ver pedidos de um cliente específico
SELECT * FROM pedidos WHERE cliente = 'Maria Oliveira';

-- Listar produtos com estoque menor que 15
SELECT * FROM produtos WHERE estoque < 15;


## 📚 Referências

> ASSOCIAÇÃO BRASILEIRA DE NORMAS TÉCNICAS. NBR 6023: Informação e documentação – Referências – Elaboração. Rio de Janeiro, 2018.

> W3Schools – SQL Tutorial: [https://www.w3schools.com/sql/](https://www.w3schools.com/sql/)

> SQLite Documentation: [https://sqlite.org/docs.html](https://sqlite.org/docs.html)

> GitHub Docs: [https://docs.github.com/](https://docs.github.com/)
