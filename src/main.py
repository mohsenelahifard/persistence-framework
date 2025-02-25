from database.connection import DatabaseConnection
from database.operations import RDBOperations
from database.query_builder import QueryBuilder
from models.city import City
from models.country import Country
from persistence.facade import PersistenceFacade
from persistence.mapper import CityRDBMapper, CountryRDBMapper
from transactions.transaction import Transaction
import json

with open("config.json", "r") as config_file:
    config = json.load(config_file)
db = DatabaseConnection(
    db_type=config["db_type"],
    host=config["host"],
    username=config["username"],
    password=config["password"],
    db_name=config["db_name"],
)
rdb_operations = RDBOperations.get_instance()
rdb_operations.set_db(db)
persistence = PersistenceFacade.getInstance()
city_mapper = CityRDBMapper()
country_mapper = CountryRDBMapper()
persistence.register_mapper(City, city_mapper)
persistence.register_mapper(Country, country_mapper)
new_country = Country(country_id=110, country="NewCountry", last_update="2025-11-15")
persistence.insert(new_country)
new_city = City(city_id=601, city="NewCity", country_id=83, last_update="2025-11-15")
transaction = Transaction()
transaction.add_insert(new_city)
transaction.commit()
retrieved_city = persistence.get(601, City)
print("Retrieved City:", retrieved_city)
print("Retrieved City's Country:", retrieved_city.country)
retrieved_city.city = "UpdatedCity"
transaction = Transaction()
transaction.add_update(retrieved_city)
transaction.commit()
updated_city = persistence.get(601, City)
print("Updated City:", updated_city)
transaction = Transaction()
transaction.add_delete(updated_city)
transaction.commit()
deleted_city = persistence.get(601, City)
print("Deleted City:", deleted_city)
query = (
    QueryBuilder("city")
    .filter("country_id", "=", 85)
    .order_by_column("city", ascending=True)
    .limit_results(10)
)
results = rdb_operations.execute_query(query.build())
for row in results:
    print(City.from_sql(row))
query = (
    QueryBuilder("city")
    .join("country", "city.country_id = country.country_id")
    .filter("country.country", "=", "Iran")
    .order_by_column("city.city", ascending=True)
)
results = rdb_operations.execute_query(query.build())
for row in results:
    print(City.from_sql(row))
