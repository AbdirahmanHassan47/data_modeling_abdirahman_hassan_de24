SET search_path TO yrkesco;

SELECT 
    k.kursnamn,
    k.kurskod,
    l.förnamn || ' ' || l.efternamn AS lärare
FROM kurs k
JOIN kurslärare kl ON k.kurs_id = kl.kurs_id
JOIN lärare l ON kl.lärare_id = l.lärare_id;