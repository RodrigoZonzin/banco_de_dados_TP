USE Faculdade;

-- Implemente uma consulta para listar o quantitativo de cursos existentes.
SELECT COUNT(DISTINCT nome) as numCursos FROM Curso;

-- Implemente uma consulta para listar o nome das disciplinas existentes.
SELECT DISTINCT nome as nomeDasDisciplinas FROM Disciplina;

-- Implemente uma consulta para listar o nome de todos os cursos e o nome de seus
-- respectivos alunos. A listagem deve ser mostrada em ordem decrescente pelo
-- nome dos cursos.
SELECT c.nome AS nome_curso, a.nome as nomesAlunos 
FROM Curso c
INNER JOIN AlunoCurso ac ON c.idCurso = ac.idCurso
INNER JOIN Aluno a ON ac.idAluno = a.idAluno
ORDER BY c.nome DESC;

-- Implemente uma consulta para listar o nome das disciplinas e a média das notas
-- das disciplinas em todos os cursos. Para isso, utilize o comando group by.
SELECT D.nome AS NomeDisciplina, AVG(H.nota) AS MediaNotas
FROM Disciplina D
JOIN Historico H ON D.idDisciplina = H.idDisciplina
GROUP BY D.nome;

-- Implemente uma consulta para listar o nome de todos os cursos e a quantidade de
-- alunos em cada curso. Para isso, utilize os comandos join e group by.
SELECT C.nome AS NomeCurso, COUNT(AC.idAluno) AS QuantidadeAlunos
FROM Curso C
LEFT JOIN AlunoCurso AC ON C.idCurso = AC.idCurso
GROUP BY C.nome;



