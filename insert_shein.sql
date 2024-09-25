select * from shein.endereco

INSERT INTO shein.endereco (cep, bairro, cidade, uf) VALUES 
('12345678', 'Centro', 'São Paulo', 'SP'),
('87654321', 'Copacabana', 'Rio de Janeiro', 'RJ'),
('11111111', 'Savassi', 'Belo Horizonte', 'MG'),
('22222222', 'Centro', 'Curitiba', 'PR'),
('33333333', 'Asa Sul', 'Brasília', 'DF');

select * from shein.categoria

INSERT INTO shein.categoria (nome_cate, ds_categoria) VALUES 
('Eletrônicos', 'Categoria para produtos eletrônicos'),
('Roupas', 'Categoria para vestuário'),
('Livros', 'Categoria para literatura'),
('Móveis', 'Categoria para móveis'),
('Beleza', 'Categoria para produtos de beleza');

select * from shein.login

INSERT INTO shein.login (email, login, tabela) VALUES 
('cliente1@exemplo.com', 'cliente1', 'C'),
('cliente2@exemplo.com', 'cliente2', 'C'),
('funcionario1@exemplo.com', 'funcionario1', 'F'),
('cliente3@exemplo.com', 'cliente3', 'C'),
('cliente4@exemplo.com', 'cliente4', 'C');

INSERT INTO shein.login (email, login, tabela) VALUES 
('cliente6@exemplo.com', 'cliente6', 'F');

select * from shein.cliente

INSERT INTO shein.cliente (nome_cp, cpf, dt_nascimento, sexo, idlogin) VALUES 
('João Silva', '12345678901', '1980-01-01', 'M', 1),
('Maria Oliveira', '23456789012', '1990-02-02', 'F', 2),
('Carlos Souza', '34567890123', '1985-03-03', 'M', 4),
('Ana Lima', '45678901234', '1995-04-04', 'F', 5),
('Paula Mendes', '56789012345', '1975-05-05', 'F', 3);

select * from shein.produto

INSERT INTO shein.produto (qtestoque, vl_unitario, idcategoria, dcproduto, nmproduto, dt_fabricacao) VALUES 
(50, 299.99, 1, 'Smartphone Android', 'Smartphone X', '2024-01-10'),
(30, 59.99, 2, 'Camiseta de algodão', 'Camiseta Branca', '2024-02-15'),
(100, 15.99, 3, 'Livro de Ficção', 'O Livro das Sombras', '2023-12-01'),
(20, 1500.00, 4, 'Sofá 3 lugares', 'Sofá Conforto', '2023-11-20'),
(70, 29.99, 5, 'Shampoo para cabelos secos', 'Shampoo ABC', '2024-03-01');

UPDATE shein.produto
SET qtestoque = qtestoque + 50
WHERE idproduto = 3;


select * from shein.cliente_endereco

INSERT INTO shein.cliente_endereco (idendereco, idcliente, num_endereco, complemento_ed) VALUES 
(1, 6, '101', 'Apto 1'),
(2, 7, '202', 'Casa 2'),
(3, 8, '303', 'Bloco 3'),
(4, 9, '404', 'Cobertura'),
(5, 10, '505', 'Sala 5');

select * from shein.usuario_funcionario

INSERT INTO shein.usuario_funcionario (idlogin, nmfunc, cpffunc) VALUES 
(1, 'Pedro Martins', '67890123456'),
(2, 'Lucas Almeida', '78901234567'),
(3, 'Fernanda Costa', '89012345678'),
(4, 'Marcos Pereira', '90123456789'),
(5, 'Juliana Santos', '01234567890');

INSERT INTO shein.usuario_funcionario (idlogin, nmfunc, cpffunc) VALUES 
(6, 'Lucas Silva', '87823578956');

delete from shein.usuario_funcionario where idusuariofun = 17;

select * from shein.pedido

INSERT INTO shein.pedido (idendereco, idcliente, descricao, valortotal, idusuariofun) VALUES 
(1, 6, 'Compra de smartphone', 299.99, 11),
(2, 7, 'Compra de roupa', 59.99, 12),
(3, 8, 'Compra de livro', 15.99, 13),
(4, 9, 'Compra de sofá', 1500.00, 14),
(5, 10, 'Compra de shampoo', 29.99, 15);

