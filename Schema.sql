CREATE DATABASE BookMS_DB

USE BookMS_DB
CREATE TABLE Book(
Id int IDENTITY(1,1) NOT NULL,
ISBN varchar(13) NOT NULL UNIQUE,
Name varchar(100) NOT NULL,
Author varchar(100) NOT NULL
PRIMARY KEY(Id)
)