import sqlite3

def hent_flyruter():
    con = sqlite3.connect('SQL/FlyDB.db')
    cursor = con.cursor()

    flyplass = input("Flyplasskode (eks: TRD): ").strip().upper()
    ukedag = input("Ukedag (Mandag: 1; Søndag: 7): ").strip()
    avgang_eller_ankomst = input("Avganger/ankomst (A/B): ").strip().upper()

    if avgang_eller_ankomst == "A":
        query = """SELECT Flyrute.flyrutenummer, 
                          Flyrute.planlagtAvgangstid AS tid, 
                          Flyrute.startFlyplass AS flyplasskode,
                          Flyplass.navn AS flyplassnavn
                   FROM Flyrute
                   JOIN Flyplass ON Flyrute.startFlyplass = Flyplass.flyplasskode
                   WHERE Flyrute.ukedagskode LIKE ? 
                   AND Flyrute.startFlyplass = ?
                   ORDER BY Flyrute.planlagtAvgangstid;"""
    else:
        query = """SELECT Flyrute.flyrutenummer, 
                          Flyrute.planlagtAnkomsttid AS tid, 
                          Flyrute.endeFlyplass AS flyplasskode,
                          Flyplass.navn AS flyplassnavn
                   FROM Flyrute
                   JOIN Flyplass ON Flyrute.endeFlyplass = Flyplass.flyplasskode
                   WHERE Flyrute.ukedagskode LIKE ? 
                   AND Flyrute.endeFlyplass = ?
                   ORDER BY Flyrute.planlagtAnkomsttid;"""

    cursor.execute(query, ('%' + ukedag + '%', flyplass))
    resultater = cursor.fetchall()

    if resultater:
        for rad in resultater:
            print(f"Flyrutenummer: {rad[0]}, Tid: {rad[1]}, Flyplasskode: {rad[2]}, Flyplassnavn: {rad[3]}")
    else:
        print("Niks")

    con.close()

hent_flyruter()
