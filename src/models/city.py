from models.base import PersistentObject
from persistence.facade import PersistenceFacade
from models.country import Country


class City(PersistentObject):
    def __init__(self, city_id=None, city=None, country_id=None, last_update=None):
        super().__init__(oid=city_id)
        self.city_id = city_id
        self.city = city
        self.country_id = country_id
        self.last_update = last_update
        self._country = None

    def __str__(self):
        return f"City(id={self.city_id}, city={self.city}, country_id={self.country_id}, last_update={self.last_update})"

    def to_sql(self):
        return (self.city_id, self.city, self.country_id, self.last_update)

    @classmethod
    def from_sql(cls, row):
        return cls(city_id=row[0], city=row[1], country_id=row[2], last_update=row[3])

    @property
    def country(self):
        if self._country is None:
            self._country = PersistenceFacade.getInstance().get(
                self.country_id, Country
            )
        return self._country

    @country.setter
    def country(self, country):
        self._country = country
        self.country_id = country.country_id
