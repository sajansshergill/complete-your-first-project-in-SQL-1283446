-- Remove null values from customer table
SELECT FirstName,
  LastName,
  Email,
  Phone
FROM Customer
WHERE Email IS NOT NULL
  AND PHONE IS NOT NULL;