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
('Boeing 737 800', 'The Boeing Company', 1997, 2020),
('Airbus a320neo', 'Airbus Group', 2016, NULL),
('Dash-8 100', 'De Havilland Canada', 1984, 2005);


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

--Brukstilfelle 3

INSERT INTO Flyrute (flyrutenummer, startFlyplass, endeFlyplass, ukedagskode, planlagtAvgangstid,
                    planlagtAnkomsttid, oppstartDato, sluttDato, flyselskapskode, flytype) VALUES 
('WF1311', 'TRD', 'BOO', '12345', '15:15:00', '16:20:00', ?, NULL, 'WF', 'Dash-8 100'),
('WF1302', 'BOO', 'TRD', '12345', '07:35:00', '08:40:00', ?, NULL, 'WF', 'Dash-8 100'),
('DY753', 'TRD', 'OSL', '1234567', '10:20:00', '11:15:00', ?, NULL, 'DY', 'Boeing 737 800'),
('SK332', 'OSL', 'TRD', '1234567', '08:00:00', '09:05:00', ?, NULL, 'SK', 'Airbus a320neo'),

('SK888', 'TRD', 'SVG', '12345', '10:00:00', '12:10:00', ?, NULL, 'SK', 'Airbus a320neo');

INSERT INTO Mellomlanding (flyrutenummer, flyplasskode, planlagtAvgangstid, planlagtAnkomsttid) VALUES
('SK888', 'BGO', '11:40:00', '11:10:00');

INSERT INTO Flyrutepris (flyrutenummer, startFlyplass, endeFlyplass, billettkategoriType, pris,) VALUES

('WF1311', 'TRD', 'BOO', 'premium', 2018),
('WF1311', 'TRD', 'BOO', 'økonomi', 899),
('WF1311', 'TRD', 'BOO', 'budsjett', 599),

('WF1302', 'BOO', 'TRD', 'premium', 2018),
('WF1302', 'BOO', 'TRD', 'økonomi', 899),
('WF1302', 'BOO', 'TRD', 'budsjett', 599),

('DY753', 'TRD', 'OSL', 'premium', 1500),
('DY753', 'TRD', 'OSL', 'økonomi', 1000),
('DY753', 'TRD', 'OSL', 'budsjett', 500),

('SK332', 'OSL', 'TRD', 'premium', 1500),
('SK332', 'OSL', 'TRD', 'økonomi', 1000),
('SK332', 'OSL', 'TRD', 'budsjett', 500),

--Flyrute SK888

('SK332', 'TRD', 'BGO', 'premium', 2000),
('SK332', 'TRD', 'BGO', 'økonomi', 1500),
('SK332', 'TRD', 'BGO', 'budsjett', 800),

('SK332', 'BGO', 'SVG', 'premium', 1000),
('SK332', 'BGO', 'SVG', 'økonomi', 700),
('SK332', 'BGO', 'SVG', 'budsjett', 350),

('SK332', 'TRD', 'SVG', 'premium', 2200),
('SK332', 'TRD', 'SVG', 'økonomi', 1700),
('SK332', 'TRD', 'SVG', 'budsjett', 1000);

--Brukstilfelle 4

INSERT INTO Flyvning (flyrutenummer, status, loepenummer, flyregistreringsnummer, dato) VALUES
('WF1302', 'planned', NULL, NULL, 2025-04-01),
('DY753', 'planned', NULL, NULL, 2025-04-01),
('SK888', 'planned', NULL, NULL, 2025-04-01);

-- Vi har ikke fått vite oppstartdato på flyruter eller hvilke fly som skal fly hvilke flyvninger.