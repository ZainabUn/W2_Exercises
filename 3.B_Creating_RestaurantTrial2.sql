CREATE DATABASE Restaurant;
#Want to change type of to enum later to choose equipment,menu

CREATE TABLE Supplies(
ID INT PRIMARY KEY AUTO_INCREMENT,
Typeof VARCHAR(25)
);

Create TABLE Menu(
DishID INT PRIMARY KEY,
NameDish VARCHAR(100)
);

#Will change menu id to enum later
CREATE TABLE Orders(
OrderID INT PRIMARY KEY AUTO_INCREMENT,
MenuID INT,
Price DEC
);

#Employee role will be changed to enum later like maybe cashier,kitchen, etc
CREATE TABLE Employees(
EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
EmployeeName VARCHAR(255),
EmployeePhoneNumber VARCHAR(255),
EmployeeRole VARCHAR(255)
);

CREATE TABLE Customers(
CustomerName VARCHAR(100),
Orderdetail VarChar(255)
);

ALTER TABLE Orders
ADD CONSTRAINT fk1 FOREIGN KEY (MenuID) 
REFERENCES Menu(DishID) ;

#have to add null and autoincrement later for the datatypes
