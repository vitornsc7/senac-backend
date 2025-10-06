CREATE TABLE pessoa (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  cpf VARCHAR(11) NOT NULL,
  sexo CHAR(1) NOT NULL,
  data_nascimento DATE NOT NULL,
  tipo INT NOT NULL
);

COMMENT ON COLUMN pessoa.tipo IS '1- Pesquisador; 2- Voluntário; 3- Público Geral';

CREATE TABLE vacina (
  id SERIAL PRIMARY KEY,
  id_pesquisador INT NOT NULL,
  nome VARCHAR(300) NOT NULL,
  pais_origem VARCHAR(300) NOT NULL,
  estagio_pesquisa INT NOT NULL,
  data_inicio_pesquisa DATE NOT NULL,
  FOREIGN KEY (id_pesquisador) REFERENCES pessoa(id)
);

COMMENT ON COLUMN vacina.estagio_pesquisa IS '1- Inicial; 2- Teste; 3- Aplicação em massa';

CREATE TABLE aplicacao_vacina (
  id SERIAL PRIMARY KEY,
  id_pessoa INT NOT NULL,
  id_vacina INT NOT NULL,
  data_aplicacao DATE NOT NULL,
  avaliacao INT NOT NULL,
  FOREIGN KEY (id_pessoa) REFERENCES pessoa(id),
  FOREIGN KEY (id_vacina) REFERENCES vacina(id)
);

COMMENT ON COLUMN aplicacao_vacina.avaliacao IS 'Valor entre 1 e 5';

CREATE TABLE pais (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  sigla CHAR(2) NOT NULL
);

ALTER TABLE pessoa ADD COLUMN id_pais INT;
ALTER TABLE pessoa ADD CONSTRAINT pessoa_pais_fk FOREIGN KEY (id_pais) REFERENCES pais(id);

ALTER TABLE vacina ADD COLUMN id_pais INT;
ALTER TABLE vacina ADD CONSTRAINT vacina_pais_fk FOREIGN KEY (id_pais) REFERENCES pais(id);
