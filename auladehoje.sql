-- comentário


-- 4 tabelas que nn podem deixar existir para o cadastro de clientes: cadastro de usuarios,pedidos


create table if not exists CLIENTE(
cliente_id int unsigned auto_increment primary key,-- lembre-se que o nsigned vem antes do auto_increment
nome_usuario varchar(25) not null,
CPF_usuario char(11) not null unique,
endereco_usuario varchar(30) not null, 
email varchar(30) not null unique
);


CREATE TABLE PRODUTO(
produto_id int PRIMARY Key auto_increment,
nome varchar(100) not null,
valor decimal(6,2) not null check(valor > 0),
obs varchar(200)


);
desc CLIENTE;-- mostra a estrutura da tabela
desc PRODUTO;


insert into CLIENTE(nome_usuario,CPF_usuario,endereco_usuario,email) values('Cristiano Ronaldo','12345678901','Rua dos Alfeneiros 12','cristiano@gmail.com');
insert into CLIENTE(nome_usuario,CPF_usuario,endereco_usuario,email) values('Lionel Messi' ,'12131415161','Rua robert','messi@gmail.com');
insert into CLIENTE(nome_usuario,CPF_usuario,endereco_usuario,email) values('Luis Ronaldo','23445689078','Rua dos Alfeneiros 12','lsr@gmail.com');
insert into CLIENTE(nome_usuario,CPF_usuario,endereco_usuario,email) values('Luis Pereira','20202020212','Rua Anderson','LuisPereira@gmail.com');
insert into CLIENTE(nome_usuario,CPF_usuario,endereco_usuario,email) values('Robert','90887654312','Rua vegueiro','Robert@gmail.com');


Insert into Cliente values(329,'Betania','09012345689','rua pedro','betania@hotmail.com');-- nesse caso só pegamos os valores sem pegar as colunas
update Cliente set nome_usuario = "Robert Plant ",email='RobertPlant@gmail.com' where Cliente_id=5  && email ='Robert@gmail.com';





insert into PRODUTO(nome,valor) values('Playstation 5',3999.00);
insert into PRODUTO(nome,valor) values('Xbox series s',5999.00);
insert into PRODUTO(nome,valor) values('Nintendo Switch',3600.00);
insert into PRODUTO(nome,valor) values('Steam Deck',3999.00);
insert into PRODUTO(nome,valor,obs) values('Xbox Series X',4999.00,'à vista');

insert into PRODUTO values(null,'Ferro de passsar',2999.50,'');-- quando usar isso (só setar valores) vc deve colocar a quantidade dos valores certiho campos opcionais aceitam aspas assim não aparece nada no banco de dados e nn vai tá mostrando nada

select * from cliente;
select produto_id,nome,valor,obs from produto;