select * from shein.empresa

INSERT INTO shein.empresa (razao_social, nm_fantasia, cnpj, idendereco, email_empresa) VALUES 
('Tech Corp LTDA', 'Tech Store', '12345678000195', 1, 'contato@techstore.com'),
('Moda LTDA', 'Loja de Roupas', '23456789000196', 2, 'contato@lojaderoupas.com'),
('Livraria Nacional', 'Livros e Cia', '34567890000197', 3, 'contato@livrosecia.com'),
('Moveis Brasil LTDA', 'Casa Móveis', '45678900000198', 4, 'contato@casamoveis.com'),
('Beleza Pura LTDA', 'Estilo e Beleza', '56789000000199', 5, 'contato@estiloebeleza.com');

select * from shein.pedido_item

INSERT INTO shein.pedido_item (idpedido, desconto, imposto, acrescimo, frete, valor_total, idproduto, valor_unitario, qtpedido, dt_compra) VALUES 
(11, 0.00, 10.00, 0.00, 20.00, 329.99, 1, 299.99, 1, '2024-04-01'),
(12, 5.00, 3.00, 0.00, 15.00, 72.99, 2, 59.99, 1, '2024-04-02'),
(13, 0.00, 1.50, 0.00, 10.00, 27.49, 3, 15.99, 1, '2024-04-03'),
(14, 50.00, 20.00, 0.00, 40.00, 1610.00, 4, 1500.00, 1, '2024-04-04'),
(15, 2.00, 2.00, 0.00, 5.00, 34.99, 5, 29.99, 1, '2024-04-05');

select * from shein.nota_fiscal

INSERT INTO shein.nota_fiscal (dt_emissao, desconto, imposto, acrescimo, frete, valor_total) VALUES 
('2024-04-01', 0.00, 10.00, 0.00, 20.00, 329.99),
('2024-04-02', 5.00, 3.00, 0.00, 15.00, 72.99),
('2024-04-03', 0.00, 1.50, 0.00, 10.00, 27.49),
('2024-04-04', 50.00, 20.00, 0.00, 40.00, 1610.00),
('2024-04-05', 2.00, 2.00, 0.00, 5.00, 34.99);

select * from shein.nota_fiscal_pedido

INSERT INTO shein.nota_fiscal_pedido (idnotafiscal, idpedido, dt_emissao, desconto, imposto, acrescimo, frete, valor_total) VALUES 
(1, 11, '2024-04-01', 0.00, 10.00, 0.00, 20.00, 329.99),
(2, 12, '2024-04-02', 5.00, 3.00, 0.00, 15.00, 72.99),
(3, 13, '2024-04-03', 0.00, 1.50, 0.00, 10.00, 27.49),
(4, 14, '2024-04-04', 50.00, 20.00, 0.00, 40.00, 1610.00),
(5, 15, '2024-04-05', 2.00, 2.00, 0.00, 5.00, 34.99);

UPDATE shein.nota_fiscal_pedido
SET idnotafiscal = 1
WHERE idnotafiscal = 2;

select * from shein.nota_itens

INSERT INTO shein.nota_itens (idnotafiscal, idpedidoitem) VALUES 
(1, 11),
(2, 12),
(3, 13),
(4, 14),
(5, 15);

UPDATE shein.nota_itens
SET idnotafiscal = 1
WHERE idnotafiscal = 2;

SELECT p.idpedido, 
       p.descricao AS pedido_descricao, 
       p.valortotal AS valor_total_pedido,
       c.nome_cp AS cliente_nome,
       c.cpf AS cliente_cpf,
       e_empresa.nm_fantasia AS empresa_nome_fantasia
FROM shein.pedido p
JOIN shein.cliente c ON p.idcliente = c.idcliente
JOIN shein.endereco e_endereco ON p.idendereco = e_endereco.idendereco
JOIN shein.empresa e_empresa ON e_empresa.idendereco = e_endereco.idendereco;

