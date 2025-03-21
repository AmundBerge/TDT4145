INSERT OR IGNORE INTO Flyrute (flyrutenummer, startFlyplass, endeFlyplass, ukedagskode, planlagtAvgangstid,
                    planlagtAnkomsttid, oppstartDato, sluttDato, flyselskapskode, flytype) VALUES 
('WF1311', 'TRD', 'BOO', '12345', '15:15:00', '16:20:00', NULL, NULL, 'WF', 'Dash-8 100'),
('WF1302', 'BOO', 'TRD', '12345', '07:35:00', '08:40:00', NULL, NULL, 'WF', 'Dash-8 100'),
('DY753', 'TRD', 'OSL', '1234567', '10:20:00', '11:15:00', NULL, NULL, 'DY', 'Boeing 737 800'),
('SK332', 'OSL', 'TRD', '1234567', '08:00:00', '09:05:00', NULL, NULL, 'SK', 'Airbus a320neo'),

('SK888', 'TRD', 'SVG', '12345', '10:00:00', '12:10:00', NULL, NULL, 'SK', 'Airbus a320neo');

INSERT OR IGNORE INTO Mellomlanding (flyrutenummer, flyplasskode, planlagtAvgangstid, planlagtAnkomsttid) VALUES
('SK888', 'BGO', '11:40:00', '11:10:00');


INSERT OR IGNORE INTO  Billettkategori (type) VALUES
('budsjett'),
('økonomi'),
('premium');

INSERT OR IGNORE INTO Flyrutepris (flyrutenummer, startFlyplass, endeFlyplass, billettkategoriType, pris) VALUES

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
