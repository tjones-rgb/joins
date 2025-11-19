USE Northwind;




-- 1. List the product id, product name, unit price and category name of all
-- products. Order by category name and within that, by product name.
	SELECT ProductsID.P,
		   ProductName.N,
           UnitPrice.U,
           CatergoryName.C
   FROM Products P
   JOIN Categories C 
   ON CategroryID.P = CategoryID.C
   ORDER BY CategoryName.C , ProductName.N;
           



-- 2. List the product id, product name, unit price and supplier name of all
-- products that cost more than $75. Order by product name.
SELECT ProductsID.P,
		ProductName.N,
        UnitPrice.U,
        CompanyName.C AS SupplierName
	FROM Produts P
    JOIN Suppliers S
        ON SupplierID = SupplierID .S
        WHERE UnitPrics > 75
        ORDER BY ProductName.N;


-- 3. List the product id, product name, unit price, category name, and supplier
-- name of every product. Order by product name.
SELECT ProductID.P,
		ProductName.N,
		UnitPrice.U,
        CategoryName.N,
        CompanyName.C AS SuppluerName
	FROM Prtoducts P
    JOIN  categories C
		ON CategoryID.P = CategoryID.C
        JOIN Supplier S
			ON SupplierID.P = SupplierID.C
            ORDER BY ProductName.N;

-- 4. What is the product name(s) and categories of the most expensive
-- products? HINT: Find the max price in a subquery and then use that in
-- your more complex query that joins products with categories.
SELECT ProductName.P,
		CategoryName.C,
        UnitPrice.U
	FROM Products P
	JOIN Categories C
	ON CategoryID.P = CateforyID.C
    WHERE UnitPrice + (
    SELECT MAX(UnitPrice)
    FROM Proucts
    );
    
    
-- 5. List the order id, ship name, ship address, and shipping company name of
-- every order that shipped to Germany.
SELECT OrderID.O,
		ShipName.S,
        ShipAddress.S,
        CompanyName.C AS ShipperName
	FROM Orders O
	JOIN Shippers S
		ON ShipVia.S = ShipperID.S
        WHERE ShipCountry.S = 'Germany';
        
        
-- 6. List the order id, order date, ship name, ship address of all orders that
-- ordered "Sasquatch Ale"?
	SELECT OrderID.O,
			OrderDate.O,
            ShipName.S,
            ShippAddress.S
		FROM Orders O
        JOIN [Order Details] OD
        ON OrderID.O = OrderID.OD
        JOIN Products P
			ON ProductID.OD = ProductID.P
            WHERE ProductName = 'Sasquatch Ale';

