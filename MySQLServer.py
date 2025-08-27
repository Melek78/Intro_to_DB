import mysql.connector
from mysql.connector import Error
def create_database():
    alx_book_store = None
    try:
        alx_book_store = mysql.connector.connect(
            host = "localhost",
            user = "root",
            password = "Melek@1234",
            database = "alx_book_store"
        )
        cursor = alx_book_store.cursor
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")
    except Error as e:
        print(f"Error: Could not connect to MySQL server. {e}")

    finally:
        # Close cursor and connection
        if alx_book_store is not None and alx_book_store.is_connected():
            cursor.close()
            alx_book_store.close()

if __name__ == "__main__":
    create_database()