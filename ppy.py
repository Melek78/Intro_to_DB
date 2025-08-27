import mysql.connector
alx_book_store = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "Melek@1234",
    database = "alx_book_store",
    ssl_disabled = True
    )
print(alx_book_store.get_server_info())