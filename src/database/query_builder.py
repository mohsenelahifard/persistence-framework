class QueryBuilder:
    def __init__(self, table_name):
        self.table_name = table_name
        self.filters = []
        self.order_by = None
        self.limit = None
        self.joins = []

    def filter(self, column, operator, value):
        self.filters.append(f"{column} {operator} '{value}'")
        return self

    def order_by_column(self, column, ascending=True):
        self.order_by = f"ORDER BY {column} {'ASC' if ascending else 'DESC'}"
        return self

    def limit_results(self, limit):
        self.limit = f"LIMIT {limit}"
        return self

    def join(self, table, on_clause):
        self.joins.append(f"JOIN {table} ON {on_clause}")
        return self

    def build(self):
        query = f"SELECT * FROM {self.table_name}"
        if self.joins:
            query += " " + " ".join(self.joins)
        if self.filters:
            query += " WHERE " + " AND ".join(self.filters)
        if self.order_by:
            query += " " + self.order_by
        if self.limit:
            query += " " + self.limit
        return query
