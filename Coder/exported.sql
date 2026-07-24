--
-- File generated with SQLiteStudio v3.2.1 on Wed Aug 14 11:30:21 2024
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Customer
CREATE TABLE Customer (
    CustID        INTEGER   PRIMARY KEY,
    CustLastName  CHAR (20) NOT NULL,
    CustFirstName CHAR (15) NOT NULL
);

INSERT INTO Customer (
                         CustID,
                         CustLastName,
                         CustFirstName
                     )
                     VALUES (
                         12000,
                         'Dumonde',
                         'Edmond'
                     );

INSERT INTO Customer (
                         CustID,
                         CustLastName,
                         CustFirstName
                     )
                     VALUES (
                         12200,
                         'Jones',
                         'Richard'
                     );

INSERT INTO Customer (
                         CustID,
                         CustLastName,
                         CustFirstName
                     )
                     VALUES (
                         13139,
                         'Lee',
                         'Cory'
                     );

INSERT INTO Customer (
                         CustID,
                         CustLastName,
                         CustFirstName
                     )
                     VALUES (
                         13331,
                         'Tsurasawa',
                         'Miko'
                     );

INSERT INTO Customer (
                         CustID,
                         CustLastName,
                         CustFirstName
                     )
                     VALUES (
                         13400,
                         'McGavin',
                         'Evan'
                     );

INSERT INTO Customer (
                         CustID,
                         CustLastName,
                         CustFirstName
                     )
                     VALUES (
                         13555,
                         'Barsky',
                         'Tekla'
                     );

INSERT INTO Customer (
                         CustID,
                         CustLastName,
                         CustFirstName
                     )
                     VALUES (
                         14000,
                         'Deavers',
                         'Bartholomew'
                     );

INSERT INTO Customer (
                         CustID,
                         CustLastName,
                         CustFirstName
                     )
                     VALUES (
                         15790,
                         'Whitefeather',
                         'Nan'
                     );

INSERT INTO Customer (
                         CustID,
                         CustLastName,
                         CustFirstName
                     )
                     VALUES (
                         15800,
                         'Xiong',
                         'Cory'
                     );

INSERT INTO Customer (
                         CustID,
                         CustLastName,
                         CustFirstName
                     )
                     VALUES (
                         15888,
                         'Bootwalla',
                         'Sanjay'
                     );

INSERT INTO Customer (
                         CustID,
                         CustLastName,
                         CustFirstName
                     )
                     VALUES (
                         15890,
                         'Valenzuela',
                         'Richard'
                     );

INSERT INTO Customer (
                         CustID,
                         CustLastName,
                         CustFirstName
                     )
                     VALUES (
                         16220,
                         'VerStegen',
                         'Sandy'
                     );

INSERT INTO Customer (
                         CustID,
                         CustLastName,
                         CustFirstName
                     )
                     VALUES (
                         16440,
                         'Addams',
                         'LaToya'
                     );


-- Table: Fabric
CREATE TABLE Fabric (
    FabCode     CHAR (4)  PRIMARY KEY,
    FabDesc     CHAR (25),
    FabColor    CHAR (20),
    FabSupplier INTEGER
);

INSERT INTO Fabric (
                       FabCode,
                       FabDesc,
                       FabColor,
                       FabSupplier
                   )
                   VALUES (
                       'cv15',
                       'Heavy-weight canvas',
                       'Gray',
                       25
                   );

INSERT INTO Fabric (
                       FabCode,
                       FabDesc,
                       FabColor,
                       FabSupplier
                   )
                   VALUES (
                       'cv11',
                       'Mid-weight canvas',
                       'Black',
                       25
                   );

INSERT INTO Fabric (
                       FabCode,
                       FabDesc,
                       FabColor,
                       FabSupplier
                   )
                   VALUES (
                       'ny10',
                       'Nylon',
                       'Denim',
                       15
                   );

