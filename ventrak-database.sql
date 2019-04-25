CREATE TABLE VENDING_MACHINE(
  VENDING_MACHINE_ID INT NOT NULL, 
  LOCATION VARCHAR(30), 
  AMOUNT_OF_ITEMS INT, 
  TOTAL_MONEY DOUBLE,
  PRIMARY KEY(VENDING_MACHINE_ID)
);

CREATE TABLE ITEM(
  ID INT NOT NULL, 
  NAME VARCHAR(20), 
  PRODUCTION_COMPANY VARCHAR(30), 
  QUANTITY INT NOT NULL,
  VENDING_MACHINE_ID INT NOT NULL,
  PRIMARY KEY(ID),
  FOREIGN KEY (VENDING_MACHINE_ID) REFERENCES VENDING_MACHINE(VENDING_MACHINE_ID)
);



INSERT INTO VENDING_MACHINE(
    VENDING_MACHINE_ID, LOCATION, AMOUNT_OF_ITEMS, TOTAL_MONEY
)
VALUES
    (1, '153 Main St.', 20, 50.00);

INSERT INTO ITEM(
  ID, NAME, PRODUCTION_COMPANY, QUANTITY, VENDING_MACHINE_ID
) 
VALUES 
  (1, 'Chocolate Bar', 'Hersheys', 4, 1);

