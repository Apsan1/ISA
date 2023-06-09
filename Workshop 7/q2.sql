CREATE TABLE customers(
    Customer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Firstname VARCHAR(20) NOT NULL,
    Lastname VARCHAR(20) NOT NULL,
    Age INT NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    email INT
);
CREATE TABLE orders (
    ORDER_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_ID INT NOT NULL,
    `Order_date` DATE NOT NULL,
    `Total` INT NOT NULL
);
ALTER TABLE orders
ADD CONSTRAINT fk_orders_customers FOREIGN KEY (Customer_ID) REFERENCES customers(Customer_ID);
INSERT INTO `customers` (
        `Customer_ID`,
        `Firstname`,
        `Lastname`,
        `Age`,
        `Gender`,
        `email`
    )
VALUES (
        NULL,
        'Kabir',
        'Sharma',
        '25',
        'Male',
        'kabir@gmail.com'
    ),
    (
        NULL,
        'Haris',
        'Shrestha',
        '30',
        'Male',
        'haris@gmail.com'
    ),
    (
        NULL,
        'Deepti',
        'Singh',
        '26',
        'Female',
        'deepti@gmail.com'
    )
INSERT INTO `orders` (`ORDER_ID`, `Customer_ID`, `Order_date`, `Total`)
VALUES (NULL, '1', '2023-04-06', '1000'),
    (NULL, '1', '2023-04-01', '3000'),
    (NULL, '2', '2023-03-22', '3500'),
    (NULL, '3', '2023-04-04', '2300') CREATE TABLE `workshop 7`.`orderitems` (
        `OrderItemID` INT NOT NULL,
        `OrderID` INT NOT NULL,
        `ProductItems` VARCHAR(15) NOT NULL,
        `Quantity` INT NOT NULL,
        `Price` INT NOT NULL
    ) ENGINE = InnoDB;
ALTER TABLE orderitems
ADD CONSTRAINT fk_orderitems_orders FOREIGN KEY (OrderID) REFERENCES orders(ORDER_ID);
ALTER TABLE orderitems
MODIFY OrderItemID INT AUTO_INCREMENT PRIMARY KEY;
INSERT INTO `orderitems` (`OrderID`, `ProductItems`, `Quantity`, `Price`)
VALUES ('1', 'Product A', '2', '1200'),
    ('1', 'Product B', '3', '1345'),
    ('2', 'Product C', '4', '1360'),
    ('3', 'Product D', '5', '950'),
    ('3', 'Product E', '1', '1125'),
    ('4', 'Product F', '2', '1780'),
    ('4', 'Product G', '1', '1560'),
    ('3', 'Product H', '3', '1220');
--retrive all orders with cutomer details
SELECT *
FROM orders o
    JOIN customers c USING(Customer_ID);
--Retrieve all orders along with the customer details and order items
SELECT *
FROM orders o
    JOIN customers c USING(Customer_ID)
    JOIN orderitems oi USING(OrderID);
--it is not working
--Retrieve all orders along with the customer details and order items
SELECT *
FROM orders o
    JOIN customers c ON o.Customer_ID = c.Customer_ID
    JOIN orderitems oi ON oi.OrderID = o.ORDER_ID;
--Retrieve the customer details for a specific order (e.g. OrderID=2)
SELECT *
FROM orders o
    JOIN customers c ON o.Customer_ID = c.Customer_ID
WHERE o.ORDER_ID = 2;
--Retrieve all orders for a specific customer (e.g. CustomerID=1)
SELECT *
FROM orders o
    JOIN customers c ON o.Customer_ID = c.Customer_ID
WHERE o.Customer_ID = 1;
--Retrieve the total revenue generated by each customer
SELECT c.Customer_ID,
    c.Firstname,
    c.Lastname,
    SUM(oi.Price) AS TotalRevenue
FROM customers c
    JOIN orders o ON o.Customer_ID = c.Customer_ID
    JOIN orderitems oi ON oi.OrderID = o.ORDER_ID
GROUP BY c.Customer_ID;