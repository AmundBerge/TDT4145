--Brukstilfelle 1
INSERT INTO Flyplass (flyplasskode, navn) VALUES
('BOO', 'Bodø Lufthavn'), 
('BGO', 'Bergen Lufthavn Flesland'), 
('OSL', 'Oslo Lufthavn Gardermoen'), 
('SVG', 'Stavanger Lufthavn Sola'), 
('TRD', 'Trondheim Lufthavn Værnes');


--Brukstilfelle 2
INSERT INTO Flyprodusent (navn, nasjonalitet, stiftelsesaar) VALUES
('The Boeing Company', 'USA', 1916),
('Airbus Group', 'Frankrike', 1970),
('De Havilland Canada', 'Canada', 1928);

INSERT INTO Flyselskap (Flyselskapskode, navn) VALUES
('DY', 'Norwegian'), 
('SK', 'SAS'), 
('WF', 'Widerøe'); 

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


INSERT INTO Rad (flytypeNavn, radNummer, noedutgang, antallSeter, bokstavkode) VALUES
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


--Brukstilfelle 3
INSERT INTO Flyrute (flyrutenummer, startFlyplass, endeFlyplass, ukedagskode, planlagtAvgangstid,
                    planlagtAnkomsttid, oppstartDato, sluttDato, flyselskapskode, flytype) VALUES 
('WF1311', 'TRD', 'BOO', '12345', '15:15:00', '16:20:00', NULL, NULL, 'WF', 'Dash-8 100'),
('WF1302', 'BOO', 'TRD', '12345', '07:35:00', '08:40:00', NULL, NULL, 'WF', 'Dash-8 100'),
('DY753', 'TRD', 'OSL', '1234567', '10:20:00', '11:15:00', NULL, NULL, 'DY', 'Boeing 737 800'),
('SK332', 'OSL', 'TRD', '1234567', '08:00:00', '09:05:00', NULL, NULL, 'SK', 'Airbus a320neo'),

('SK888', 'TRD', 'SVG', '12345', '10:00:00', '12:10:00', NULL, NULL, 'SK', 'Airbus a320neo');

INSERT INTO Mellomlanding (flyrutenummer, flyplasskode, planlagtAvgangstid, planlagtAnkomsttid) VALUES
('SK888', 'BGO', '11:40:00', '11:10:00');


INSERT INTO  Billettkategori (type) VALUES
('budsjett'),
('økonomi'),
('premium');

INSERT INTO Flyrutepris (flyrutenummer, startFlyplass, endeFlyplass, billettkategoriType, pris) VALUES

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
('WF1302', 'planned', 1110, NULL, 2025-04-01),
('DY753', 'planned', 1111, NULL, 2025-04-01),
('SK888', 'planned', 1112, NULL, 2025-04-01);

--Brukstilfelle 5 
 SELECT 
     Flyselskap.navn, 
     Fly.flytypeNavn,
     COUNT(fly.registreringsnummer) AS antall_fly
 
 FROM 
     Flyselskap INNER JOIN Fly ON Flyselskap.flyselskapskode = Fly.flyselskapskode
 
 GROUP BY 
     Flyselskap.navn, fly.flytypeNavn
 ;

--Brukstilfelle 7
 INSERT INTO Kunde (kundenummer, navn, telefonnummer, epostadresse, nasjonalitet) VALUES
 (999, 'Margunn', '+46 420 69 666', 'margunn69@dabomb.com', 'Sverige');
 
 INSERT INTO Billettkjop (referansenummer, kundenummer, samletPris) VALUES
 (1,999, 2018),
 (2,999, 2018),
 (3,999, 2018),
 (4,999, 2018),
 (5,999, 2018),
 (6,999, 2018),
 (7,999, 2018),
 (8,999, 2018),
 (9,999, 2018),
 (10,999, 599);
 
 INSERT INTO Reise (referansenummer, reiseID, reisetype) VALUES
 (1, 6660, 'one-way'),
 (2, 6661, 'one-way'),
 (3, 6662, 'one-way'),
 (4, 6663, 'one-way'),
 (5, 6664, 'one-way'),
 (6, 6665, 'one-way'),
 (7, 6666, 'one-way'),
 (8, 6667, 'one-way'),
 (9, 6668, 'one-way'),
 (10, 6669, 'one-way');
 
 INSERT INTO Delreise (reiseID, delreiseID, loepenummer, billettkategoriType, sete) VALUES 
 (6660, 420, 1110, 'premium', 'C1'),
 (6661, 421, 1110, 'premium', 'D1'),
 (6662, 422, 1110, 'premium', 'A2'),
 (6663, 423, 1110, 'premium', 'B2'),
 (6664, 424, 1110, 'premium', 'C2'),
 (6665, 425, 1110, 'premium', 'D2'),
 (6666, 426, 1110, 'premium', 'A3'),
 (6667, 427, 1110, 'premium', 'B3'),
 (6668, 428, 1110, 'premium', 'C3'),
 (6669, 429, 1110, 'budsjett', 'D9');