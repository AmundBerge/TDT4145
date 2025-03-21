DROP table if EXISTS Flyselskap;
DROP table if EXISTS Flyprodusent;
DROP table if EXISTS Flytype;
DROP table if EXISTS Rad;
DROP table if EXISTS Flyflaate;
DROP table if EXISTS Fly;
DROP table if EXISTS Flyplass;
DROP table if EXISTS Flyrute;
DROP table if EXISTS Mellomlanding;
DROP table if EXISTS Flyvning;
DROP table if EXISTS Sete;
DROP table if EXISTS Kunde;
DROP table if EXISTS Fordelsprogram;
DROP table if EXISTS Billettkategori;
DROP table if EXISTS Flyrutepris;
DROP table if EXISTS Billettkjop;
DROP table if EXISTS Reise;
DROP table if EXISTS Delreise;
DROP table if EXISTS Innsjekking;
DROP table if EXISTS InnsjekketBagasje;

PRAGMA foreign_keys = ON;

CREATE TABLE Flyselskap (
    flyselskapskode VARCHAR(10) PRIMARY KEY,
    navn VARCHAR(100) NOT NULL
);

CREATE TABLE Flyprodusent (
    navn VARCHAR(100) PRIMARY KEY,
    nasjonalitet VARCHAR(100) NOT NULL,
    stiftelsesaar INT NOT NULL
);

CREATE TABLE Flytype (
    navn VARCHAR(100) PRIMARY KEY,
    produsentnavn VARCHAR(100) REFERENCES Flyprodusent(navn),
    foersteProduksjonsaar INT NOT NULL,
    sisteProduksjonsaar INT 
);

CREATE TABLE Rad (
    flytypeNavn VARCHAR(100) REFERENCES Flytype(navn),
    radNummer INT,
    noedutgang INT NOT NULL CHECK (noedutgang IN (0, 1)),
    antallSeter INT NOT NULL,
    bokstavkode VARCHAR(100) NOT NULL, -- nytt attributt for å indikere hvilke seter raden her
    PRIMARY KEY (flytypeNavn, radNummer)
);

CREATE TABLE Flyflaate (
    flyselskapskode VARCHAR(10) REFERENCES Flyselskap(flyselskapskode),
    flytype VARCHAR(100) REFERENCES Flytype(navn),
    PRIMARY KEY (flyselskapskode, flytype)
);

CREATE TABLE Fly (
    registreringsnummer VARCHAR(20) PRIMARY KEY,
    produsentnavn VARCHAR(100) REFERENCES Flyprodusent(navn),
    serienummer INT NOT NULL,
    navn VARCHAR(100),
    flytypeNavn VARCHAR(100) REFERENCES Flytype(navn),
    flyselskapskode VARCHAR(10) REFERENCES Flyselskap(flyselskapskode),
    driftsaar INT NOT NULL,
    UNIQUE (produsentnavn, serienummer)
);

CREATE TABLE Flyplass (
    flyplasskode VARCHAR(10) PRIMARY KEY,
    navn VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Flyrute (
    flyrutenummer VARCHAR(20) PRIMARY KEY,
    startFlyplass VARCHAR(10) REFERENCES Flyplass(flyplasskode),
    endeFlyplass VARCHAR(10) REFERENCES Flyplass(flyplasskode),
    ukedagskode VARCHAR(7) NOT NULL,
    planlagtAvgangstid TIME NOT NULL,
    planlagtAnkomsttid TIME NOT NULL,
    oppstartDato DATE, -- endret fra DATE NOT NULL til bare DATE
    sluttDato DATE,
    flyselskapskode VARCHAR(10) REFERENCES Flyselskap(flyselskapskode),
    flytype VARCHAR(100) REFERENCES Flytype(navn)
);

CREATE TABLE Mellomlanding (
    flyrutenummer VARCHAR(20) REFERENCES Flyrute(flyrutenummer),
    flyplasskode VARCHAR(10) REFERENCES Flyplass(flyplasskode),
    planlagtAvgangstid TIME NOT NULL,
    planlagtAnkomsttid TIME NOT NULL,
    PRIMARY KEY (flyrutenummer, flyplasskode)
);

CREATE TABLE Flyvning (
    flyrutenummer VARCHAR(20) REFERENCES Flyrute(flyrutenummer),
    status VARCHAR(20) CHECK (status IN ('planned', 'active', 'completed', 'cancelled')),
    loepenummer INT PRIMARY KEY,
    flyregistreringsnummer VARCHAR(20) REFERENCES Fly(registreringsnummer),
    dato DATE NOT NULL,
    UNIQUE (dato, flyrutenummer)
);

CREATE TABLE Sete ( -- Ny tabell for sete
    loepenummer VARCHAR(20) REFERENCES Flyvning(loepenummer),
    setenummer VARCHAR(4),
    erLedig INT NOT NULL CHECK (erLedig in (0, 1)),
    PRIMARY KEY (loepenummer, setenummer)
);

CREATE TABLE Kunde (
    kundenummer INT PRIMARY KEY,
    navn VARCHAR(100) NOT NULL,
    telefonnummer VARCHAR(30),
    epostadresse VARCHAR(100),
    nasjonalitet VARCHAR(50)
);

CREATE TABLE Fordelsprogram (
    referansenummer INT PRIMARY KEY,
    flyselskapskode VARCHAR(10) REFERENCES Flyselskap(flyselskapskode),
    kundenummer INT REFERENCES Kunde(kundenummer)
);

CREATE TABLE Billettkategori (
    type VARCHAR(20) PRIMARY KEY CHECK (type IN ('budsjett', 'økonomi', 'premium'))
);

CREATE TABLE Flyrutepris (
    flyrutenummer VARCHAR(20) REFERENCES Flyrute(flyrutenummer),
    startFlyplass VARCHAR(10) REFERENCES Flyplass(flyplasskode),
    endeFlyplass VARCHAR(10) REFERENCES Flyplass(flyplasskode),
    billettkategoriType VARCHAR(20) REFERENCES Billettkategori(type),
    pris INT NOT NULL,
    PRIMARY KEY (flyrutenummer, startFlyplass, endeFlyplass, billettkategoriType)
);

CREATE TABLE Billettkjop (
    referansenummer INT PRIMARY KEY,
    kundenummer INT REFERENCES Kunde(kundenummer),
    samletPris INT NOT NULL
);

CREATE TABLE Reise (
    referansenummer INT REFERENCES Billettkjop(referansenummer),
    reiseID INT PRIMARY KEY,
    reisetype VARCHAR(10) CHECK (reisetype IN ('one-way', 'round-trip'))
);

CREATE TABLE Delreise (
    reiseID INT REFERENCES Reise(reiseID),
    delreiseID INT PRIMARY KEY,
    loepenummer INT REFERENCES Flyvning(loepenummer),
    billettkategoriType VARCHAR(20) REFERENCES Billettkategori(type),
    sete VARCHAR(4)
);

CREATE TABLE Innsjekking (
    innsjekkingsID INT PRIMARY KEY,
    reiseID INT REFERENCES Reise(reiseID),
    kundenummer INT REFERENCES Kunde(kundenummer),
    tidspunkt TIMESTAMP 
);

CREATE TABLE InnsjekketBagasje (
    registreringsnummer INT PRIMARY KEY,
    innsjekkingsID INT REFERENCES Innsjekking(innsjekkingsID),
    delreiseID INT REFERENCES Delreise(delreiseID),
    vekt FLOAT,
    innleveringstidspunkt TIMESTAMP
);
