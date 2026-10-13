CREATE TABLE IF NOT EXISTS Salesman (
    Salesman_id TEXT PRIMARY KEY,
    name TEXT,
    city TEXT,
    commission REAL
 );

 INSERT INTO Salesman (Salesman_id, name, city, commission) VALUES
 ('5001', 'James Hoog', 'New York', 0.15),
 ('5002', 'Nail Knite', 'Paris', 0.12),
 ('5005', 'Pit Alex', 'London', 0.13),
 ('5006', 'Mc Lyon', 'Paris', 0.14),
 ('5007', 'Paul Adam', 'Rome', 0.11),
 ('5003', 'Lauson Hen', 'San Jose', 0.12);

 SELECT * FROM Salesman;

 CREATE TABLE IF NOT EXISTS Orders (
    ord_no TEXT PRIMARY KEY,
    purch_amt REAL,
    ord_date TEXT,
    customer_id TEXT,
    Salesman_id TEXT
 );

 INSERT INTO Orders (ord_no, purch_amt, ord_date, customer_id, Salesman_id) VALUES
 ('70001', 150.5, '2024-01-06', '3005', '5002'),
 ('70009', 270.65, '2024-01-09', '3001', '5005'),
 ('70002', 65.26, '2024-01-10', '3002', '5001'),
 ('70004', 110.5, '2024-01-10', '3009', '5006'),
 ('70007', 948.5, '2024-01-11', '3005', '5003'),
 ('70005', 2400.6, '2024-01-10', '3007', '5002');

 SELECT * FROM Orders;

 SELECT name, commission
 FROM Salesman;

 SELECT ord_no, purch_amt
 FROM Orders
 WHERE purch_amt < 500;