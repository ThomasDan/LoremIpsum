CREATE DATABASE LoremIpsumDB

USE LoremIpsumDB

DROP TABLE Translation, Content, Page, Language

CREATE TABLE Language(
	code varchar(5) PRIMARY KEY NOT NULL,
	name varchar(64) NOT NULL
)

CREATE TABLE Page(
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	name varchar(64) NOT NULL
)


CREATE TABLE Content(
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	name varchar(128) NOT NULL,
	pageID int FOREIGN KEY REFERENCES Page(id) NOT NULL
)

CREATE TABLE Translation(
	languageCode varchar(5) FOREIGN KEY REFERENCES Language(code) NOT NULL,
	contentID int FOREIGN KEY REFERENCES Content(id) NOT NULL,
	text varchar(max) NOT NULL

	CONSTRAINT PK_Translation PRIMARY KEY(languageCode, contentID)
)