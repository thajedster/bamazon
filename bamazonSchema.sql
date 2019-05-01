DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products(
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(100) NOT NULL,
  department_name VARCHAR(45) NOT NULL,
  price INT NOT NULL,
  stock_quantity INT NOT NULL,
  PRIMARY KEY (item_id)
);

INSERT into products (product_name, department_name, price, stock_quantity) values ('soap', 'laundry', 5.00, 900);
INSERT into products (product_name, department_name, price, stock_quantity) values ('fabric softener', 'laundry', 10.00, 500);
INSERT into products (product_name, department_name, price, stock_quantity) values ('gatorade', 'drinks', 2.50, 120);
INSERT into products (product_name, department_name, price, stock_quantity) values ('chocolate milk', 'drinks', 3.00, 400);
INSERT into products (product_name, department_name, price, stock_quantity) values ('milk', 'drinks', 1.00, 300);
INSERT into products (product_name, department_name, price, stock_quantity) values ('beef', 'meats', 15.00, 30);
INSERT into products (product_name, department_name, price, stock_quantity) values ('chicken', 'meats', 9.00, 50);
INSERT into products (product_name, department_name, price, stock_quantity) values ('gameboy', 'electronics', 50.00, 10);
INSERT into products (product_name, department_name, price, stock_quantity) values ('ps4', 'electronics', 250.00, 25);
INSERT into products (product_name, department_name, price, stock_quantity) values ('keyboard', 'electronics', 100.00, 10);
