SET search_path TO yrkesco;

--Alla klasser och vilken skola de tillhör
SELECT k.klassnamn, s.skol_namn, s.adress
FROM klass k
JOIN skola s ON k.skol_id = s.skol_id;


--Känsliga information om studenter
SELECT s.förnamn, s.efternamn, si.personnumer
FROM student s
JOIN student_info si ON s.student_id = si.student_id;


--Alla lärare och vilken kurs de undervisar
SELECT l.förnamn || ' ' || l.efternamn AS lärare, k.kursnamn
FROM lärare l
JOIN kurslärare kl ON l.lärare_id = kl.lärare_id
JOIN kurs k ON kl.kurs_id = k.kurs_id
ORDER BY lärare;


--Alla kurser som undervisas av Dagny Sjöström
SELECT k.kursnamn, k.kurskod
FROM kurs k
JOIN kurslärare kl ON k.kurs_id = kl.kurs_id
JOIN lärare l ON kl.lärare_id = l.lärare_id
WHERE l.förnamn = 'Dagny' AND l.efternamn = 'Sjöström';


--Alla elever som studerar i klass "DE24"
SELECT s.förnamn, s.efternamn
FROM student s
JOIN klass k ON s.klass_id = k.klass_id
WHERE k.klassnamn = 'DE24';
