CREATE VIEW CustomerOrderSummary AS SELECT c.ID AS customer_id, c.Name, c.Place, COUNT(o.order_id) AS total_orders, SUM(o.amount) AS total_spent 
FROM Customers c
LEFT JOIN Orders o ON c.ID = o.customer_id
GROUP BY c.ID, c.Name, c.Place;

SELECT * FROM CustomerOrderSummary;

CREATE VIEW HighSpenders AS SELECT Name, Place FROM CustomerOrderSummary WHERE total_spent > 700;

SELECT * FROM HighSpenders;

CREATE VIEW OrdersWithCustomer AS SELECT o.order_id, o.order_date, o.amount, c.Name AS customer_name, c.Place
FROM Orders o
JOIN Customers c ON o.customer_id = c.ID;

SELECT * FROM OrdersWithCustomer WHERE amount > 300;

DROP VIEW IF EXISTS HighSpenders;

CREATE VIEW CustomersWithoutOrders AS SELECT * FROM Customers WHERE ID NOT IN (SELECT customer_id FROM Orders);

SELECT * FROM CustomersWithoutOrders;

CREATE VIEW OrderStatsByRegion AS SELECT c.Place, COUNT(o.order_id) AS total_orders, SUM(o.amount) AS total_amount FROM Customers c JOIN Orders o ON c.ID = o.customer_id GROUP BY c.Place;

SELECT * FROM OrderStatsByRegion ORDER BY total_amount DESC;

CREATE VIEW AboveAvgOrders AS SELECT * FROM Orders WHERE amount > (SELECT AVG(amount) FROM Orders);

SELECT * FROM AboveAvgOrders;

CREATE VIEW CustomerNamesOnly AS SELECT Name FROM Customers;