SELECT cidade, COUNT(*) AS total_enderecos
FROM shein.endereco
GROUP BY cidade
HAVING COUNT(*) >= 1;

INSERT INTO shein.login (email, login, tabela) VALUES 
('clientetemp@exemplo.com', 'clientetemp', 'C')

select * from shein.login

INSERT INTO shein.cliente (nome_cp, cpf, dt_nascimento, sexo, idlogin) VALUES 
('Junior Rocha', '67395630901', '1990-03-02', 'F', 8)

select * from shein.cliente

INSERT INTO shein.endereco (cep, bairro, cidade, uf) VALUES 
('62346778', 'Interior', 'Minas Gerais', 'MG')

select * from shein.endereco

INSERT INTO shein.cliente_endereco (idendereco, idcliente, num_endereco, complemento_ed) VALUES 
(7, 12, '190', 'Apto 9')

INSERT INTO shein.pedido (idendereco, idcliente, descricao, valortotal, idusuariofun) VALUES 
(7, 12, 'Compra de PC Gamer', 799.99, 11)

select * from shein.pedido

INSERT INTO shein.pedido_item (idpedido, desconto, imposto, acrescimo, frete, valor_total, idproduto, valor_unitario, qtpedido, dt_compra) VALUES 
(17, 0.00, 10.00, 0.00, 20.00, 329.99, 1, 299.99, 1, '2024-04-01')

select * from shein.produto

INSERT INTO shein.nota_fiscal (dt_emissao, desconto, imposto, acrescimo, frete, valor_total) VALUES 
('2024-04-01', 0.00, 10.00, 0.00, 20.00, 329.99)

select * from shein.nota_fiscal

INSERT INTO shein.nota_fiscal_pedido (idnotafiscal, idpedido, dt_emissao, desconto, imposto, acrescimo, frete, valor_total) VALUES 
(6, 17, '2024-04-01', 0.00, 10.00, 0.00, 20.00, 329.99)

select * from shein.nota_fiscal_pedido where idnotafiscal = 6; -- um pra um

SELECT 
    nf.idnotafiscal,
    nf.dt_emissao,
    nf.desconto,
    nf.imposto,
    nf.acrescimo,
    nf.frete,
    nf.valor_total AS valor_nota,
    pi.idpedidoitem,
    pi.qtpedido,
    pi.valor_unitario,
    pi.valor_total AS valor_item,
    p.idpedido,
    p.valortotal AS valor_pedido
FROM 
    shein.nota_fiscal nf
JOIN 
    shein.nota_fiscal_pedido nfp ON nf.idnotafiscal = nfp.idnotafiscal
JOIN 
    shein.pedido p ON nfp.idpedido = p.idpedido
JOIN 
    shein.pedido_item pi ON p.idpedido = pi.idpedido
WHERE 
    nf.idnotafiscal = 6;  -- Substitua pelo ID da nota fiscal desejada -- um pra um

SELECT 
    nf.idnotafiscal,
    nf.dt_emissao,
    nf.desconto,
    nf.imposto,
    nf.acrescimo,
    nf.frete,
    nf.valor_total AS valor_nota,
    pi.idpedidoitem,
    pi.qtpedido,
    pi.valor_unitario,
    pi.valor_total AS valor_item,
    p.idpedido,
    p.valortotal AS valor_pedido
FROM 
    shein.nota_fiscal nf
JOIN 
    shein.nota_fiscal_pedido nfp ON nf.idnotafiscal = nfp.idnotafiscal
JOIN 
    shein.pedido p ON nfp.idpedido = p.idpedido
JOIN 
    shein.pedido_item pi ON p.idpedido = pi.idpedido
WHERE 
    nf.idnotafiscal = 1; -- dois pedidos em uma nota

select * from shein.pedido

INSERT INTO shein.pedido_item (idpedido, desconto, imposto, acrescimo, frete, valor_total, idproduto, valor_unitario, qtpedido, dt_compra) VALUES 
(17, 0.00, 10.00, 0.00, 20.00, 329.99, 1, 299.99, 1, '2024-04-01')

