USE _PCLINICS;
GO

SELECT * FROM CLINICA
SELECT * FROM DONO
SELECT * FROM TIPOPET
SELECT * FROM RACA
SELECT * FROM VETERINARIO
SELECT * FROM PET
SELECT * FROM ATENDIMENTO

-- listar todos os veterinários (nome e CRMV) de uma clínica (razão social)
SELECT V.nomeVeterinario, 
	   V.CRMV, 
	   C.razaoSocial 
  FROM VETERINARIO V
 INNER JOIN CLINICA C
    ON V.idClinica = C.idClinica
 WHERE C.idClinica = 1;

-- listar todas as raças que começam com a letra S
SELECT R.nomeRaca
  FROM RACA R
 WHERE SUBSTRING(R.nomeRaca, 1, 1) = ('S')
 --ou
 SELECT R.nomeRaca
   FROM RACA R
  WHERE R.nomeRaca LIKE ('S%')

-- listar todos os tipos de pet que terminam com a letra O
SELECT T.nomeEspecie
  FROM TIPOPET T
 WHERE nomeEspecie LIKE ('%O');

-- listar todos os pets mostrando os nomes dos seus donos
SELECT P.idPet, P.nomePet, D.nomeDono
  FROM PET P
  LEFT JOIN DONO D
    ON D.idDono = P.idDono;

--listar todos os atendimentos mostrando o nome do veterinário que atendeu, o nome,
--a raça e o tipo do pet que foi atendido,
--o nome do dono do pet e o nome da clínica onde o pet foi atendido.
SELECT A.idAtendimento, V.nomeVeterinario, P.nomePet, R.nomeRaca, T.nomeEspecie, D.nomeDono, C.razaoSocial
  FROM ATENDIMENTO A
  LEFT JOIN VETERINARIO V
    ON A.idVeterinario = V.idVeterinario
 INNER JOIN PET P
    ON A.idPet = P.idPet
 INNER JOIN RACA R
    ON P.idRaca = R.idRaca
 INNER JOIN TIPOPET T
    ON R.idTipoPet = T.idTipoPet
 INNER JOIN DONO D
    ON P.idDono = D.idDono
 INNER JOIN CLINICA C
    ON V.idClinica = C.idClinica;