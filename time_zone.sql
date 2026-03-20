-- Tabela USUARIOS para ser usada no projeto

SET time_zone = '-03:00'; -- define o fuso horário brasil, não precisa implementar

CREATE TABLE IF NOT EXISTS USUARIOS ( -- senão existir cria, se existir ele não gera erro 
        id_usuarios INT AUTO_INCREMENT PRIMARY KEY,
        nome VARCHAR(100) NOT NULL,
        email VARCHAR(100) NOT NULL UNIQUE,-- email tem que ser unique, não podemos ter 2 emails repetidos (iguais)
        senha VARCHAR(255) NOT NULL,
data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP,-- ultima vez que fez cadastro, datetime guarda data e hora,defautl significa que ele pode ter um campo padronizado mesmo senão recebeu dado,o current pega a data da criação e atualização de usuarios será implementada de forma automatica, default na hora de inserir qualquer data ele vai pegar automaticamente os dads do insert.
ultima_atualizacao DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP); -- ultima vez que atualizou o perfil
        
-- lembrar que a senha terá que ser criptografada!

INSERT IGNORE INTO USUARIOS (nome, email, senha) -- ignore serve para ignorar duplicidade de dados, ou seja se  o dado já tiver sido inserido ele não gera mensagem de erro
    VALUES ('Administrador', 'root@admin.com', '12345');
    
INSERT IGNORE INTO USUARIOS (nome, email, senha) 
    VALUES ('Administrador', 'root@admin.com', '12345');
    
select * from usuarios;    

SELECT SLEEP(3);   -- sleep segura o tempo em segundos o sleep mostra a diferença em segundos do cadastro 

update USUARIOS set nome = 'Admin' where  id_usuarios=1;   

select * from USUARIOS;
        
