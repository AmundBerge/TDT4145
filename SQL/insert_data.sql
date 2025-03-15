--Brukstilfelle 1
INSERT INTO Flyplass (flyplasskode, navn) VALUES
('BOO', 'Bodø Lufthavn'), 
('BGO', 'Bergen Lufthavn Flesland'), 
('OSL', 'Oslo Lufthavn Gardermoen'), 
('SVG', 'Stavanger Lufthavn Sola'), 
('TRD', 'Trondheim Lufthavn Værnes');


--Brukstilfelle 2
INSERT INTO Flyselskap (Flyselskapskode, navn) VALUES
('DY', 'Norwegian'), 
('SK', 'SAS'), 
('WF', 'Widerøe'), 

INSERT INTO Flytype (navn, produsentnavn, foersteProduksjonsaar, sisteProduksjonsaar) VALUES
(Boeing 737 800, The Boeing Company, 1997, 2020),
(Airbus a320neo, Airbus Group, 2016, NULL),
(Dash-8 100, De Havilland Canada, 1984, 2005);


INSERT INTO Flyflaate (flyselskapskode, flytype) VALUES
('DY', 'Boeing 737 800'),
('SK', 'Airbus a320neo'),
('WF', 'Dash-8 100');

INSERT INTO Fly (registreringsnummer, produsentnavn, serienummer, navn, flytypeNavn, flyselskapskode, driftsaar) VALUES
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
