class PersistenceFacade:
    _instance = None

    @staticmethod
    def getInstance():
        if PersistenceFacade._instance is None:
            PersistenceFacade._instance = PersistenceFacade()
        return PersistenceFacade._instance

    def __init__(self):
        self.mappers = {}

    def register_mapper(self, cls, mapper):
        self.mappers[cls] = mapper

    def get(self, oid, persistence_class):
        mapper = self.mappers.get(persistence_class)
        if mapper:
            return mapper.get(oid)
        raise ValueError(f"No mapper found for class {persistence_class}")

    def put(self, obj):
        mapper = self.mappers.get(type(obj))
        if mapper:
            mapper.put(obj)
        else:
            raise ValueError(f"No mapper found for object type {type(obj)}")

    def insert(self, obj):
        mapper = self.mappers.get(type(obj))
        if mapper:
            mapper.insert(obj)
        else:
            raise ValueError(f"No mapper found for object type {type(obj)}")

    def update(self, obj):
        mapper = self.mappers.get(type(obj))
        if mapper:
            mapper.update(obj)
        else:
            raise ValueError(f"No mapper found for object type {type(obj)}")

    def delete(self, obj):
        mapper = self.mappers.get(type(obj))
        if mapper:
            mapper.delete(obj)
        else:
            raise ValueError(f"No mapper found for object type {type(obj)}")

    def reload(self, obj):
        mapper = self.mappers.get(type(obj))
        if mapper:
            mapper.reload(obj)
        else:
            raise ValueError(f"No mapper found for object type {type(obj)}")