INSERT INTO Fabric (
                       FabCode,
                       FabDesc,
                       FabColor,
                       FabSupplier
                   )
                   VALUES (
                       'ny22',
                       'Nylon woven',
                       'Green',
                       17
                   );


-- Table: OrderItem
CREATE TABLE OrderItem (
    OrdNum        INTEGER,
    ProdID        INTEGER,
    Quantity      INTEGER        NOT NULL,
    Price         DECIMAL (6, 2) NOT NULL,
    DiscountLevel CHAR (1)       CHECK (discountLevel IN ('a', 'b', 'c', 'd') ),
    PRIMARY KEY (
        OrdNum,
        ProdID
    )
);

INSERT INTO OrderItem (
                          OrdNum,
                          ProdID,
                          Quantity,
                          Price,
                          DiscountLevel
                      )
                      VALUES (
                          101,
                          110,
                          4,
                          25.99,
                          'a'
                      );

INSERT INTO OrderItem (
                          OrdNum,
                          ProdID,
                          Quantity,
                          Price,
                          DiscountLevel
                      )
                      VALUES (
                          101,
                          355,
                          4,
                          20.99,
                          'a'
                      );

INSERT INTO OrderItem (
                          OrdNum,
                          ProdID,
                          Quantity,
                          Price,
                          DiscountLevel
                      )
                      VALUES (
                          101,
                          375,
                          4,
                          21.16,
                          'a'
                      );

INSERT INTO OrderItem (
                          OrdNum,
                          ProdID,
                          Quantity,
                          Price,
                          DiscountLevel
                      )
                      VALUES (
                          101,
                          376,
                          4,
                          15.99,
                          'a'
                      );

INSERT INTO OrderItem (
                          OrdNum,
                          ProdID,
                          Quantity,
                          Price,
                          DiscountLevel
                      )
                      VALUES (
                          102,
                          400,
                          21,
                          29.9,
                          'b'
                      );

INSERT INTO OrderItem (
                          OrdNum,
                          ProdID,
                          Quantity,
                          Price,
                          DiscountLevel
                      )
                      VALUES (
                          103,
                          420,
                          15,
                          16.99,
                          'b'
                      );

INSERT INTO OrderItem (
                          OrdNum,
                          ProdID,
                          Quantity,
                          Price,
                          DiscountLevel
                      )
                      VALUES (
                          104,
                          410,
                          5,
                          159.99,
                          'c'
                      );

INSERT INTO OrderItem (
                          OrdNum,
                          ProdID,
                          Quantity,
                          Price,
                          DiscountLevel
                      )
                      VALUES (
                          104,
                          344,
                          20,
                          69.99,
                          'b'
                      );

INSERT INTO OrderItem (
                          OrdNum,
                          ProdID,
                          Quantity,
                          Price,
                          DiscountLevel
                      )
                      VALUES (
                          104,
                          355,
                          1,
                          73.99,
                          'a'
                      );

INSERT INTO OrderItem (
                          OrdNum,
                          ProdID,
                          Quantity,
                          Price,
                          DiscountLevel
                      )
                      VALUES (
                          105,
                          410,
                          10,
                          159.99,
                          'c'
                      );

INSERT INTO OrderItem (
                          OrdNum,
                          ProdID,
                          Quantity,
                          Price,
                          DiscountLevel
                      )
                      VALUES (
                          106,
                          410,
                          6,
                          159.99,
                          'c'
                      );

INSERT INTO OrderItem (
                          OrdNum,
                          ProdID,
                          Quantity,
                          Price,
                          DiscountLevel
                      )
                      VALUES (
                          107,
                          220,
                          5,
                          59.99,
                          'a'
                      );

INSERT INTO OrderItem (
                          OrdNum,
                          ProdID,
                          Quantity,
                          Price,
                          DiscountLevel
                      )
                      VALUES (
                          107,
                          400,
                          5,
                          29.99,
                          'a'
                      );

