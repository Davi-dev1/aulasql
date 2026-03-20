-- Tabela USUARIOS para ser usada no projeto

SET time_zone = '-03:00'; -- define o fuso horário brasil, não precisa implementar

CREATE TABLE IF NOT EXISTS USUARIOS (
        id_usuarios INT AUTO_INCREMENT PRIMARY KEY,
        nome VARCHAR(100) NOT NULL,
        email VARCHAR(100) NOT NULL UNIQUE,
        senha VARCHAR(255) NOT NULL,
data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP,
ultima_atualizacao DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP);
        
-- lembrar que a senha terá que ser criptografada!

INSERT IGNORE INTO USUARIOS (nome, email, senha) 
    VALUES ('Administrador', 'root@admin.com', '12345');
    
INSERT IGNORE INTO USUARIOS (nome, email, senha) 
    VALUES ('Administrador', 'root@admin.com', '12345');
    
select * from usuarios;    

SELECT SLEEP(3);    

update USUARIOS set nome = 'Admin' where  id_usuarios=1;   

select * from USUARIOS;
        
