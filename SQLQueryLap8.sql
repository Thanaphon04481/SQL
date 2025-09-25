CREATE DATABASE ZooDB

CREATE TABLE AnimalType(animals_type_id INTEGER Not Null,type_name NVARCHAR(100) Not Null,description NVARCHAR(MAX))
SELECT * from AnimalType

CREATE TABLE SpecieInfo NVARCHAR(MAX),diet NVARCHAR(MAX)

CREATE TABLE Enclosure(enclosure_id INTEGER Not Null,name NVARCHAR(100),location NVARCHAR(200))

CREATE TABLE Keeper(keeper_id INTEGER Not Null,name NVARCHAR(100) Not Null,phone NVARCHAR(50),email NVARCHAR(100))

CREATE TABLE EnclosureKeeper(enclosure_id INTEGER Not Null ,keeper_id INTEGER Not Null)

CREATE TABLE Food