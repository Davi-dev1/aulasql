
create table FILME(
id_filme int primary key auto_increment,
titulo varchar(100) not null,
genero varchar(100) not null, 
ano_lancamento int,
duracao int,
classificacao varchar(10)
);

insert into FILME(titulo,genero,ano_lancamento,duracao,classificacao)
values ('Matrix','Ficção Científica', 1999, 136, '14'),
       ('Titanic','Romance', 1997, 195, '12'),
       ('Vingadores: Ultimato','Ação', 2019, 181, '12'),
       ('O Rei Leão','Animação', 1994, 88, 'Livre'),
       ('Coringa','Drama', 2019, 122, '16');
       
update FILME set duracao = 194
where  id_filme = 2;


update FILME set classificacao = '18'
where id_filme = 5;

update FILME set genero = 'Ação/Ficção Científica'
where id_filme = 1;
select  *from filme;

delete from filme where ano_lancamento = 2019; -- delete serve para apagar linhas setada não aceita *--

delete from FILME; -- apaga todos os dados mas manntém a sequencia do auto_increment , a diferença desse , para o truncate é que ele não reseta o auto_incrment o próximo reset que for feito ele não reincia o auto_incrment


truncate filme; -- truncate esvazia de uma vez só,o truncate dá um reset em todos os dados principalmente os id como se fosse do zero


truncate FILME;
-- truncate apaga todos os dados
select  * from filme;
