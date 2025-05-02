SET search_path TO yrkesco;


SELECT 
    l.lärare_id,
    l.förnamn,
    l.efternamn,
    k.kursnamn,
    k.kurskod
FROM 
    lärare l
JOIN 
    kurslärare kl ON l.lärare_id = kl.lärare_id
JOIN 
    kurs k ON kl.kurs_id = k.kurs_id;


SELECT 
    k.konsult_id,
    f.namn AS företagsnamn,
    f.organisationsnummer,
    f.timlön
FROM 
    konsult k
JOIN 
    företag f ON k.företags_id = f.konsult_id;

