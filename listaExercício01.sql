Questao 1{
  SELECT titulo FROM livros;
}
Questao 2{
  SELECT nome FROM autores WHERE YEAR(nascimento) < 1900;
}
Questao 3{
  SELECT livros.titulo
  FROM livros
  INNER JOIN autores ON livros.autor_id = autores.id
  WHERE autores.nome = 'J.K. Rowling';
}
Questao 4{
  SELECT alunos.nome
  FROM alunos
  INNER JOIN matriculas ON alunos.id = matriculas.aluno_id
  WHERE matriculas.curso = 'Engenharia de Software';
}
Questao 5{
  SELECT livros.titulo, (vendas.quantidade * vendas.preco) AS receita_total
  FROM livros
  INNER JOIN vendas ON livros.id = vendas.livro_id
  GROUP BY livros.titulo;
}
Questao 6{
  SELECT autores.nome, COUNT(livros.id) AS total_de_livros
  FROM autores
  LEFT JOIN livros ON autores.id = livros.autor_id
  GROUP BY autores.nome;
}
Questao 7{
  SELECT matriculas.curso, COUNT(*) AS total_de_alunos
  FROM matriculas
  GROUP BY matriculas.curso;
}
Questao 8 {
  SELECT livros.titulo, (vendas.quantidade * vendas.preco) AS media_de_receita
  FROM livros
  INNER JOIN vendas ON livros.id = vendas.livro_id
  GROUP BY livros.titulo;
}
Questao 9{
  SELECT livros.titulo, (vendas.quantidade * vendas.preco) AS receita_total
  FROM livros
  INNER JOIN vendas ON livros.id = vendas.livro_id
  GROUP BY livros.titulo
  HAVING receita_total > 10000;
}
Questao 10{
  SELECT autores.nome
  FROM autores
  LEFT JOIN livros ON autores.id = livros.autor_id
  GROUP BY autores.nome
  HAVING COUNT(livros.id) > 2;
}
Questao 11{
  SELECT autores.nome AS autor, livros.titulo AS livro
  FROM autores
  INNER JOIN livros ON autores.id = livros.autor_id;
}



