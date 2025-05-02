
SET search_path TO yrkesco;

-- Lärare + Konsult
INSERT INTO konsult (konsult_id) VALUES (1), (2), (3), (4), (5);
INSERT INTO lärare (lärare_id, förnamn, efternamn, email, telefonnumer) VALUES
(1, 'Margareta', 'Nordin', 'fredrik2@googlemail.com', '08-759 38 24'),
(2, 'Georg', 'Axelsson', 'lennartnilsson@yahoo.de', '08-78 15 65'),
(3, 'Dagny', 'Sjöström', 'qpetersson@telia.com', '0016-09 75 35'),
(4, 'Elin', 'Bergström', 'elin.bergstrom@edu.se', '08-111 22 33'),
(5, 'Johan', 'Lindgren', 'johan.lindgren@edu.se', '070-555 66 77');

-- Kurser
INSERT INTO kurs (kurs_id, kursnamn, kurskod, poäng, beskrivning) VALUES
(1, 'data modelering', 'K001', '100', 'lär dig hur man modelerar data'),
(2, 'SQL', 'K002', '100', 'lär dig om SQL och olika queries'),
(3, 'Python', 'K003', '100', 'Intro till python och dens funktioner'),
(4, 'Databasteknik', 'K004', '100', 'Lär dig om teknik och databaser'),
(5, 'Projektledning', 'K005', '50', 'Introduktion till att leda projekt');

-- Skolor
INSERT INTO skola (skol_id, skol_namn, adress) VALUES
(1, 'Stokhols tekniska institut', 'Idrottstorget 871, 55871 Helsingborg'),
(2, 'Södertöns högskola', 'Trädgårdsgatan 6, 49342 Malmö');

-- Utbildningsledare
INSERT INTO utbildningsledare (utbildningsledare_id, förnamn, efternamn, email) VALUES
(1, 'Ebba', 'Lundin', 'augustssonjohanna@gmail.com'),
(2, 'Oskar', 'Franzén', 'oskar.franzen@edu.se'),
(3, 'Ingrid', 'Persson', 'ingrid.persson@edu.se');

-- Företag
INSERT INTO konsult (konsult_id) VALUES (6), (7);
INSERT INTO företag (konsult_id, namn, organisationsnummer, adress, skatt, timlön) VALUES 
(1, 'TechConsult AB', '556677-8899', 'Storgatan 1, Göteborg', 'Ja', '800kr'),
(2, 'DataProffs AB', '112233-4455', 'Drottninggatan 99, Malmö', 'Ja', '750kr'),
(3, 'Utbildning & Konsult', '998877-6655', 'Kungsgatan 23, Stockholm', 'Ja', '900kr'),
(6, 'Framtidsteknik AB', '556112-3344', 'Södra vägen 5, Göteborg', 'Ja', '820kr'),
(7, 'ITKonsult Syd AB', '556998-1122', 'Östra Hamngatan 7, Malmö', 'Nej', '700kr');


-- Program
INSERT INTO program (program_id, program_namn, beskrivning) VALUES
(1, 'Systemutveckling', 'Programmet för dig som vill bli systemutvecklare'),
(2, 'Dataanalys', 'Analys och visualisering av data i praktiken'),
(3, 'IT-projektledning', 'Utbildning för blivande projektledare');

-- Programkurser
INSERT INTO programkurs (program_kurs_id, kurs_id, program_id, startdatum, slutdatum) VALUES
(1, 1, 1, '2025-01-15', '2025-03-30'),
(2, 2, 1, '2025-04-01', '2025-06-15'),
(3, 3, 2, '2025-01-15', '2025-03-30'),
(4, 4, 2, '2025-04-01', '2025-06-15'),
(5, 5, 3, '2025-01-10', '2025-02-28');

-- Klasser
INSERT INTO klass (klass_id, klassnamn, program_id, utbildningsledare_id, skol_id) VALUES
(1, 'UX24', 1, 1, 1),
(2, 'DE24', 2, 1, 2),
(3, 'SU24', 3, 2, 2),
(4, 'FD24', 1, 3, 1);

-- Kurslärare
INSERT INTO kurslärare (lärare_id, kurs_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Studenter
INSERT INTO student (student_id, klass_id, förnamn, efternamn) VALUES
(1, 1, 'Anna', 'Karlsson'),
(2, 1, 'Erik', 'Nilsson'),
(3, 2, 'Sara', 'Andersson'),
(4, 3, 'Mikael', 'Johansson'),
(5, 3, 'Lisa', 'Bergman'),
(6, 4, 'Andreas', 'Svensson'),
(7, 2, 'Nora', 'Håkansson');

-- Student Info
INSERT INTO student_info (student_id, personnumer, adress, telefonnumer) VALUES
(1, 199809101234, 'Vägen 12, Göteborg', '070-123 45 67'),
(2, 200002205678, 'Stigen 5, Malmö', '070-765 43 21'),
(3, 199511309876, 'Parkgatan 8, Stockholm', '070-222 33 44'),
(4, 199704301122, 'Fältvägen 3, Örebro', '073-456 78 90'),
(5, 199912121212, 'Torggatan 14, Karlstad', '072-111 22 33'),
(6, 199601015555, 'Backvägen 7, Norrköping', '076-987 65 43'),
(7, 199803238888, 'Allegatan 3, Borås', '073-333 44 55');