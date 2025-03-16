-- Inserindo usuários
INSERT INTO users (id, name, email, password) VALUES
    (UUID(), 'João Silva', 'joao@email.com', 'senha123'),
    (UUID(), 'Maria Oliveira', 'maria@email.com', 'senha456');

-- Inserindo categorias de transações
INSERT INTO categories (id, name, type) VALUES
    (UUID(), 'Salário', 'Receita'),
    (UUID(), 'Alimentação', 'Despesa'),
    (UUID(), 'Transporte', 'Despesa'),
    (UUID(), 'Lazer', 'Despesa');

-- Inserindo métodos de pagamento
INSERT INTO payment_methods (id, name) VALUES
    (UUID(), 'Cartão de Crédito'),
    (UUID(), 'PIX'),
    (UUID(), 'Dinheiro');

-- Inserindo transações de exemplo
INSERT INTO transactions (id, user_id, category_id, payment_method_id, amount, transaction_date, description, type)
VALUES
    (UUID(),
    (SELECT id FROM users WHERE email = 'joao@email.com'),
    (SELECT id FROM categories WHERE name = 'Salário'),
    (SELECT id FROM payment_methods WHERE name = 'PIX'),
    3000.00, NOW(), 'Salário mensal recebido', 'Receita'),

    (UUID(),
    (SELECT id FROM users WHERE email = 'maria@email.com'),
    (SELECT id FROM categories WHERE name = 'Alimentação'),
    (SELECT id FROM payment_methods WHERE name = 'Cartão de Crédito'),
    150.75, NOW(), 'Compra de supermercado', 'Despesa');
