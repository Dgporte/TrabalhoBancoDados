DROP TABLE meu_esquema.empresa;

CREATE TABLE meu_esquema.empresa (
	idempresa SERIAL PRIMARY KEY,
	razao_social VARCHAR(150) NOT NULL,
	nome_fantasia VARCHAR(150) NOT NULL,
	ativo BOOLEAN NOT NULL,
	cnpj VARCHAR(14) NOT NULL,
	idendereco INT,
	email VARCHAR(180)
	dtcadastro TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM meu_esquema.empresa;