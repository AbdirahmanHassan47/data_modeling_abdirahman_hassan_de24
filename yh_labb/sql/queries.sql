SET search_path TO yrkesco;

-- Lista på alla kurser och vilka lärare som undervisar de.
SELECT 
    k.kursnamn,
    l.förnamn || ' ' || l.efternamn AS lärare
FROM kurslärare kl
JOIN kurs k ON kl.kurs_id = k.kurs_id
JOIN lärare l ON kl.lärare_id = l.lärare_id;


--Lista på alla studenter och deras klassnamn och program
SELECT 
    s.förnamn,
    s.efternamn,
    k.klassnamn,
    p.program_namn
FROM student s
JOIN klass k ON s.klass_id = k.klass_id
JOIN program p ON k.program_id = p.program_id;


--- Lista på alla lärare och deras företag
SELECT 
    l.lärare_id,
    l.förnamn,
    l.efternamn,
    f.namn AS företag
FROM lärare l
JOIN konsult k ON l.lärare_id = k.konsult_id
JOIN företag f ON k.företags_id = f.företags_id;

-- Lista på alla studenters privata info
SELECT 
    s.förnamn,
    s.efternamn,
    si.personnumer,
    si.adress,
    si.telefonnumer
FROM student s
JOIN student_info si ON s.student_id = si.student_id;


--Lista på alla klasser med deras yrkesco.utbildningsledare och
SELECT 
    kl.klassnamn,
    p.program_namn,
    u.förnamn || ' ' || u.efternamn AS utbildningsledare,
    s.skol_namn
FROM klass kl
JOIN program p ON kl.program_id = p.program_id
JOIN utbildningsledare u ON kl.utbildningsledare_id = u.utbildningsledare_id
JOIN skola s ON kl.skol_id = s.skol_id;
