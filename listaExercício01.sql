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
