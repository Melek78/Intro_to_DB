create database alx_book_store;
use alx_book_store
CREATE TABLE Authors(
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    authors_name VARCHAR(215) NOT NULL
)
CREATE TABLE Books(
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130), NOT NULL
    FOREIGN KEY (author_id) REFERENCES Authors(author_id),
    price DOUBLE,
    publication_date DATE
)
CREATE TABLE Customers(
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
)
CREATE TABLE Orders(
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    order_date DATE
)
CREATE TABLE Order_Details(
    orderdetailsid INT AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    quantity DOUBLE
)