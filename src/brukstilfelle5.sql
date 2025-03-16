--Brukstilfelle 5 
SELECT 
    Flyselskap.navn, 
    Fly.flytypeNavn,
    COUNT(Fly.registreringsnummer) AS antall_fly
    
FROM 
    Flyselskap INNER JOIN Fly ON Flyselskap.flyselskapskode = Fly.flyselskapskode

GROUP BY 
    Flyselskap.navn, fly.flytypeNavn
;