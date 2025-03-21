import sqlite3

def run_query():
    con = sqlite3.connect("FlyDB.db")
    cursor = con.cursor()

    query = """
    SELECT 
        Flyselskap.navn, 
        Fly.flytypeNavn,
        COUNT(Fly.registreringsnummer) AS antall_fly
    FROM 
        Flyselskap 
    INNER JOIN Fly ON Flyselskap.flyselskapskode = Fly.flyselskapskode
    GROUP BY 
        Flyselskap.navn, Fly.flytypeNavn;
    """

    cursor.execute(query)
    results = cursor.fetchall()

    for row in results:
        print(row)

    con.close()

if __name__ == "__main__":
    run_query()
