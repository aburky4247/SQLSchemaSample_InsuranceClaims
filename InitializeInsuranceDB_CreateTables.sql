DROP TABLE IF EXISTS Claims;

DROP TABLE IF EXISTS Policies;

DROP TABLE IF EXISTS Customers;

DROP TABLE IF EXISTS PolicyTypes;

CREATE TABLE PolicyTypes(
PolicyTypeID SERIAL PRIMARY KEY
,PolicyTypeName varchar(255)
,Description varchar(255)
);

CREATE TABLE Customers(
CustomerID SERIAL PRIMARY KEY
,FirstName varchar(255)
,LastName varchar(255)
,DateOfBirth date
,Gender varchar(1)
,Address varchar(255)
,City varchar(255)
,State varchar(255)
,ZipCode varchar(255)
);

CREATE TABLE Policies(
PolicyID SERIAL PRIMARY KEY
,CustomerID INT REFERENCES Customers(CustomerID)
,PolicyTypeID INT REFERENCES PolicyTypes(PolicyTypeID)
,PolicyStartDate date
,PolicyEndDate date
,Premium numeric (18,9)
);

CREATE TABLE Claims(
ClaimID SERIAL PRIMARY KEY
,PolicyID INT REFERENCES Policies(PolicyID)
,ClaimAmount numeric(18,9)
,ClaimDate date
,ClaimDescription TEXT
,ClaimStatus VARCHAR(255)
);