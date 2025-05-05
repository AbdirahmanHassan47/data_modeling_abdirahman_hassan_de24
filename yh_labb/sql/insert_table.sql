
SET search_path TO yrkesco;
-- INSERTS FÖR företag
-- företag
INSERT INTO företag (företags_id, namn, organisationsnummer, adress, skatt, timlön) VALUES
(1, 'Konsultbolaget AB', '556677-1122', 'Storgatan 1, Stockholm', '30%', '600'),
(2, 'Techkonsult AB', '556677-3344', 'Teknikvägen 2, Uppsala', '32%', '650'),
(3, 'Utbildning Sverige AB', '556677-5566', 'Universitetsgatan 10, Lund', '33%', '700'),
(4, 'Lärarservice AB', '556677-7788', 'Skolvägen 5, Malmö', '29%', '620'),
(5, 'EduKonsult AB', '556677-9900', 'Konsultgatan 4, Göteborg', '31%', '610');

-- konsult
INSERT INTO konsult (konsult_id, företags_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- lärare
INSERT INTO lärare (lärare_id, förnamn, efternamn, email, telefonnumer) VALUES
(1, 'Anna', 'Andersson', 'anna@konsult.se', '0701234567'),
(2, 'Björn', 'Berg', 'bjorn@konsult.se', '0702345678'),
(3, 'Carla', 'Carlsson', 'carla@konsult.se', '0703456789'),
(4, 'David', 'Dahl', 'david@konsult.se', '0704567890'),
(5, 'Ella', 'Ek', 'ella@konsult.se', '0705678901');

-- kurs
INSERT INTO kurs (kurs_id, kursnamn, kurskod, poäng, beskrivning) VALUES
(1, 'Databasteknik', 'DB101', '7.5', 'Grunder i relationsdatabaser'),
(2, 'Webbutveckling', 'WEB201', '10', 'Frontend och backend grunder'),
(3, 'Programmering 1', 'PRG101', '10', 'Introduktion till programmering'),
(4, 'Systemutveckling', 'SYS301', '15', 'Analys, design och implementation'),
(5, 'IT-säkerhet', 'SEC401', '7.5', 'Grundläggande säkerhetsprinciper');

-- kurslärare
INSERT INTO kurslärare (lärare_id, kurs_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- program
INSERT INTO program (program_id, program_namn, beskrivning) VALUES
(1, 'Systemutvecklare .NET', 'Utbildning inom .NET-teknologier'),
(2, 'Frontend-utvecklare', 'Inriktning mot webbutveckling'),
(3, 'Datasäkerhet', 'Fokus på IT-säkerhet och nätverk'),
(4, 'Fullstack Developer', 'Backend + Frontend-programmering'),
(5, 'Databasutveckling', 'Specialisering inom databaser');

-- programkurs
INSERT INTO programkurs (program_kurs_id, kurs_id, program_id, startdatum, slutdatum) VALUES
(1, 1, 5, '2025-01-15', '2025-03-01'),
(2, 2, 2, '2025-02-01', '2025-04-01'),
(3, 3, 1, '2025-03-01', '2025-05-15'),
(4, 4, 4, '2025-01-10', '2025-04-10'),
(5, 5, 3, '2025-02-20', '2025-05-20');

-- utbildningsledare
INSERT INTO utbildningsledare (utbildningsledare_id, förnamn, efternamn, email) VALUES
(1, 'Lars', 'Lind', 'lars.lind@yrkeshogskolan.se'),
(2, 'Maria', 'Månsson', 'maria.mansson@yrkeshogskolan.se'),
(3, 'Oskar', 'Olsson', 'oskar.olsson@yrkeshogskolan.se'),
(4, 'Nina', 'Nilsson', 'nina.nilsson@yrkeshogskolan.se'),
(5, 'Pia', 'Persson', 'pia.persson@yrkeshogskolan.se');

-- skola
INSERT INTO skola (skol_id, skol_namn, adress) VALUES
(1, 'Yrkeshögskolan Stockholm', 'Skolvägen 10, Stockholm'),
(2, 'IT-Högskolan Göteborg', 'Götaplatsen 2, Göteborg'),
(3, 'Nackademin', 'Campusvägen 4, Solna');

-- klass
INSERT INTO klass (klass_id, klassnamn, program_id, utbildningsledare_id, skol_id) VALUES
(1, 'NET23', 1, 1, 1),
(2, 'FRONT23', 2, 2, 2),
(3, 'SEC23', 3, 3, 3),
(4, 'FULL23', 4, 4, 4),
(5, 'DB23', 5, 5, 5);

-- student
INSERT INTO student (student_id, klass_id, förnamn, efternamn) VALUES
(1, 1, 'Alice', 'Ahlgren'),
(2, 2, 'Benny', 'Björk'),
(3, 3, 'Clara', 'Carlsson'),
(4, 4, 'Daniel', 'Dahlberg'),
(5, 5, 'Emma', 'Ekström');

-- student_info
INSERT INTO student_info (student_id, personnumer, adress, telefonnumer) VALUES
(1, 199001012345, 'Studentvägen 1, Stockholm', '0731234567'),
(2, 199202023456, 'Studentvägen 2, Göteborg', '0732345678'),
(3, 199303034567, 'Studentvägen 3, Uppsala', '0733456789'),
(4, 199404045678, 'Studentvägen 4, Malmö', '0734567890'),
(5, 199505056789, 'Studentvägen 5, Lund', '0735678901');