INSERT INTO OrderItem (
                          OrdNum,
                          ProdID,
                          Quantity,
                          Price,
                          DiscountLevel
                      )
                      VALUES (
                          108,
                          410,
                          1,
                          159.99,
                          'c'
                      );

INSERT INTO OrderItem (
                          OrdNum,
                          ProdID,
                          Quantity,
                          Price,
                          DiscountLevel
                      )
                      VALUES (
                          109,
                          110,
                          1,
                          25.99,
                          'd'
                      );

INSERT INTO OrderItem (
                          OrdNum,
                          ProdID,
                          Quantity,
                          Price,
                          DiscountLevel
                      )
                      VALUES (
                          109,
                          375,
                          1,
                          59.99,
                          'd'
                      );

INSERT INTO OrderItem (
                          OrdNum,
                          ProdID,
                          Quantity,
                          Price,
                          DiscountLevel
                      )
                      VALUES (
                          109,
                          344,
                          1,
                          72.99,
                          'd'
                      );

INSERT INTO OrderItem (
                          OrdNum,
                          ProdID,
                          Quantity,
                          Price,
                          DiscountLevel
                      )
                      VALUES (
                          109,
                          355,
                          1,
                          75.99,
                          'd'
                      );

INSERT INTO OrderItem (
                          OrdNum,
                          ProdID,
                          Quantity,
                          Price,
                          DiscountLevel
                      )
                      VALUES (
                          109,
                          376,
                          1,
                          29.99,
                          'd'
                      );

INSERT INTO OrderItem (
                          OrdNum,
                          ProdID,
                          Quantity,
                          Price,
                          DiscountLevel
                      )
                      VALUES (
                          110,
                          220,
                          12,
                          59.99,
                          'b'
                      );

INSERT INTO OrderItem (
                          OrdNum,
                          ProdID,
                          Quantity,
                          Price,
                          DiscountLevel
                      )
                      VALUES (
                          111,
                          355,
                          12,
                          75.99,
                          'b'
                      );

INSERT INTO OrderItem (
                          OrdNum,
                          ProdID,
                          Quantity,
                          Price,
                          DiscountLevel
                      )
                      VALUES (
                          111,
                          375,
                          10,
                          31.99,
                          'b'
                      );

INSERT INTO OrderItem (
                          OrdNum,
                          ProdID,
                          Quantity,
                          Price,
                          DiscountLevel
                      )
                      VALUES (
                          111,
                          376,
                          5,
                          29.99,
                          'a'
                      );

INSERT INTO OrderItem (
                          OrdNum,
                          ProdID,
                          Quantity,
                          Price,
                          DiscountLevel
                      )
                      VALUES (
                          112,
                          375,
                          1,
                          31.99,
                          'd'
                      );

INSERT INTO OrderItem (
                          OrdNum,
                          ProdID,
                          Quantity,
                          Price,
                          DiscountLevel
                      )
                      VALUES (
                          112,
                          376,
                          1,
                          29.99,
                          'd'
                      );


-- Table: Orders
CREATE TABLE Orders (
    OrdNum    INTEGER  PRIMARY KEY,
    OrdDate   DATE     NOT NULL
                       DEFAULT (2020 / 0 / 0),
    OrdCustID INTEGER  REFERENCES Customer (CustID) MATCH SIMPLE,
    OrdShipID CHAR (4) REFERENCES Shipper (ShipID) 
);

INSERT INTO Orders (
                       OrdNum,
                       OrdDate,
                       OrdCustID,
                       OrdShipID
                   )
                   VALUES (
                       101,
                       '2020/12/12',
                       16220,
                       'ups'
                   );

INSERT INTO Orders (
                       OrdNum,
                       OrdDate,
                       OrdCustID,
                       OrdShipID
                   )
                   VALUES (
                       102,
                       '2020/12/12',
                       14000,
                       'usps'
                   );

INSERT INTO Orders (
                       OrdNum,
                       OrdDate,
                       OrdCustID,
                       OrdShipID
                   )
                   VALUES (
                       103,
                       '2020/12/13',
                       14000,
                       'usps'
                   );

