CREATE SCHEMA IF NOT EXISTS yrkesco;

SET search_path TO yrkesco;

CREATE TABLE konsult (
    konsult_id INTEGER PRIMARY KEY NOT NULL
);

-- Table: företag
CREATE TABLE företag (
    konsult_id INTEGER PRIMARY KEY,
    namn VARCHAR(50) NOT NULL,
    organisationsnummer VARCHAR(50) NOT NULL,
    adress VARCHAR(255) NOT NULL,
    skatt VARCHAR(50) NOT NULL,
    timlön VARCHAR(50) NOT NULL,
    FOREIGN KEY (konsult_id) REFERENCES konsult(konsult_id)
);

-- Table: lärare
CREATE TABLE lärare (
    lärare_id INTEGER PRIMARY KEY NOT NULL,
    förnamn VARCHAR(50) NOT NULL,
    efternamn VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    telefonnumer VARCHAR(20) UNIQUE,
    FOREIGN KEY (lärare_id) REFERENCES konsult(konsult_id)
);

-- Table: kurs
CREATE TABLE kurs (
    kurs_id INTEGER PRIMARY KEY NOT NULL,
    kursnamn VARCHAR(50) NOT NULL,
    kurskod VARCHAR(10) NOT NULL,
    poäng VARCHAR(10) NOT NULL,
    beskrivning VARCHAR(255)
);

-- Table: kurslärare (many-to-many mellan lärare och kurs)
CREATE TABLE kurslärare (
    lärare_id INTEGER NOT NULL,
    kurs_id INTEGER NOT NULL,
    PRIMARY KEY (lärare_id, kurs_id),
    FOREIGN KEY (lärare_id) REFERENCES lärare(lärare_id),
    FOREIGN KEY (kurs_id) REFERENCES kurs(kurs_id)
);

-- Table: program
CREATE TABLE program (
    program_id INTEGER PRIMARY KEY NOT NULL,
    program_namn VARCHAR(50) NOT NULL,
    beskrivning VARCHAR(255)
);

-- Table: programkurs (many-to-many mellan program och kurs)
CREATE TABLE programkurs (
    program_kurs_id INTEGER PRIMARY KEY,
    kurs_id INTEGER NOT NULL,
    program_id INTEGER NOT NULL,
    startdatum DATE,
    slutdatum DATE,
    FOREIGN KEY (kurs_id) REFERENCES kurs(kurs_id),
    FOREIGN KEY (program_id) REFERENCES program(program_id)
);

-- Table: utbildningsledare
CREATE TABLE utbildningsledare (
    utbildningsledare_id INTEGER PRIMARY KEY NOT NULL,
    förnamn VARCHAR(50) NOT NULL,
    efternamn VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);

-- Table: skola
CREATE TABLE skola (
    skol_id INTEGER PRIMARY KEY NOT NULL,
    skol_namn VARCHAR(50) NOT NULL,
    adress VARCHAR(50) NOT NULL
);

-- Table: klass
CREATE TABLE klass (
    klass_id INTEGER PRIMARY KEY NOT NULL,
    klassnamn VARCHAR(50) NOT NULL,
    program_id INTEGER NOT NULL,
    utbildningsledare_id INTEGER NOT NULL,
    skol_id INTEGER NOT NULL,
    FOREIGN KEY (program_id) REFERENCES program(program_id),
    FOREIGN KEY (utbildningsledare_id) REFERENCES utbildningsledare(utbildningsledare_id),
    FOREIGN KEY (skol_id) REFERENCES skola(skol_id)
);

-- Table: student
CREATE TABLE student (
    student_id INTEGER PRIMARY KEY NOT NULL,
    klass_id INTEGER NOT NULL,
    förnamn VARCHAR(50) NOT NULL,
    efternamn VARCHAR(50) NOT NULL,
    FOREIGN KEY (klass_id) REFERENCES klass(klass_id)
);

-- Table: student_info
CREATE TABLE student_info (
    student_id INTEGER PRIMARY KEY NOT NULL,
    personnumer BIGINT NOT NULL UNIQUE,
    adress VARCHAR(50) NOT NULL,
    telefonnumer VARCHAR(20) NOT NULL,
    FOREIGN KEY (student_id) REFERENCES student(student_id)
);