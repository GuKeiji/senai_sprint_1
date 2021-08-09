USE OPTUS;
GO

SELECT * FROM TIPOUSUARIO;
SELECT * FROM ESTILO;
SELECT * FROM USUARIO;
SELECT * FROM ALBUM;
SELECT * FROM ARTISTA

-- listar todos os usuários administradores, sem exibir suas senhas
SELECT nome, tipo
  FROM USUARIO U
 INNER JOIN TIPOUSUARIO T
    ON U.idTipoUsuario = T.idTipoUsuario
 WHERE T.tipo = 'ADMIN';

 -- listar todos os álbuns lançados após o um determinado ano de lançamento

SELECT nomeAlbum
  FROM ALBUM A
 WHERE YEAR(dataLancamento) >= 2019;
 
 -- listar os dados de um usuário através do e-mail e senha

SELECT * 
  FROM USUARIO 
 WHERE email = 'julio.123@gmail.com'
   AND senha = 1020;

 -- listar todos os álbuns ativos, mostrando o nome do artista e os estilos do álbum 

SELECT A.nomeArtista, 
       B.nomeAlbum,
	   E.tipoEstilo
  FROM ALBUM B
 INNER JOIN ARTISTA A
    ON B.idArtista = A.idArtista
 INNER JOIN ESTILO E
    ON B.idEstilo = E.idEstilo
 WHERE B.statusAlbum = 'S';