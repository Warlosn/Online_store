CREATE TABLE users (
  id int NOT NULL identity(1,1) primary key,
  type varchar(255) DEFAULT NULL,
  login varchar(255) DEFAULT NULL,
  phone int DEFAULT NULL,
  password varchar(255) DEFAULT NULL,
  fullName varchar(255) DEFAULT NULL,
  createdAt datetime NOT NULL,
  updatedAt datetime NOT NULL);

  CREATE TABLE attributecheckboxes (
  id int NOT NULL identity(1,1) primary key,
  value bit DEFAULT '0',
  createdAt datetime NOT NULL,
  updatedAt datetime NOT NULL,
  productId int DEFAULT NULL,
  attributeId int DEFAULT NULL);

  CREATE TABLE attributenumbers(
  id int NOT NULL primary key,
  value float DEFAULT '0',
  createdAt datetime NOT NULL,
  updatedAt datetime NOT NULL,
  productId int DEFAULT NULL,
  attributeId int DEFAULT NULL);

  CREATE TABLE attributeoptions(
  id int NOT NULL primary key,
  name varchar NOT NULL,
  createdAt datetime NOT NULL,
  updatedAt datetime NOT NULL,
  attributeId int DEFAULT NULL);

  CREATE TABLE attributes(
  id int NOT NULL primary key,
  name varchar NOT NULL,
  type varchar NOT NULL,
  createdAt datetime NOT NULL,
  updatedAt datetime NOT NULL,
  categoryId int DEFAULT NULL);


  CREATE TABLE attributeselects (
  id int NOT NULL primary key,
  createdAt datetime NOT NULL,
  updatedAt datetime NOT NULL,
  productId int DEFAULT NULL,
  optionId int DEFAULT NULL);

  CREATE TABLE attributetexts (
  id int NOT NULL primary key,
  value varchar NOT NULL,
  createdAt datetime NOT NULL,
  updatedAt datetime NOT NULL,
  productId int DEFAULT NULL,
  attributeId int DEFAULT NULL);

  CREATE TABLE brands (
  id int NOT NULL primary key,
  name varchar NOT NULL,
  deleted bit DEFAULT '0',
  createdAt datetime NOT NULL,
  updatedAt datetime NOT NULL);

  CREATE TABLE categories (
  id int NOT NULL identity(1,1) primary key,
  name varchar NOT NULL,
  deleted bit DEFAULT '0',
  createdAt datetime NOT NULL,
  updatedAt datetime NOT NULL);

  CREATE TABLE orders (
  id int NOT NULL primary key,
  number int DEFAULT NULL,
  status varchar NOT NULL DEFAULT 'waiting',
  createdAt datetime NOT NULL,
  updatedAt datetime NOT NULL,
  userId int DEFAULT NULL);

CREATE TABLE productorders (
  id int NOT NULL primary key,
  price float NOT NULL DEFAULT '0',
  quantity int NOT NULL DEFAULT '1',
  createdAt datetime NOT NULL,
  updatedAt datetime NOT NULL,
  productId int DEFAULT NULL,
  orderId int DEFAULT NULL);

CREATE TABLE products(
  id int NOT NULL primary key,
  name varchar NOT NULL,
  price float NOT NULL DEFAULT '0',
  image  varchar(255) DEFAULT NULL,
  deleted bit DEFAULT '0',
  createdAt datetime NOT NULL,
  updatedAt datetime NOT NULL,
  categoryId int DEFAULT NULL,
  brandId int DEFAULT NULL);

  CREATE TABLE tokens(
  id int NOT NULL primary key,
  refreshToken varchar NOT NULL,
  createdAt datetime NOT NULL,
  updatedAt datetime NOT NULL,
  userId int DEFAULT NULL);