import sqlite3

con = sqlite3.connect("FlyDB.db")
cursor = con.cursor()

cursor.execute("PRAGMA foreign_keys = OFF;")
cursor.execute("BEGIN TRANSACTION;")

cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
tables = cursor.fetchall()

for table in tables:
    cursor.execute(f'DROP TABLE IF EXISTS "{table[0]}";')

con.commit()
con.close()
