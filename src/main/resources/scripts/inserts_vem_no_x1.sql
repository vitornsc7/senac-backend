-- CARTAS
INSERT INTO carta (nome, forca, inteligencia, velocidade, data_cadastro)
VALUES ('Popó', 5, 2, 2, CURRENT_DATE);

INSERT INTO carta (nome, forca, inteligencia, velocidade, data_cadastro)
VALUES ('Rocky', 3, 5, 2, CURRENT_DATE);

INSERT INTO carta (nome, forca, inteligencia, velocidade, data_cadastro)
VALUES ('Ronaldinho Gaúcho', 2, 5, 3, CURRENT_DATE);

INSERT INTO carta (nome, forca, inteligencia, velocidade, data_cadastro)
VALUES ('Severino', 4, 1, 1, CURRENT_DATE);

INSERT INTO carta (nome, forca, inteligencia, velocidade, data_cadastro)
VALUES ('Iron Man', 3, 4, 2, CURRENT_DATE);

INSERT INTO carta (nome, forca, inteligencia, velocidade, data_cadastro)
VALUES ('Batman', 5, 5, 5, CURRENT_DATE);

INSERT INTO carta (nome, forca, inteligencia, velocidade, data_cadastro)
VALUES ('Superman', 5, 2, 4, CURRENT_DATE);

INSERT INTO carta (nome, forca, inteligencia, velocidade, data_cadastro)
VALUES ('Flash', 1, 3, 5, CURRENT_DATE);

-- JOGADORES
INSERT INTO jogador (nome, email, data_nascimento, total_partidas, percentual_vitorias)
VALUES ('Edson Arantes do Nascimento', 'pele10@gmail.com', '1940-10-23', 0, 0);

INSERT INTO jogador (nome, email, data_nascimento, total_partidas, percentual_vitorias)
VALUES ('Carlos Caetano Verri', 'dunga5@gmail.com', '1963-10-31', 0, 0);

INSERT INTO jogador (nome, email, data_nascimento, total_partidas, percentual_vitorias)
VALUES ('Marcos André Batista', 'vampeta8@gmail.com', '1974-03-13', 0, 0);

-- PARTIDAS (exemplo vazio)
-- INSERT INTO partida (id_jogador, rounds_vencidos_jogador, rounds_vencidos_cpu, rounds_empatados, resultado, data, forca_utilizada, inteligencia_utilizada, velocidade_utilizada)
-- VALUES (0, 0, 0, 0, '', CURRENT_DATE, false, false, false);
