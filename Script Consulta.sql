--1
SELECT Nome, Ano FROM Filmes

--2
SELECT * FROM Filmes ORDER BY Ano

--3
SELECT Nome, Ano, Duracao FROM Filmes Where Nome='De Volta para o Futuro'

--4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano=1997

--5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano>2000

--6 
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao

--7
SELECT Ano, Count(*) Quantidade FROM Filmes GROUP BY Ano Order By Quantidade Desc

--8
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'

--9
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

--10
SELECT Nome, Genero FROM FilmesGenero FG 
INNER JOIN Filmes F ON FG.IdFilme = F.Id
INNER JOIN Generos G ON FG.IdGenero = G.Id

--11
SELECT Nome, Genero FROM FilmesGenero FG 
INNER JOIN Filmes F ON FG.IdFilme = F.Id
INNER JOIN Generos G ON FG.IdGenero = G.Id
Where Genero = 'Mistério'

--12

SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM ElencoFilme EF
INNER JOIN Filmes F ON EF.IdFilme = F.Id
INNER JOIN Atores A ON EF.IdAtor = A.Id


