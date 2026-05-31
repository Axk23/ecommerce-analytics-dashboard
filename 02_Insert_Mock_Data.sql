-- Dodanie Klientów
INSERT INTO Customers (FirstName, LastName, Email, Country, RegistrationDate)
VALUES
('Jan', 'Kowalski', 'jan.kowalski@email.com', 'Poland', '2025-11-15'),
('Anna', 'Nowak', 'anna.nowak@email.com', 'Poland', '2026-01-10'),
('John', 'Smith', 'john.smith@email.com', 'USA', '2026-03-05'),
('Maria', 'Garcia', 'maria.garcia@email.com', 'Spain', '2026-04-20');

-- Dodanie Produktów
INSERT INTO Products (ProductName, Category, Price, StockQuantity)
VALUES
('Laptop 13 Pro', 'Electronics', 4200.00, 100),
('Bezprzewodowa Myszka', 'Electronics', 150.00, 200),
('Ergonomiczny Fotel', 'Furniture', 850.00, 30),
('Klawiatura Mechaniczna', 'Electronics', 350.00, 150),
('Biurko Regulowane', 'Furniture', 1200.00, 15);

-- Dodanie Zamówień
INSERT INTO Orders (CustomerID, OrderDate, [Status])
VALUES
(1, '2026-02-15', 'Completed'),
(2, '2026-03-10 14:45:00', 'Completed'),
(1, '2026-04-05 09:15:00', 'Completed'), -- drugie zamowienie 1 klienta
(3, '2026-05-12 16:20:00', 'Shipped'),   -- czeka
(4, '2026-05-25 11:00:00', 'Canceled');  -- anulowane

--Jan Kowalski: Laptop i Myszka
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
VALUES
(1, 1, 1, 4200.00),
(1, 2, 1, 150.00);

--Anna Nowak: Ergo Fotel
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
VALUES
(2, 3, 1, 850.00);

--Jan Kowalski (drugi raz): Klawiatura
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
VALUES 
(3, 4, 1, 350.00);

--John Smith: Biurko i Fotel
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
VALUES 
(4, 5, 1, 1200.00),
(4, 3, 1, 850.00);

--Maria Garcia: 2x Laptop ANULOWANE
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
VALUES 
(5, 1, 2, 4200.00);