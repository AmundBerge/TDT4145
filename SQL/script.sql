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
    noedutgang BOOLEAN NOT NULL,
    antallSeter INT NOT NULL,
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
    oppstartDato DATE NOT NULL,
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
    sete VARCHAR(10)
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