UPDATE shein.pedido_item
SET dt_compra = '2024-04-02'
WHERE dt_compra = '2024-04-01';

select * from shein.produto

INSERT INTO shein.nota_fiscal (dt_emissao, desconto, imposto, acrescimo, frete, valor_total) VALUES 
('2024-04-02', 0.00, 10.00, 0.00, 20.00, 329.99)

select * from shein.nota_fiscal

INSERT INTO shein.nota_fiscal_pedido (idnotafiscal, idpedido, dt_emissao, desconto, imposto, acrescimo, frete, valor_total) VALUES 
(6, 17, '2024-04-02', 0.00, 10.00, 0.00, 20.00, 329.99)

DELETE FROM shein.pedido_item
WHERE idpedido = 17 
  AND desconto = 0.00
  AND imposto = 10.00
  AND acrescimo = 0.00
  AND frete = 20.00
  AND valor_total = 329.99
  AND idproduto = 1
  AND valor_unitario = 299.99
  AND qtpedido = 1
  AND dt_compra = '2024-04-01';

INSERT INTO shein.login (email, login, tabela) VALUES 
('ultimocliente@exemplo.com', 'ultimocliente', 'C')

select * from shein.login

INSERT INTO shein.cliente (nome_cp, cpf, dt_nascimento, sexo, idlogin) VALUES 
('Gabriel Oliveira', '88993630901', '1995-01-02', 'M', 9)

select * from shein.cliente

INSERT INTO shein.endereco (cep, bairro, cidade, uf) VALUES 
('78336378', 'Interior', 'São Paulo', 'SP')

select * from shein.endereco

INSERT INTO shein.cliente_endereco (idendereco, idcliente, num_endereco, complemento_ed) VALUES 
(8, 13, '190', 'Apto 9')

INSERT INTO shein.pedido (idendereco, idcliente, descricao, valortotal, idusuariofun) VALUES 
(8, 13, 'Compra de Fone Gamer', 499.99, 11)

select * from shein.pedido

INSERT INTO shein.pedido_item (idpedido, desconto, imposto, acrescimo, frete, valor_total, idproduto, valor_unitario, qtpedido, dt_compra) VALUES 
(18, 0.00, 10.00, 0.00, 20.00, 329.99, 6, 299.99, 1, '2024-04-01')

select * from shein.produto

INSERT INTO shein.produto (qtestoque, vl_unitario, idcategoria, dcproduto, nmproduto, dt_fabricacao) VALUES 
(30, 499.99, 1, 'Fone Gamer', 'Fone Gamer 11', '2024-04-01')

INSERT INTO shein.nota_fiscal (dt_emissao, desconto, imposto, acrescimo, frete, valor_total) VALUES 
('2024-04-01', 0.00, 0.00, 0.00, 0.00, 499.99)

select * from shein.nota_fiscal

INSERT INTO shein.nota_fiscal_pedido (idnotafiscal, idpedido, dt_emissao, desconto, imposto, acrescimo, frete, valor_total) VALUES 
(8, 18, '2024-04-01', 0.00, 00.00, 0.00, 00.00, 499.99)

select * from shein.nota_fiscal_pedido

-------------------------------------

INSERT INTO shein.nota_fiscal (dt_emissao, desconto, imposto, acrescimo, frete, valor_total) 
VALUES ('2024-04-02', 5.00, 15.00, 0.00, 25.00, 520.00);


SELECT * FROM shein.nota_fiscal;


INSERT INTO shein.nota_fiscal_pedido (idnotafiscal, idpedido, dt_emissao, desconto, imposto, acrescimo, frete, valor_total) 
VALUES (9, 18, '2024-04-01', 0.00, 00.00, 0.00, 00.00, 499.99);


INSERT INTO shein.nota_fiscal_pedido (idnotafiscal, idpedido, dt_emissao, desconto, imposto, acrescimo, frete, valor_total) 
VALUES (9, 18, '2024-04-02', 5.00, 15.00, 0.00, 25.00, 520.00);

SELECT * FROM shein.nota_fiscal_pedido WHERE idpedido = 18;
