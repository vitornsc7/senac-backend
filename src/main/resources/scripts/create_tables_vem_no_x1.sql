CREATE TABLE IF NOT EXISTS carta (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  forca INTEGER NOT NULL,
  inteligencia INTEGER NOT NULL,
  velocidade INTEGER NOT NULL,
  data_cadastro DATE NOT NULL
);

-- V2: criação da tabela jogador
CREATE TABLE IF NOT EXISTS jogador (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  data_nascimento DATE NOT NULL,
  total_partidas INTEGER NOT NULL,
  percentual_vitorias DOUBLE PRECISION NOT NULL
);

-- V3: criação das tabelas partida e carta_partida
CREATE TABLE IF NOT EXISTS partida (
  id SERIAL PRIMARY KEY,
  id_jogador INTEGER NOT NULL,
  rounds_vencidos_jogador INTEGER NOT NULL DEFAULT 0,
  rounds_vencidos_cpu INTEGER NOT NULL DEFAULT 0,
  rounds_empatados INTEGER NOT NULL DEFAULT 0,
  resultado VARCHAR(255),
  data DATE NOT NULL,
  forca_utilizada BOOLEAN,
  inteligencia_utilizada BOOLEAN,
  velocidade_utilizada BOOLEAN,
  FOREIGN KEY (id_jogador) REFERENCES jogador(id)
);

CREATE TABLE IF NOT EXISTS carta_partida (
  id SERIAL PRIMARY KEY,
  id_partida INTEGER NOT NULL,
  id_carta INTEGER NOT NULL,
  do_jogador BOOLEAN,
  utilizada BOOLEAN,
  FOREIGN KEY (id_partida) REFERENCES partida(id),
  FOREIGN KEY (id_carta) REFERENCES carta(id)
);