INSERT INTO Orders (
                       OrdNum,
                       OrdDate,
                       OrdCustID,
                       OrdShipID
                   )
                   VALUES (
                       104,
                       '2020/12/14',
                       13555,
                       'brow'
                   );

INSERT INTO Orders (
                       OrdNum,
                       OrdDate,
                       OrdCustID,
                       OrdShipID
                   )
                   VALUES (
                       105,
                       '2020/12/14',
                       15888,
                       'usps'
                   );

INSERT INTO Orders (
                       OrdNum,
                       OrdDate,
                       OrdCustID,
                       OrdShipID
                   )
                   VALUES (
                       106,
                       '2020/12/14',
                       15890,
                       'ups'
                   );

INSERT INTO Orders (
                       OrdNum,
                       OrdDate,
                       OrdCustID,
                       OrdShipID
                   )
                   VALUES (
                       107,
                       '2020/12/15',
                       12000,
                       'brow'
                   );

INSERT INTO Orders (
                       OrdNum,
                       OrdDate,
                       OrdCustID,
                       OrdShipID
                   )
                   VALUES (
                       108,
                       '2020/12/16',
                       14000,
                       'usps'
                   );

INSERT INTO Orders (
                       OrdNum,
                       OrdDate,
                       OrdCustID,
                       OrdShipID
                   )
                   VALUES (
                       109,
                       '2020/12/16',
                       13139,
                       'usps'
                   );

INSERT INTO Orders (
                       OrdNum,
                       OrdDate,
                       OrdCustID,
                       OrdShipID
                   )
                   VALUES (
                       110,
                       '2020/12/17',
                       15800,
                       'brow'
                   );

INSERT INTO Orders (
                       OrdNum,
                       OrdDate,
                       OrdCustID,
                       OrdShipID
                   )
                   VALUES (
                       111,
                       '2020/12/17',
                       16440,
                       'usps'
                   );

INSERT INTO Orders (
                       OrdNum,
                       OrdDate,
                       OrdCustID,
                       OrdShipID
                   )
                   VALUES (
                       112,
                       '2020/12/18',
                       13331,
                       'ups'
                   );


-- Table: Product
CREATE TABLE Product (
    prodID        INTEGER        PRIMARY KEY,
    prodDesc      CHAR (35),
    prodFabCode   CHAR (4),
    prodcost      DECIMAL (9, 2),
    prodIntroDate DATE,
    prodprice     DECIMAL (9, 2) 
);

INSERT INTO Product (
                        prodID,
                        prodDesc,
                        prodFabCode,
                        prodcost,
                        prodIntroDate,
                        prodprice
                    )
                    VALUES (
                        110,
                        'Outdoor Adventure Mini-pack',
                        'cv15',
                        13.89,
                        '2018-05-15',
                        25.99
                    );

INSERT INTO Product (
                        prodID,
                        prodDesc,
                        prodFabCode,
                        prodcost,
                        prodIntroDate,
                        prodprice
                    )
                    VALUES (
                        220,
                        'Traveler Computer Overnight Bag',
                        'cv11',
                        23.65,
                        '2019-01-01',
                        59.99
                    );

INSERT INTO Product (
                        prodID,
                        prodDesc,
                        prodFabCode,
                        prodcost,
                        prodIntroDate,
                        prodprice
                    )
                    VALUES (
                        344,
                        'Outdoor Adventure Hiker Pack',
                        'cv15',
                        26.75,
                        '2017-05-30',
                        72.99
                    );

INSERT INTO Product (
                        prodID,
                        prodDesc,
                        prodFabCode,
                        prodcost,
                        prodIntroDate,
                        prodprice
                    )
                    VALUES (
                        355,
                        'Outdoor Waterproof Hiker Pack',
                        'ny22',
                        23.91,
                        '2018-01-15',
                        75.99
                    );

