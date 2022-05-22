create database online_store;
use online_store;
show tables from online_store;
select * from users;
select * from tokens;
select * from attributes;
select * from attributeoptions;
select * from attributeselects;
select * from attributecheckboxes;
select * from attributenumbers;
select * from attributetexts;
select * from brands;
select * from categories;
select * from products;
select * from productorders;
select * from orders;

show create table attributeoptions;

insert into Users(id,type,login,phone,password, fullName, createdAt, updatedAt) 
values(1,'admin','admin', +375447372894,'$2b$04$6InQij02ZYSfwHTrEnpqI.qbZPUcH6.roP3WFyRQeudGSMS1dFZIK','admin','2022-05-16 23:33:05','2022-05-16 23:30:05');
CREATE TABLE Users ( 
   id INT NOT NULL,
   type VARCHAR(255) NOT NULL,
   password VARCHAR NOT NULL,
   login VARCHAR NOT NULL,
   fullName VARCHAR NOT NULL,
    PRIMARY KEY (
   id
    )
);
CREATE TABLE Token ( 
   id INT NOT NULL,
    PRIMARY KEY (
   id
    )
);
CREATE TABLE Product ( 
   id INT NOT NULL,
   name VARCHAR(255) NOT NULL,
   price DECIMAL NOT NULL,
   Brand_id INT NOT NULL,
   Category_id INT NOT NULL,
    PRIMARY KEY (
   id
    )
);
CREATE TABLE Category ( 
   id INT NOT NULL,
   name VARCHAR(255) NOT NULL,
    PRIMARY KEY (
   id
    )
);
CREATE TABLE Brand ( 
   id INT NOT NULL,
   name VARCHAR(255),
    PRIMARY KEY (
   id
    )
);
CREATE TABLE Attribute ( 
   id INT NOT NULL,
   name VARCHAR(255) NOT NULL,
   type VARCHAR(255) NOT NULL,
    PRIMARY KEY (
   id
    )
);
CREATE TABLE Attribute_Category ( 
   id INT NOT NULL,
   Attribute_id INT NOT NULL,
   Category_id INT NOT NULL,
    PRIMARY KEY (
   id
    )
);
CREATE TABLE AttributeText_Product ( 
   id INT NOT NULL,
   value VARCHAR(255),
   Attribute_id INT NOT NULL,
   Product_id INT NOT NULL,
    PRIMARY KEY (
   id
    )
);
CREATE TABLE AttributeSelect ( 
   id INT NOT NULL,
   option VARCHAR(255) NOT NULL,
   Attribute_id INT NOT NULL,
    PRIMARY KEY (
   id
    )
);
CREATE TABLE AttributeNumber_Product ( 
   id INT NOT NULL,
   value INT NOT NULL,
   Product_id INT NOT NULL,
   Attribute_id INT NOT NULL,
    PRIMARY KEY (
   id
    )
);
CREATE TABLE AttributeSelect_Product ( 
   id INT NOT NULL,
   AttributeSelect_id INT NOT NULL,
   Product_id INT NOT NULL,
    PRIMARY KEY (
   id
    )
);
CREATE TABLE table1 ( 
   id INT NOT NULL,
    PRIMARY KEY (
   id
    )
);
ALTER TABLE Product 
  ADD CONSTRAINT Brand-Product
  FOREIGN KEY ( 
   Brand_id
)   REFERENCES Brand( 
   id
) ;


ALTER TABLE Product 
  ADD CONSTRAINT Category-Product
  FOREIGN KEY ( 
   Category_id
)   REFERENCES Category( 
   id
) ;


ALTER TABLE Attribute_Category 
  ADD CONSTRAINT Attribute-Attribute_Category
  FOREIGN KEY ( 
   Attribute_id
)   REFERENCES Attribute( 
   id
) ;


ALTER TABLE Attribute_Category 
  ADD CONSTRAINT Category-Attribute_Category
  FOREIGN KEY ( 
   Category_id
)   REFERENCES Category( 
   id
) ;


ALTER TABLE AttributeSelect 
  ADD CONSTRAINT Attribute-AttributeSelect
  FOREIGN KEY ( 
   Attribute_id
)   REFERENCES Attribute( 
   id
) ;


ALTER TABLE AttributeText_Product 
  ADD CONSTRAINT Attribute-AttributeText_Product
  FOREIGN KEY ( 
   Attribute_id
)   REFERENCES Attribute( 
   id
) ;


ALTER TABLE AttributeText_Product 
  ADD CONSTRAINT Product-AttributeText_Product
  FOREIGN KEY ( 
   Product_id
)   REFERENCES Product( 
   id
) ;


ALTER TABLE AttributeNumber_Product 
  ADD CONSTRAINT Product-AttributeNumber_Product
  FOREIGN KEY ( 
   Product_id
)   REFERENCES Product( 
   id
) ;


ALTER TABLE AttributeNumber_Product 
  ADD CONSTRAINT Attribute-AttributeNumber_Product
  FOREIGN KEY ( 
   Attribute_id
)   REFERENCES Attribute( 
   id
) ;


ALTER TABLE AttributeSelect_Product 
  ADD CONSTRAINT AttributeSelect-AttributeSelect_Product
  FOREIGN KEY ( 
   AttributeSelect_id
)   REFERENCES AttributeSelect( 
   id
) ;


ALTER TABLE AttributeSelect_Product 
  ADD CONSTRAINT Product-AttributeSelect_Product
  FOREIGN KEY ( 
   Product_id
)   REFERENCES Product( 
   id
) ;