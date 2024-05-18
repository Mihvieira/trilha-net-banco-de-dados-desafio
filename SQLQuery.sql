use Filmes;

SELECT nome, ano FROM Filmes;

SELECT nome, ano FROM Filmes ORDER BY ano;

SELECT * FROM Filmes WHERE nome LIKE 'De Volta para o Futuro';

SELECT * FROM Filmes WHERE ano LIKE '1997';

SELECT * FROM Filmes WHERE ano>'2000';

SELECT * FROM Filmes WHERE Duracao>'100' AND Duracao<'150' ORDER BY Duracao;

SELECT Ano, COUNT(ano) as calcAno FROM Filmes GROUP BY Ano ORDER BY calcAno DESC;

SELECT * FROM Atores WHERE Genero='M';

SELECT * FROM Atores WHERE Genero='F' ORDER BY PrimeiroNome;

SELECT f.nome, g.Genero FROM Filmes as f, FilmesGenero as fg, Generos as g WHERE fg.IdGenero=g.Id;

SELECT f.nome, g.Genero FROM Filmes as f, FilmesGenero as fg, Generos as g WHERE fg.IdGenero=g.Id AND g.Genero='Mistério';

SELECT f.nome, a.PrimeiroNome, a.UltimoNome, ef.Papel FROM Filmes as f, Atores as a, ElencoFilme as ef WHERE f.id=ef.IdFilme AND a.Id=ef.IdAtor;