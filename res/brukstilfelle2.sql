INSERT OR IGNORE INTO Flyprodusent (navn, nasjonalitet, stiftelsesaar) VALUES
('The Boeing Company', 'USA', 1916),
('Airbus Group', 'Frankrike', 1970),
('De Havilland Canada', 'Canada', 1928);

INSERT OR IGNORE INTO Flyselskap (Flyselskapskode, navn) VALUES
('DY', 'Norwegian'), 
('SK', 'SAS'), 
('WF', 'Widerøe'); 

INSERT OR IGNORE INTO Flytype (navn, produsentnavn, foersteProduksjonsaar, sisteProduksjonsaar) VALUES
('Boeing 737 800', 'The Boeing Company', 1997, 2020),
('Airbus a320neo', 'Airbus Group', 2016, NULL),
('Dash-8 100', 'De Havilland Canada', 1984, 2005);


INSERT OR IGNORE INTO Flyflaate (flyselskapskode, flytype) VALUES
('DY', 'Boeing 737 800'),
('SK', 'Airbus a320neo'),
('WF', 'Dash-8 100');

INSERT OR IGNORE INTO Fly (registreringsnummer, produsentnavn, serienummer, navn, flytypeNavn, flyselskapskode, driftsaar) VALUES
('LN-ENU', 'The Boeing Company', 42069, NULL, 'Boeing 737 800', 'DY', 2015),
('LN-ENR', 'The Boeing Company', 42093, 'Jan Bålsrud', 'Boeing 737 800', 'DY', 2018),
('LN-NIQ', 'The Boeing Company', 39403, 'Max Manus', 'Boeing 737 800', 'DY', 2011),
('LN-ENS', 'The Boeing Company', 42281, NULL, 'Boeing 737 800', 'DY', 2017),
('SE-RUB', 'Airbus Group', 9518, 'Birger Viking', 'Airbus a320neo', 'SK', 2020),
('SE-DIR', 'Airbus Group', 11421, 'Nora Viking', 'Airbus a320neo', 'SK', 2023),
('SE-RUP', 'Airbus Group', 12066, 'Ragnhild Viking', 'Airbus a320neo', 'SK', 2024),
('SE-RZE', 'Airbus Group', 12166, 'Ebbe Viking', 'Airbus a320neo', 'SK', 2024),
('LN-WIH', 'De Havilland Canada', 383, 'Oslo', 'Dash-8 100', 'WF', 1994),
('LN-WIA', 'De Havilland Canada', 359, 'Nordland', 'Dash-8 100', 'WF', 1993),
('LN-WIL', 'De Havilland Canada', 298, 'Narvik', 'Dash-8 100', 'WF', 1995);


INSERT OR IGNORE INTO Rad (flytypeNavn, radNummer, noedutgang, antallSeter, bokstavkode) VALUES
('Boeing 737 800', 1, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 2, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 3, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 4, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 5, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 6, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 7, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 8, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 9, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 10, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 11, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 12, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 13, 1, 6, 'ABCXDEF'),
('Boeing 737 800', 14, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 15, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 16, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 17, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 18, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 19, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 20, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 21, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 22, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 23, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 24, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 25, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 26, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 27, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 28, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 29, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 30, 0, 6, 'ABCXDEF'),
('Boeing 737 800', 31, 0, 6, 'ABCXDEF'),

('Airbus a320neo', 1, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 2, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 3, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 4, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 5, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 6, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 7, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 8, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 9, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 10, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 11, 1, 6, 'ABCXDEF'),
('Airbus a320neo', 12, 1, 6, 'ABCXDEF'),
('Airbus a320neo', 13, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 14, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 15, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 16, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 17, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 18, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 19, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 20, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 21, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 22, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 23, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 24, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 25, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 26, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 27, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 28, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 29, 0, 6, 'ABCXDEF'),
('Airbus a320neo', 30, 0, 6, 'ABCXDEF'),

('Dash-8 100', 1, 0, 2, 'XCD'),
('Dash-8 100', 2, 0, 4, 'ABXCD'),
('Dash-8 100', 3, 0, 4, 'ABXCD'),
('Dash-8 100', 4, 0, 4, 'ABXCD'),
('Dash-8 100', 5, 1, 4, 'ABXCD'),
('Dash-8 100', 6, 0, 4, 'ABXCD'),
('Dash-8 100', 7, 0, 4, 'ABXCD'),
('Dash-8 100', 8, 0, 4, 'ABXCD'),
('Dash-8 100', 9, 0, 4, 'ABXCD'),
('Dash-8 100', 10, 0, 4, 'ABXCD');
