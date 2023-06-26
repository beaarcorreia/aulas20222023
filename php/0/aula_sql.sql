-- seleccionar todos os registos da tabela autores
select * from autores;

-- inserir registo na tabela autores
insert into autores(nome_autor,nacionalidade_autor)values('José Saramago','Portuguesa');

insert into autores(nome_autor,nacionalidade_autor)
values
('Eça de Queirós','Portuguesa'),
('John Steinbeck','Americana'),
('Gabriel Gracia Marquez', 'Chilena');

select * from editoras;

insert into editoras(nome_editora,morada_editora,telefone_editora)
values
('Porto Editora','Porto','238723443'),
('Leya','Porto','253465782'),
('Bertrand','Lisboa','236487209');

insert into categorias(nome_categoria)
values
('Romance'),
('Drama'),
('Ficção Científica'),
('Banda Desenhada');

-- obter todas as catergorias
select * from categorias;

-- seleciona nome e nacionalidade apenas
select nome_autor, nacionalidade_autor from autores;

-- seleciona autores autores portugueses
select * from autores
where nacionalidade_autor = 'Portuguesa';

-- todas as editoras de Lisboa
select * from editoras
where morada_editora = 'Lisboa';

-- alterar a morada da Porto Editora
update editoras
set morada_editora = 'Avenida dos Aliados 57, Porto'
where id_editora=1;

select * from editoras
where morada_editora = 'Porto'; -- devolve todos os registos cujo morada seja apenas 'Porto'

select * from editoras;

select * from editoras
where morada_editora like '%Porto%'; -- devolve todos os registos que tiverem a string Porto

-- apagar um registo da base de dados
select * from autores;
delete from autores
where id_autor = 3;

-- inserir livros
insert into livros
(fk_id_editora,isbn_livro,titulo_livro,edicao_livro,preco_livro,stock_livro,capa_livro,descricao_livro)
values
(3,'Qwery123','Levantado do Chão','2ª edição',12.44,10,'levantado.jpg','No mundo atual, a estrutura atual da organização desafia a capacidade de equalização dos conhecimentos estratégicos para atingir a excelência.');

select * from livros;

insert into livros
(fk_id_editora,isbn_livro,titulo_livro,edicao_livro,preco_livro,stock_livro,capa_livro,descricao_livro)
values
(3,'Qwery123','Asterix','1ª edição',11.99,150,'asterix.jpg','No mundo atual, a estrutura atual da organização desafia a capacidade de equalização dos conhecimentos estratégicos para atingir a excelência.'),
(1,'Qwery456','Moby Dick','1ª edição',9,12,'moby.jpg','No mundo atual, a estrutura atual da organização desafia a capacidade de equalização dos conhecimentos estratégicos para atingir a excelência.'),
(3,'Qwery999','Pela essa estrada fora','1ª edição',100,0,'estrada.jpg','No mundo atual, a estrutura atual da organização desafia a capacidade de equalização dos conhecimentos estratégicos para atingir a excelência.'),
(2,'Qwery888','Corto Maltese','1ª edição',20,10,'corto.jpg','No mundo atual, a estrutura atual da organização desafia a capacidade de equalização dos conhecimentos estratégicos para atingir a excelência.');

select * from livros;
delete from livros
where id_autor = 1;

select * from livros
order by preco_livro desc limit 1;

select * from livros
where stock_livro = 0;

select fk_id_editora, titulo_livro from livros;

select titulo_livro, nome_editora from livros
inner join editoras on fk_id_editora = id_editora;

select titulo_livro, nome_editora  from livros
inner join editoras on fk_id_editora = id_editora
where nome_editora = 'Bertrand';

-- editora que tem o livro mais caro
select nome_editora from editoras
inner join livros on fk_id_editora = id_editora
order by preco_livro desc limit 1;

-- saber quais as editoras a contactar em caso de rutura de stock, menos de 10
select distinct(nome_editora) from livros
inner join editoras on id_editora = fk_id_editora
where stock_livro <=10;

select titulo_livro, nome_autor from livros
inner join autores_has_livros on id_livro = fk_id_livro
inner join autores on id_autor = fk_id_autor;

select nome_autor from autores
inner join autores_has_livros on id_autor = fk_id_autor
inner join livros on id_livro = fk_id_livro
order by preco_livro desc limit 1;







