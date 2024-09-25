insert into aula1.bairro
	(nmbairro)
values
	('Centro'),
	('Várzea'),
	('Jardim Pimenteiras'),
	('Copacabana');
-- select nmbairro from aula1.bairro = n mostra os indices

insert into aula1.cidade
	(nmcidade)
values
	('Teresópolis'),
	('Petropolis'),
	('Rio de Janeiro');
select * from aula1.cidade order by idcidade;
--update aula1.cidade set uf = 'RJ'
insert into aula1.cidade
	(nmcidade, uf)
values
	('São Paulo', 'SP'),
	('Saquarema', 'RJ');
--delete from aula1.cidade where idcidade > 5
--update aula.cidade set uf = 'BA' where nmcidade = 'Xique Xique'
insert into aula1.cliente
	(nome, cpf, email, dt_nascimento, sexo)
values
	('Diogo', '14467804707', 'diogo@email.com', '2005-05-24', 'M'),
	('Vasco', '24567804437', 'vasco@email.com', '1898-06-29', 'M');
select * from aula1.cliente;

insert into aula1.empresa
	(razao_social, nm_fantasia, cnpj, email)
values
	('Portel Dev', 'Jogos Bons', '2133231313131', 'porteldev@email.com')
select * from aula1.empresa;

insert into aula1.clientes_endereco
	(idcliente, numero_endereco, complemento_end)
values
	(1, '300', 'Apto 105')
select * from aula1.endereco
select * from aula1.clientes_endereco

insert into aula1.endereco
	(cep, endereco, idbairro, idcidade)
values
	('25963550', 'Rua belchior moreira', 3, 1);
select * from aula1.endereco
--select * from aula1.bairro where nmbairro = 'Jardim Pimenteiras'
insert into aula1.marca
	(nome)
values
	('Nike'), ('Piet'), ('Mad')
select * from aula1.marca;

select * from aula1.bairro where nmbairro = 'Jardim Pimenteiras'
update aula1.clientes_endereco set idendereco =
	(select idendereco from aula1.endereco where endereco like 'Rua%')
	where idcliente = 1;

--insert into aula1.clientes_endereco
	--(idendereco, idcliente, numero_endereco, complemento_end)
--values
	--(2, 2, '100', ''),
	--(3, 3, '423', 'Viela 510');

insert into aula1.produto
	(descricao, custo, preco, qtestoque, idmarca, imposto)
values
	('Calça', 50.99, 269.9, 20, 1, 20),
	('Camisa', 90.99, 100.9, 10, 2, 40);
insert into aula1.pedido
	(numero, idendereco, idcliente, idempresa)
values
	('00001',
	(select idendereco from aula1.cliente_endereco where idcliente = 1), 
	1, 1);
select * from aula1.pedido;
insert into aula1.pedido_itens
	(idpedido, idproduto, quantidade, valor_unitario, desconto, valor_total)
values
	((select idpedido from aula1.pedido where numero = '00001'),
	1, 3, 
	(select preco from aula1.produto where idproduto = 1),
	10, 
	((select preco from aula1.produto where idproduto = 1) * 0.9) * 3) ;
	-------------------------------------------------------------------
	((select idpedido from aula1.pedido where numero = '00001'),
	2, 5, 
	(select preco from aula1.produto where idproduto = 2),
	10, 
	((select preco from aula1.produto where idproduto = 2) * 0.9) * 5);
	

	