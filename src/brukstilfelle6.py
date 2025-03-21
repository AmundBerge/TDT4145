import sqlite3

def hent_flyruter():
    con = sqlite3.connect('FlyDB.db')
    cursor = con.cursor()

    flyplass = input("""Vennligst velg en flyplasskode.
    Bodø Lufthavn. Flyplasskode: BOO
    Bergen lufthavn, Flesland. Flyplasskode: BGO
    Oslo lufthavn, Gardermoen. Flyplasskode: OSL
    Stavanger lufthavn, Sola. Flyplasskode: SVG
    Trondheim lufthavn, Værnes. Flyplasskode: TRD
> """)
    ukedag = input("""Vennligst velg en ukedag.
    Mandag: 1
    Tirsdag: 2
    Onsdag: 3
    Torsdag: 4
    Fredag: 5
    Lørdag: 6
    Søndag: 7                   
> """)
    avgang_eller_ankomst = input("""Vennligst velg avgang eller ankomst.
    Avgang: A
    Ankomst: B
> """)
    if avgang_eller_ankomst == "A":
        query = """ 
        SELECT
            Flyrute.flyrutenummer, 
            Flyrute.planlagtAvgangstid AS tid, 
            Flyrute.startFlyplass AS flyplasskode,
            Flyplass.navn AS flyplassnavn
        FROM 
            Flyrute
        JOIN 
            Flyplass ON Flyrute.startFlyplass = Flyplass.flyplasskode
        WHERE 
            Flyrute.ukedagskode LIKE ? 
        AND 
            Flyrute.startFlyplass = ?
        ORDER BY 
            Flyrute.planlagtAvgangstid;
        """
    else:
        query = """ 
        SELECT 
            Flyrute.flyrutenummer, 
            Flyrute.planlagtAnkomsttid AS tid, 
            Flyrute.endeFlyplass AS flyplasskode,
            Flyplass.navn AS flyplassnavn
        FROM 
            Flyrute
        JOIN 
            Flyplass ON Flyrute.endeFlyplass = Flyplass.flyplasskode
        WHERE 
            Flyrute.ukedagskode LIKE ? 
        AND 
            Flyrute.endeFlyplass = ?
        ORDER BY 
            Flyrute.planlagtAnkomsttid;
        """

    cursor.execute(query, ('%' + ukedag + '%', flyplass))
    resultater = cursor.fetchall()

    if resultater:
        for rad in resultater:
            print(f"Flyrutenummer: {rad[0]}, Tid: {rad[1]}, Flyplasskode: {rad[2]}, Flyplassnavn: {rad[3]}")
    else:
        print("Ingen flyruter funnet. ")

    con.close()

hent_flyruter()
