--create database Shein_Tudo;

create schema shein;

create table shein.endereco (
	idendereco serial primary key,
	cep varchar(8) not null,
	bairro varchar(30) not null,
	cidade varchar(30) not null,
	uf varchar(2) not null
);

create table shein.categoria (
	idcategoria serial primary key,
	nome_cate varchar(30),
	ds_categoria text
);

create table shein.login (
	idlogin serial primary key,
	email varchar(100) not null, 
	login varchar(16),
	tabela varchar(1) -- drop
);

create table shein.cliente (
	idcliente serial primary key,
	nome_cp varchar(200) not null,
	cpf varchar(11) not null,
	dt_nascimento date not null,
	sexo varchar(1),
	idlogin int references shein.login(idlogin) unique
);



create table shein.produto (
    idproduto serial primary key,
    qtestoque int not null,
    vl_unitario double precision not null,
    idcategoria int references shein.categoria(idcategoria),
    dcproduto text,
    nmproduto varchar(120),
	dt_fabricacao date
);

create table shein.cliente_endereco (
    idendereco int references shein.endereco(idendereco),
    idcliente int references shein.cliente(idcliente),
    num_endereco varchar(15) not null,
    complemento_ed varchar(250)
);



create table shein.usuario_funcionario (
	idusuariofun serial primary key,
	idlogin int references shein.login(idlogin) unique, 
	nmfunc varchar(50),
	cpffunc varchar(11)
);

create table shein.pedido (
	idpedido serial primary key,
	idendereco int references shein.endereco(idendereco),
	idcliente int references shein.cliente(idcliente),
	descricao text,
	valortotal double precision, 
	idusuariofun int references shein.usuario_funcionario(idusuariofun)
); -- drop

create table shein.empresa (
	idempresa serial primary key,
	razao_social varchar(120), 
	nm_fantasia varchar(100) not null,
	cnpj varchar(14) not null,
	idendereço int references shein.endereco(idendereco),
	email_empresa varchar(120) not null
);

create table shein.pedido_item (
	idpedidoitem serial primary key,
	idpedido int references shein.pedido(idpedido),
	desconto double precision,
	imposto double precision,
	acrescimo decimal,
	frete decimal,
	valor_total double precision not null,
	idproduto int references shein.produto(idproduto),
	valor_unitario double precision not null, 
	qtpedido int,
	dt_compra date
);

create table shein.nota_fiscal (
	idnotafiscal serial primary key,
	dt_emissao date,
	desconto double precision,
	imposto double precision,
	acrescimo decimal,
	frete decimal,
	valor_total double precision not null
);

create table shein.nota_fiscal_pedido (
	idnotafiscal int references shein.nota_fiscal(idnotafiscal),
	idpedido int references shein.pedido(idpedido),
	dt_emissao date,
	desconto double precision,
	imposto double precision,
	acrescimo decimal,
	frete decimal,
	valor_total double precision not null,
	constraint nf_pedido_pk primary key (idnotafiscal, idpedido) 
);

create table shein.nota_itens (
	idnotaitens serial primary key,
	idnotafiscal int references shein.nota_fiscal(idnotafiscal),
	idpedidoitem int references shein.pedido_item(idpedidoitem)
);