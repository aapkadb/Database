-- Entity
CREATE TABLE IF NOT EXISTS Learn.Users
(
    userid INT NOT NULL,
    name VARCHAR(20),
    phoneNumber VARCHAR(20),
    CONSTRAINT Users_userid PRIMARY KEY(userid)
);

CREATE TABLE IF NOT EXISTS IF NOT EXISTS Learn.Buyer
(
    userid INT NOT NULL,
    PRIMARY KEY(userid),
    CONSTRAINT Buyer_userid FOREIGN KEY(userid) REFERENCES Learn.Users(userid)
);

CREATE TABLE IF NOT EXISTS Learn.Seller
(
    userid INT NOT NULL,
    PRIMARY KEY(userid),
    CONSTRAINT Seller_userid FOREIGN KEY(userid) REFERENCES Learn.Users(userid)
);

CREATE TABLE IF NOT EXISTS Learn.BankCard
(
    cardNumber VARCHAR(25) NOT NULL,
    expiryDate DATE,
    bank VARCHAR(20),
    CONSTRAINT Seller_userid PRIMARY KEY(cardNumber)
);

CREATE TABLE IF NOT EXISTS Learn.CreditCard
(
    cardNumber VARCHAR(25) NOT NULL,
    userid INT NOT NULL,
    organization VARCHAR(20),
    PRIMARY KEY(cardNumber),
    FOREIGN KEY(cardNumber) REFERENCES Learn.BankCard(cardNumber),
    FOREIGN KEY(userid) REFERENCES Learn.Users(userid)
);

CREATE TABLE IF NOT EXISTS Learn.DebitCard
(
    cardNumber VARCHAR(25) NOT NULL,
    userid INT NOT NULL,
    PRIMARY KEY(cardNumber),
    FOREIGN KEY(cardNumber) REFERENCES Learn.BankCard(cardNumber),
    FOREIGN KEY(userid) REFERENCES Learn.Users(userid)
);

CREATE TABLE IF NOT EXISTS Learn.Address
(
    addrid INT NOT NULL,
    userid INT NOT NULL,
    name VARCHAR(50),
    contactPhoneNumber VARCHAR(20),
    province VARCHAR(100),
    city VARCHAR(100),
    streetaddr VARCHAR(100),
    postCode VARCHAR(12),
    PRIMARY KEY(addrid),
    FOREIGN KEY(userid) REFERENCES Learn.Users(userid)
);

CREATE TABLE IF NOT EXISTS Learn.Store
(
    sid INT NOT NULL
    ,name VARCHAR(20)
    ,province VARCHAR(20)
    ,city VARCHAR(20)
    ,streetaddr VARCHAR(20)
    ,customerGrade INT
    ,startTime DATE
    ,PRIMARY KEY(sid)
);

CREATE TABLE IF NOT EXISTS Learn.Brand
(
    brandName VARCHAR(20) NOT NULL
    ,PRIMARY KEY (brandName)
);

CREATE TABLE IF NOT EXISTS Learn.Product
(
    pid INT NOT NULL
    ,sid INT NOT NULL
    ,brand VARCHAR(50) NOT NULL
    ,name VARCHAR(100)
    ,type VARCHAR(50)
    ,modelNumber VARCHAR(50)
    ,color VARCHAR(50)
    ,amount INT
    ,price INT
    ,PRIMARY KEY(pid)
    ,FOREIGN KEY(sid) REFERENCES Learn.Store(sid)
    ,FOREIGN KEY(brand) REFERENCES Learn.Brand(brandName)
);

CREATE TABLE IF NOT EXISTS Learn.OrderItem
(
    itemid INT NOT NULL
    ,pid INT NOT NULL
    ,price INT
    ,creationTime DATE
    ,PRIMARY KEY(itemid)
    ,FOREIGN KEY(pid) REFERENCES Learn.Product(pid)
);

CREATE TABLE IF NOT EXISTS Learn.Orders
(
    orderNumber INT NOT NULL
    ,paymentState VARCHAR(12)
    ,creationTime DATE
    ,totalAmount INT
    ,PRIMARY KEY (orderNumber)
);


CREATE TABLE IF NOT EXISTS Learn.Comments  -- Weak Entity
(
    creationTime DATE NOT NULL
    ,userid INT NOT NULL
    ,pid INT NOT NULL
    ,grade FLOAT
    ,content VARCHAR(500)
    ,PRIMARY KEY(creationTime,userid,pid)
    ,FOREIGN KEY(userid) REFERENCES Learn.Buyer(userid)
    ,FOREIGN KEY(pid) REFERENCES Learn.Product(pid)
);

CREATE TABLE IF NOT EXISTS Learn.ServicePoint
(
    spid INT NOT NULL
    ,streetaddr VARCHAR(40)
    ,city VARCHAR(30)
    ,province VARCHAR(20)
    ,startTime VARCHAR(20)
    ,endTime VARCHAR(20)
    ,PRIMARY KEY(spid)
);
-- Relationship

CREATE TABLE IF NOT EXISTS Learn.Save_to_Shopping_Cart
(
    userid INT NOT NULL
    ,pid INT NOT NULL
    ,addTime DATE
    ,quantity INT
    ,PRIMARY KEY (userid,pid)
    ,FOREIGN KEY(userid) REFERENCES Learn.Buyer(userid)
    ,FOREIGN KEY(pid) REFERENCES Learn.Product(pid)
);

CREATE TABLE IF NOT EXISTS Learn.Contain
(
    orderNumber INT NOT NULL
    ,itemid INT NOT NULL
    ,quantity INT
    ,PRIMARY KEY (orderNumber,itemid)
    ,FOREIGN KEY(orderNumber) REFERENCES Learn.Orders(orderNumber)
    ,FOREIGN KEY(itemid) REFERENCES Learn.OrderItem(itemid)
);

CREATE TABLE IF NOT EXISTS Learn.Payment
(
    orderNumber INT NOT NULL
    ,creditcardNumber VARCHAR(25) NOT NULL
    ,payTime DATE
    ,PRIMARY KEY(orderNumber,creditcardNumber)
    ,FOREIGN KEY(orderNumber) REFERENCES Learn.Orders(orderNumber)
    ,FOREIGN KEY(creditcardNumber) REFERENCES Learn.CreditCard(cardNumber)
);

CREATE TABLE IF NOT EXISTS Learn.Deliver_To
(
    addrid INT NOT NULL
    ,orderNumber INT NOT NULL
    ,TimeDelivered DATE
    ,PRIMARY KEY(addrid,orderNumber)
    ,FOREIGN KEY(addrid) REFERENCES Address(addrid)
    ,FOREIGN KEY(orderNumber) REFERENCES Learn.Orders(orderNumber)
);

CREATE TABLE IF NOT EXISTS Learn.Manage
(
    userid INT NOT NULL
    ,sid INT NOT NULL
    ,SetUpTime DATE
    ,PRIMARY KEY(userid,sid)
    ,FOREIGN KEY(userid) REFERENCES Learn.Seller(userid)
    ,FOREIGN KEY(sid) REFERENCES Learn.Store(sid)
);

CREATE TABLE IF NOT EXISTS Learn.After_Sales_Service_At
(
    brandName VARCHAR(20) NOT NULL
    ,spid INT NOT NULL
    ,PRIMARY KEY(brandName, spid)
    ,FOREIGN KEY(brandName) REFERENCES Learn.Brand (brandName)
    ,FOREIGN KEY(spid) REFERENCES Learn.ServicePoint(spid)
);