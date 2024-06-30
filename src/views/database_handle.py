import mysql.connector
import os 
from dotenv import load_dotenv

load_dotenv()

class database:
    def __init__(self) -> None:
        self.db = mysql.connector.connect(
            host=os.getenv("db_host"),
            user=os.getenv("db_user"),
            passwd=os.getenv("db_password"),
            database=os.getenv("db_database"),
            port=os.getenv("db_port")
        )
        self.cur = self.db.cursor()
    
    def commit(self):
        self.db.commit()

    def run_command(self, command):
        self.cur.execute(command)
        self.db.commit()
        r = self.cur.fetchall()
        if r != []:
            return r

    def get_table(self, name, filter):
        if filter == None:
            self.cur.execute(f"Select * from {name}")
        else:
            self.cur.execute(f"Select * from {name} where {filter}")
        r = self.cur.fetchall()
        return r