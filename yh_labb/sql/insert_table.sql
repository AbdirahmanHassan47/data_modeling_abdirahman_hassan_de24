-- Konsulter och lärare (samma ID här för enkelhet)

SET search_path TO yrkesco;


INSERT INTO konsult (konsult_id) VALUES (1);

INSERT INTO lärare (lärare_id, förnamn, efternamn, email, telefonnumer)
VALUES (1, 'Margareta', 'Nordin', 'fredrikssonangelica@googlemail.com', '08-759 38 24',(4, 'Henrik', 'Sundberg', 'henrik.sundberg@yrkesco.se', '070-111 22 33'),
(5, 'Elin', 'Hansson', 'elin.hansson@yrkesco.se', '070-222 33 44');

INSERT INTO konsult (konsult_id) VALUES (2);

INSERT INTO lärare (lärare_id, förnamn, efternamn, email, telefonnumer)
VALUES (2, 'Georg', 'Axelsson', 'lennartnilsson@yahoo.de', '08-78 15 65');

INSERT INTO konsult (konsult_id) VALUES (3);
INSERT INTO lärare (lärare_id, förnamn, efternamn, email, telefonnumer)
VALUES (3, 'Dagny', 'Sjöström', 'qpetersson@telia.com', '0016-09 75 35');

-- Kurser
INSERT INTO kurs (kurs_id, kursnamn, kurskod, poäng, beskrivning)
VALUES (1, 'Kurs 1', 'K001', '100', 'En beskrivning av kurs 1');

INSERT INTO kurs (kurs_id, kursnamn, kurskod, poäng, beskrivning)
VALUES (2, 'Kurs 2', 'K002', '100', 'En beskrivning av kurs 2');

INSERT INTO kurs (kurs_id, kursnamn, kurskod, poäng, beskrivning)
VALUES (3, 'Kurs 3', 'K003', '100', 'En beskrivning av kurs 3');

-- Skolor
INSERT INTO skola (skol_id, skol_namn, adress)
VALUES (1, 'Skola 1', 'Idrottstorget 871, 55871 Helsingborg');

INSERT INTO skola (skol_id, skol_namn, adress)
VALUES (2, 'Skola 2', 'Trädgårdsgatan 6, 49342 Malmö');

-- Utbildningsledare
INSERT INTO utbildningsledare (utbildningsledare_id, förnamn, efternamn, email)
VALUES (1, 'Ebba', 'Lundin', 'augustssonjohanna@gmail.com');

-- osv...

-- Företag
INSERT INTO företag (konsult_id, namn, organisationsnummer, adress, skatt, timlön)
VALUES 
(1, 'TechConsult AB', '556677-8899', 'Storgatan 1, Göteborg', 'Ja', '800'),
(2, 'DataProffs AB', '112233-4455', 'Drottninggatan 99, Malmö', 'Ja', '750'),
(3, 'Utbildning & Konsult', '998877-6655', 'Kungsgatan 23, Stockholm', 'Ja', '900');

-- Program
INSERT INTO program (program_id, program_namn, beskrivning)
VALUES 
(1, 'Systemutveckling', 'Programmet för dig som vill bli systemutvecklare'),
(2, 'Dataanalys', 'Analys och visualisering av data i praktiken');

-- Programkurser
INSERT INTO programkurs (program_kurs_id, kurs_id, program_id, startdatum, slutdatum)
VALUES 
(1, 1, 1, '2025-01-15', '2025-03-30'),
(2, 2, 1, '2025-04-01', '2025-06-15'),
(3, 3, 2, '2025-01-15', '2025-03-30');

-- Klass
INSERT INTO klass (klass_id, klassnamn, program_id, utbildningsledare_id, skol_id)
VALUES 
(1, 'System22', 1, 1, 1),
(2, 'Analys23', 2, 1, 2);

-- Kurslärare (koppling mellan lärare och kurs)
INSERT INTO kurslärare (lärare_id, kurs_id)
VALUES 
(1, 1),
(2, 2),
(3, 3);

-- Studenter
INSERT INTO student (student_id, klass_id, förnamn, efternamn)
VALUES 
(1, 1, 'Anna', 'Karlsson'),
(2, 1, 'Erik', 'Nilsson'),
(3, 2, 'Sara', 'Andersson');

-- Student Info (känslig information)
INSERT INTO student_info (student_id, personnumer, adress, telefonnumer)
VALUES 
(1, 199809101234, 'Vägen 12, Göteborg', '070-123 45 67'),
(2, 200002205678, 'Stigen 5, Malmö', '070-765 43 21'),
(3, 199511309876, 'Parkgatan 8, Stockholm', '070-222 33 44');