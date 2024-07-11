-- Crie uma tabela chamada categorias com as seguintes colunas: categoria_id (chave primária), nome_categoria (VARCHAR(50)).
create table categorias(
	categoria_id serial primary key,
	nome_categoria varchar(50) not null
)

-- Adicione uma coluna categoria_id à tabela produtos 
alter table produtos add column categoria_id int

-- Crie uma chave estrangeira para a tabela categorias

foreign key categoria_id references categoria_id

-- Exclua a tabela categorias.
drop table categorias