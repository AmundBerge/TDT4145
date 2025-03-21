import sqlite3

def find_available_seats(flight_number):
    con = sqlite3.connect("FlyDB.db")
    cursor = con.cursor()

    query = """
    SELECT 
        setenummer
    FROM 
        Sete
    WHERE 
        loepenummer = ?
    AND 
        erLedig = 1
    """

    cursor.execute(query, (flight_number,))
    seats = cursor.fetchall()

    con.close()

    seter = []

    if seats:
        print(f"Ledige seter for flyvning: {flight_number}:")
        for seat in seats:
            seter.append(seat[0])
    else:
        print(f"Ingen ledige seter for flyvningen. ")
    
    seter.sort(key=lambda x: (int(x[:-1]), x[-1]))

    for seat in seter:
        print(seat)

flight_number = input("""Vennligst skriv inn en flyvning.
    Tilgjengelige løpenumre er:
    1110
    1111
    1112
> """)
find_available_seats(flight_number)
