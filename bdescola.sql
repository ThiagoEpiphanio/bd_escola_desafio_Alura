-- TABLE
CREATE TABLE alunos(
  id_aluno INT PRIMARY KEY,
  nome_aluno VARCHAR (250),
  data_nascimento_aluno DATE,
  genero_aluno VARCHAR (50),
  endereco_aluno TEXT, 
  telefone_contato_aluno INT,
  email_aluno VARCHAR (200)
  );
CREATE TABLE demo (ID integer primary key, Name varchar(20), Hint text );
CREATE TABLE disciplinas(
  id_disciplina INT PRIMARY KEy,
  nome_disciplina VARCHAR (200),
  descricao_disciplina TEXT,
  carga_horaria_disciplina INT,
  id_professor_disciplina INT,
  FOREIGN KEY (id_professor_disciplina) REFERENCES professores (id_professor)
  );
CREATE TABLE notas(
  id_nota INT PRIMARY KEY,
  id_aluno INT,
  id_disciplina INT,
  valor_nota DECIMAL,
  data_avaliacao DATE, 
  FOREIGN KEY (id_aluno) REFERENCES alunos (id_aluno),
  FOREIGN KEY (id_disciplina) REFERENCES disciplinas (id_disciplina)
  );
CREATE TABLE professores (
  id_professor INT PRIMARY KEY,
  nome_professor VARCHAR (250),
  data_nascimento_professor DATE,
  genero_professor VARCHAR (250),
  telefone_contato_professor INT,
  email_professor VARCHAR (200)
  );
CREATE TABLE turmas(
  id_turma INT PRIMARY KEY,
  nome_turma VARCHAR (50),
  ano_letivo INT,
  id_professor_orientador INT,
  FOREIGN KEY (id_professor_orientador) REFERENCES professores (id_professor)
  );
CREATE TABLE turmas_alunos(
  id_turmas INT,
  id_alunos INT,
  PRIMARY KEY (id_turmas, id_alunos),
  FOREIGN KEY (id_turmas) REFERENCES turmas (id_turma),
  FOREIGN KEY (id_alunos) REFERENCES alunos (id_aluno)
  );
CREATE TABLE turma_disciplinas(
  id_turmas INT,
  id_disciplinas INT,
  PRIMARY KEY (id_turmas, id_disciplinas),
  FOREIGN KEY (id_turmas) REFERENCES turmas (id_turma),
  FOREIGN KEY (id_disciplinas) REFERENCES disciplinas (id_disciplina)
  );
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
