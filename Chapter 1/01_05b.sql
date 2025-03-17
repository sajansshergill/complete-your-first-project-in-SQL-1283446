-- Find null values in Customer table
SELECT * FROM Customer
WHERE FirstName IS NULL OR 
LastName IS NULL OR
EMAIL IS NULL OR
Phone IS NULL;