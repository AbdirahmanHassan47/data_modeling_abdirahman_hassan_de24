-- 🧹 Ta bort schema och all data om det redan finns
DROP SCHEMA IF EXISTS yrkesco CASCADE;

-- 🏗️ Skapa nytt schema
CREATE SCHEMA yrkesco;
SET search_path TO yrkesco;

-- 🧱 Skapa tabeller
CREATE TABLE företag (
    företags_id INTEGER PRIMARY KEY,
    namn VARCHAR(50) NOT NULL,
    organisationsnummer VARCHAR(50) NOT NULL,
    adress VARCHAR(255) NOT NULL,
    skatt VARCHAR(50) NOT NULL,
    timlön VARCHAR(50) NOT NULL
);

CREATE TABLE konsult (
    konsult_id INTEGER PRIMARY KEY,
    företags_id INTEGER,
    FOREIGN KEY (företags_id) REFERENCES företag(företags_id)
);

CREATE TABLE lärare (
    lärare_id INTEGER PRIMARY KEY,
    förnamn VARCHAR(50) NOT NULL,
    efternamn VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    telefonnumer VARCHAR(20) UNIQUE,
    FOREIGN KEY (lärare_id) REFERENCES konsult(konsult_id)
);

CREATE TABLE kurs (
    kurs_id INTEGER PRIMARY KEY,
    kursnamn VARCHAR(50) NOT NULL,
    kurskod VARCHAR(10) NOT NULL,
    poäng VARCHAR(10) NOT NULL,
    beskrivning VARCHAR(255)
);

CREATE TABLE kurslärare (
    lärare_id INTEGER,
    kurs_id INTEGER,
    PRIMARY KEY (lärare_id, kurs_id),
    FOREIGN KEY (lärare_id) REFERENCES lärare(lärare_id),
    FOREIGN KEY (kurs_id) REFERENCES kurs(kurs_id)
);

CREATE TABLE program (
    program_id INTEGER PRIMARY KEY,
    program_namn VARCHAR(50) NOT NULL,
    beskrivning VARCHAR(255)
);

CREATE TABLE programkurs (
    program_kurs_id INTEGER PRIMARY KEY,
    kurs_id INTEGER,
    program_id INTEGER,
    startdatum DATE,
    slutdatum DATE,
    FOREIGN KEY (kurs_id) REFERENCES kurs(kurs_id),
    FOREIGN KEY (program_id) REFERENCES program(program_id)
);

CREATE TABLE utbildningsledare (
    utbildningsledare_id INTEGER PRIMARY KEY,
    förnamn VARCHAR(50) NOT NULL,
    efternamn VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE skola (
    skol_id INTEGER PRIMARY KEY,
    skol_namn VARCHAR(50) NOT NULL,
    adress VARCHAR(50) NOT NULL
);

CREATE TABLE klass (
    klass_id INTEGER PRIMARY KEY,
    klassnamn VARCHAR(50) NOT NULL,
    program_id INTEGER,
    utbildningsledare_id INTEGER,
    skol_id INTEGER,
    FOREIGN KEY (program_id) REFERENCES program(program_id),
    FOREIGN KEY (utbildningsledare_id) REFERENCES utbildningsledare(utbildningsledare_id),
    FOREIGN KEY (skol_id) REFERENCES skola(skol_id)
);

CREATE TABLE student (
    student_id INTEGER PRIMARY KEY,
    klass_id INTEGER,
    förnamn VARCHAR(50) NOT NULL,
    efternamn VARCHAR(50) NOT NULL,
    FOREIGN KEY (klass_id) REFERENCES klass(klass_id)
);

CREATE TABLE student_info (
    student_id INTEGER PRIMARY KEY,
    personnumer BIGINT NOT NULL UNIQUE,
    adress VARCHAR(50) NOT NULL,
    telefonnumer VARCHAR(20) NOT NULL,
    FOREIGN KEY (student_id) REFERENCES student(student_id)
);