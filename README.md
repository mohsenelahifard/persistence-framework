# Persistent Framework Project

This project provides a robust framework for managing database operations in Python, leveraging design patterns such as Facade Pattern, State Pattern, Command Pattern, Template and Hook Method Pattern and Transaction Template. It supports multiple database types and offers features for object state management, query building, and transaction handling. This designing is based on Applying UML and Patterns: An Introduction to Object-Oriented Analysis and Design and the Unified Process by Craig Larman.

## Features 💡

### 1. Database Connection Management  

- **Multiple Database Support**: MySQL, SQLite, and PostgreSQL.  
- **Connection Handling**: Easy setup and management of database connections.  

### 2. Object State Management  

- **State Pattern**: Manages object states (New, Clean, Dirty, Deleted) for persistent objects.  
- **State Transitions**: Automatically handles state transitions during database operations.  

### 3. Query Building  

- **Flexible Query Construction**: Build SQL queries with filters, joins, sorting, and limits.  
- **Dynamic Query Generation**: Supports complex queries with ease.  

### 4. Transaction Management 
 
- **Command Pattern**: Implements transactional operations (Insert, Update, Delete) using commands.  
- **Transaction Template**: Ensures atomicity and consistency in database operations.  

### 5. Caching
  
- **Object Caching**: Reduces database access by caching frequently used objects.  
- **Thread-Safe Caching**: Ensures safe concurrent access to cached objects.  

## Requirements ⚙️  
Ensure you have the following Python libraries installed:  
- `mysqlclient`  
- `sqlite3`  
- `psycopg2`  

Install them using:  
```bash
pip install mysqlclient psycopg2
```

## Usage 🔧

### 1. Clone the repository and navigate to the project directory.

### 2. Set up your database connection:

	db = DatabaseConnection(
		db_type="mysql",
		host="localhost",
		user="root",
		password="root",
		db_name="cc",
	)

### 3. Define persistent objects by extending the PersistentObject class:

	class Country(PersistentObject):
		def __init__(self, country_id=None, country=None, last_update=None):
			super().__init__(oid=country_id)
			self.country_id = country_id
			self.country = country
			self.last_update = last_update

### 4. Use the QueryBuilder to construct SQL queries:

	query = (
		QueryBuilder("city")
		.filter("country_id", "=", 97)
		.order_by_column("city", ascending=True)
		.limit_results(10)
	)
	results = RDBOperations.get_instance().execute_query(query.build())

### 5. Manage transactions using the Transaction class:

	transaction = Transaction()
	transaction.add_insert(new_country)
	transaction.add_update(updated_city)
	transaction.commit()

## Example 📝

### You can see an example of inserting, updating and deleting a City object in src/main.py.

## Key Results 📊

- Efficient Database Operations: Seamless handling of CRUD operations with state management.
- Flexible Query Building: Dynamic query generation for complex database interactions.
- Transaction Safety: Ensures data integrity with atomic transactions.

---

Feel free to contribute by submitting issues or pull requests! 🎉