INSERT INTO Product (
                        prodID,
                        prodDesc,
                        prodFabCode,
                        prodcost,
                        prodIntroDate,
                        prodprice
                    )
                    VALUES (
                        375,
                        'Outdoor 2-Gallon Cooler Pack',
                        'ny10',
                        21.16,
                        '2020/5/15',
                        31.99
                    );

INSERT INTO Product (
                        prodID,
                        prodDesc,
                        prodFabCode,
                        prodcost,
                        prodIntroDate,
                        prodprice
                    )
                    VALUES (
                        376,
                        'Outdoor 1-Gallon Cooler Pack',
                        'ny10',
                        16.9,
                        '2020/5/15',
                        29.99
                    );

INSERT INTO Product (
                        prodID,
                        prodDesc,
                        prodFabCode,
                        prodcost,
                        prodIntroDate,
                        prodprice
                    )
                    VALUES (
                        400,
                        'About Town Tablet Pack',
                        'cv11',
                        13.87,
                        '2018-06-01',
                        29.99
                    );

INSERT INTO Product (
                        prodID,
                        prodDesc,
                        prodFabCode,
                        prodcost,
                        prodIntroDate,
                        prodprice
                    )
                    VALUES (
                        410,
                        'Canoe Pack',
                        'cv11',
                        78.01,
                        '2020-12-22',
                        159.99
                    );

INSERT INTO Product (
                        prodID,
                        prodDesc,
                        prodFabCode,
                        prodcost,
                        prodIntroDate,
                        prodprice
                    )
                    VALUES (
                        420,
                        'About Town Versatile Tote',
                        'ny10',
                        7.48,
                        '2017-01-20',
                        19.99
                    );


-- Table: Shipper
CREATE TABLE Shipper (
    ShipID      CHAR (4)  PRIMARY KEY,
    ShipCompany CHAR (40) NOT NULL
);

INSERT INTO Shipper (
                        ShipID,
                        ShipCompany
                    )
                    VALUES (
                        'usps',
                        'United States Postal Service'
                    );

INSERT INTO Shipper (
                        ShipID,
                        ShipCompany
                    )
                    VALUES (
                        'ups',
                        'United Postal Service'
                    );

INSERT INTO Shipper (
                        ShipID,
                        ShipCompany
                    )
                    VALUES (
                        'fdex',
                        'Fedex Shipping'
                    );

INSERT INTO Shipper (
                        ShipID,
                        ShipCompany
                    )
                    VALUES (
                        'brow',
                        'Big Brown Private Shipping Co., LLC'
                    );


-- Table: Supplier
CREATE TABLE Supplier (
    SupID          INTEGER   PRIMARY KEY,
    SupCompanyName CHAR (30) NOT NULL,
    SupState       CHAR (2)  CHECK (supstate IN ('MN', 'OH', 'CA') ),
    SupEmailAddr   CHAR (30) 
);

INSERT INTO Supplier (
                         SupID,
                         SupCompanyName,
                         SupState,
                         SupEmailAddr
                     )
                     VALUES (
                         15,
                         'Panda Fabrics, Inc.',
                         'MN',
                         'dax@pandafab.com'
                     );

INSERT INTO Supplier (
                         SupID,
                         SupCompanyName,
                         SupState,
                         SupEmailAddr
                     )
                     VALUES (
                         17,
                         'Keely Company, LLC',
                         'OH',
                         'andy@keelycollc.com'
                     );

INSERT INTO Supplier (
                         SupID,
                         SupCompanyName,
                         SupState,
                         SupEmailAddr
                     )
                     VALUES (
                         22,
                         'Fergus Textiles',
                         'MN',
                         'support@aaamerc.com'
                     );

INSERT INTO Supplier (
                         SupID,
                         SupCompanyName,
                         SupState,
                         SupEmailAddr
                     )
                     VALUES (
                         25,
                         'Faborganica',
                         'CA',
                         'dudd@faborganica.com'
                     );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
