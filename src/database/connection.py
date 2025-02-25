import MySQLdb
import sqlite3
import psycopg2
class DatabaseConnection:
    def __init__(self, db_type, host, username, password, db_name):
        self.db_type = db_type
        self.host = host
        self.username = username
        self.password = password
        self.db_name = db_name
        self.connection = self._connect()
    def _connect(self):
        if self.db_type == "mysql":
            return MySQLdb.connect(
                host=self.host,
                user=self.username,
                passwd=self.password,
                db=self.db_name,
            )
        elif self.db_type == "sqlite":
            return sqlite3.connect(self.db_name)
        elif self.db_type == "postgresql":
            return psycopg2.connect(
                host=self.host,
                user=self.username,
                password=self.password,
                dbname=self.db_name,
            )
        else:
            raise ValueError(f"Unsupported database type: {self.db_type}")
    def get_cursor(self):
        return self.connection.cursor()
    def commit(self):
        self.connection.commit()
    def close(self):
        self.connection.close()