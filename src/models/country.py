from models.base import PersistentObject


class Country(PersistentObject):
    def __init__(self, country_id=None, country=None, last_update=None):
        super().__init__(oid=country_id)
        self.country_id = country_id
        self.country = country
        self.last_update = last_update

    def __str__(self):
        return f"Country(id={self.country_id}, country={self.country}, last_update={self.last_update})"

    def to_sql(self):
        return (self.country_id, self.country, self.last_update)

    @classmethod
    def from_sql(cls, row):
        return cls(country_id=row[0], country=row[1], last_update=row[2])
