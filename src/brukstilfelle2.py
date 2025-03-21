import sqlite3

def execute_sql_file(db_path, sql_file_path):
    con = sqlite3.connect(db_path)
    cursor = con.cursor()

    with open(sql_file_path, 'r', encoding='utf-8') as f:
        sql_script = f.read()
        cursor.executescript(sql_script)

    con.commit()
    con.close()
    print("SQL file executed successfully.")

if __name__ == "__main__":
    execute_sql_file("FlyDB.db", "res/brukstilfelle2.sql")
