class RDBOperations:
    _instance = None

    @staticmethod
    def get_instance():
        if RDBOperations._instance is None:
            RDBOperations._instance = RDBOperations()
        return RDBOperations._instance

    def __init__(self):
        self.db = None

    def set_db(self, db):
        self.db = db

    def get_city_data(self, city_id):
        sql = "SELECT * FROM city WHERE city_id = %s"
        cursor = self.db.get_cursor()
        cursor.execute(sql, (city_id,))
        return cursor.fetchone()

    def save_city_data(self, city):
        sql = "SELECT * FROM city WHERE city_id = %s"
        cursor = self.db.get_cursor()
        cursor.execute(sql, (city.city_id,))
        existing_city = cursor.fetchone()
        if existing_city:
            sql = "UPDATE city SET city = %s, country_id = %s, last_update = %s WHERE city_id = %s"
            cursor.execute(
                sql,
                (city.city, city.country_id, city.last_update, city.city_id),
            )
        else:
            sql = "INSERT INTO city (city_id, city, country_id, last_update) VALUES (%s, %s, %s, %s)"
            cursor.execute(sql, city.to_sql())
        self.db.commit()

    def delete_city_data(self, city_id):
        sql = "DELETE FROM city WHERE city_id = %s"
        cursor = self.db.get_cursor()
        cursor.execute(sql, (city_id,))
        self.db.commit()

    def reload_city_data(self, city):
        row = self.get_city_data(city.city_id)
        if row:
            city.city, city.country_id, city.last_update = row[1:]
        else:
            raise ValueError(f"City with ID {city.city_id} does not exist.")

    def get_country_data(self, country_id):
        sql = "SELECT * FROM country WHERE country_id = %s"
        cursor = self.db.get_cursor()
        cursor.execute(sql, (country_id,))
        return cursor.fetchone()

    def save_country_data(self, country):
        sql = "SELECT * FROM country WHERE country_id = %s"
        cursor = self.db.get_cursor()
        cursor.execute(sql, (country.country_id,))
        existing_country = cursor.fetchone()
        if existing_country:
            sql = "UPDATE country SET country = %s, last_update = %s WHERE country_id = %s"
            cursor.execute(
                sql,
                (country.country, country.last_update, country.country_id),
            )
        else:
            sql = "INSERT INTO country (country_id, country, last_update) VALUES (%s, %s, %s)"
            cursor.execute(sql, country.to_sql())
        self.db.commit()

    def delete_country_data(self, country_id):
        sql = "DELETE FROM country WHERE country_id = %s"
        cursor = self.db.get_cursor()
        cursor.execute(sql, (country_id,))
        self.db.commit()

    def reload_country_data(self, country):
        row = self.get_country_data(country.country_id)
        if row:
            country.country, country.last_update = row[1:]
        else:
            raise ValueError(f"Country with ID {country.country_id} does not exist.")

    def execute_query(self, query):
        cursor = self.db.get_cursor()
        cursor.execute(query)
        return cursor.fetchall()
