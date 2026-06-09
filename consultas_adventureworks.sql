## MUESTRA LA LISTA DE LAS BICICLETAS MAS CARAS DE LA EMPRESA ORDENADAS DE MAYOR A MENOR ##
SELECT Name, ProductNumber, ListPrice 
FROM Product 
WHERE ListPrice > 1000 
ORDER BY ListPrice DESC;

## LISTA DE CLIENTES ##
SELECT CompanyName, FirstName, LastName, Phone
FROM Customer
ORDER BY CompanyName ASC

## BUSCA LA BICICLETA DE COLOR NEGRO ##
SELECT Name, ProductNumber, Color, ListPrice
FROM Product
WHERE color = 'Black'

## QUE CLIENTE TIENE UNA DIRECCION REGISTRADA EN EL SISTEMA, Y CUAL ES EL ID DE ESA DIRECCION ##
-- REPORTE: Cruce de clientes con sus direcciones asignadas para logística
-- Pregunta: ¿Qué clientes tienen una dirección registrada en el sistema y cuál es el ID de esa dirección?
SELECT Customer.CustomerID, Customer.FirstName, Customer.LastName, CustomerAddress.AddressID
FROM Customer
INNER JOIN CustomerAddress 
ON Customer.CustomerID = CustomerAddress.CustomerID;

## Cuántas direcciones tenemos registradas por cada ID de cliente?##
SELECT CustomerID, COUNT(AddressID) AS TOTALDIRECCION
FROM CustomerAddress
GROUP BY customerid;
