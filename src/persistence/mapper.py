import threading
from models.city import City
from models.country import Country
from database.operations import RDBOperations


class IMapper:
    def get(self, oid):
        raise NotImplementedError

    def put(self, obj):
        raise NotImplementedError


class AbstractPersistenceMapper(IMapper):
    def __init__(self):
        self.cached_objects = {}
        self.lock = threading.Lock()

    def get(self, oid):
        with self.lock:
            obj = self.cached_objects.get(oid)
            if obj is None:
                obj = self._get_object_from_storage(oid)
            if obj is not None:
                self.cached_objects[oid] = obj
            return obj

    def put(self, obj):
        raise NotImplementedError("Subclasses should implement 'put' method.")

    def _get_object_from_storage(self, oid):
        raise NotImplementedError(
            "Subclasses should implement '_get_object_from_storage' method."
        )


class AbstractRDBMapper(AbstractPersistenceMapper):
    def __init__(self):
        super().__init__()
        self.rdb_operations = RDBOperations.get_instance()

    def _get_object_from_storage(self, oid):
        raise NotImplementedError


class CityRDBMapper(AbstractRDBMapper):
    def _get_object_from_storage(self, oid):
        row = self.rdb_operations.get_city_data(oid)
        if row:
            return City.from_sql(row)
        return None

    def put(self, obj):
        self.rdb_operations.save_city_data(obj)

    def insert(self, obj):
        self.rdb_operations.save_city_data(obj)

    def update(self, obj):
        self.rdb_operations.save_city_data(obj)

    def delete(self, obj):
        self.rdb_operations.delete_city_data(obj.oid)

    def reload(self, obj):
        self.rdb_operations.reload_city_data(obj)


class CountryRDBMapper(AbstractRDBMapper):
    def _get_object_from_storage(self, oid):
        row = self.rdb_operations.get_country_data(oid)
        if row:
            return Country.from_sql(row)
        return None

    def put(self, obj):
        self.rdb_operations.save_country_data(obj)

    def insert(self, obj):
        self.rdb_operations.save_country_data(obj)

    def update(self, obj):
        self.rdb_operations.save_country_data(obj)

    def delete(self, obj):
        self.rdb_operations.delete_country_data(obj.oid)

    def reload(self, obj):
        self.rdb_operations.reload_country_data(obj)
