-- This file is to bootstrap a database for the CS3200 project. 

-- Create a new database.  You can change the name later.  You'll
-- need this name in the FLASK API file(s),  the AppSmith 
-- data source creation.
create database orders;

-- Via the Docker Compose file, a special user called webapp will 
-- be created in MySQL. We are going to grant that user 
-- all privilages to the new database we just created. 
-- TODO: If you changed the name of the database above, you need 
-- to change it here too.
grant all privileges on orders.* to 'webapp'@'%';
flush privileges;

-- -- Move into the database we just created.
-- -- TODO: If you changed the name of the database above, you need to
-- -- change it here too. 
use orders;

CREATE TABLE Customer (
    custName VARCHAR(100) NOT NULL,
    customerID int NOT NULL UNIQUE,
    streetAddress VARCHAR(100),
    city VARCHAR(30),
    usState VARCHAR(20),
    zip int,
    PRIMARY KEY(customerID)
);

insert into Customer (custName, customerID, streetAddress, city, usState, zip) 
    values ('Mohandis Haestier', 1, '59 Jana Drive', 'Joliet', 'Illinois', 92575);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) 
    values ('Vidovik Dyet', 2, '6 Canary Place', 'Peoria', 'Illinois', 17493);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) 
    values ('Rheta Manoch', 3, '8264 Harper Point', 'Atlanta', 'Georgia', 23570);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) 
    values ('Jaymee Pikett', 4, '253 Buena Vista Avenue', 'Worcester', 'Massachusetts', 31850);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) 
    values ('Clarine Eatttok', 5, '026 Service Trail', 'Asheville', 'North Carolina', 61552);

CREATE TABLE BillingInfo (
    custID int NOT NULL,
    custName VARCHAR(100) NOT NULL,
    cardNum bigint NOT NULL,
    cvv int NOT NULL,
    expirationMonth int NOT NULL,
    expirationYear int NOT NULL,
    streetAddress VARCHAR(100) NOT NULL,
    city VARCHAR(30) NOT NULL,
    usState VARCHAR(20) NOT NULL,
    zip int NOT NULL,

    CONSTRAINT billing_fk_1
        FOREIGN KEY (custID) REFERENCES Customer (customerID)
);

insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) 
    values (1, 'Merrill Millimoe', '374288468232367', 443, 2, 2024, '0 Mockingbird Trail', 'Omaha', 'Nebraska', 9004);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) 
    values (2, 'Talya Snowden', '3543478346687037', 847, 7, 2024, '17391 Lakewood Gardens Junction', 'Kansas City', 'Missouri', 58409);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) 
    values (3, 'Ripley Kempston', '3561742861087528', 583, 1, 2022, '45636 Graedel Court', 'Huntington', 'West Virginia', 85209);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) 
    values (4, 'Fae Benwell', '3589341513628173', 130, 8, 2028, '4 Towne Parkway', 'Salt Lake City', 'Utah', 80017);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) 
    values (5, 'Derrik Ruger', '564182267369552732', 500, 10, 2024, '187 Helena Drive', 'Fort Lauderdale', 'Florida', 99376);


CREATE TABLE AccountDetails (
    custID int NOT NULL,
    username VARCHAR(30) NOT NULL UNIQUE,
    userPassword VARCHAR(50) NOT NULL,
    email VARCHAR(60) NOT NULL,
    phoneNum bigint NOT NULL,
    PRIMARY KEY(username),

    CONSTRAINT details_fk_1
        FOREIGN KEY (custID) REFERENCES Customer (customerID)
);

insert into AccountDetails (custID, username, userPassword, email, phoneNum) 
    values (1, 'aernke0', '5DiHzS', 'ashowler0@macromedia.com', '8285351083');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) 
    values (2, 'ameys1', 'qYOyg9kLHmC', 'gfraniak1@about.me', '9384371968');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) 
    values (3, 'carthan2', 'dieXPF', 'lguilleton2@shareasale.com', '2871406845');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) 
    values (4, 'tforson3', 'yHPbYiK0', 'djoiris3@google.de', '4705683304');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) 
    values (5, 'rvandenbosch4', 'AhB18QsS', 'gelkins4@forbes.com', '1528515059');

CREATE TABLE Driver (
    empID int NOT NULL UNIQUE,
    driverName char(50),
    PRIMARY KEY(empID)
);

insert into Driver (empID, driverName) 
    values (1, 'Veronika Walesby');
insert into Driver (empID, driverName) 
    values (2, 'Coleman Huckleby');
insert into Driver (empID, driverName) 
    values (3, 'Gaylord Fermer');
insert into Driver (empID, driverName) 
    values (4, 'Jacky Hinkley');
insert into Driver (empID, driverName) 
    values (5, 'Bryna Kier');

CREATE TABLE Category (
    categoryID int NOT NULL UNIQUE,
    catName VARCHAR(50),
    PRIMARY KEY(categoryID)
);

insert into Category (categoryID, catName)
    values (1, 'Desserts');
insert into Category (categoryID, catName) 
    values (2, 'Meat');
insert into Category (categoryID, catName) 
    values (3, 'Drinks');
insert into Category (categoryID, catName) 
    values (4, 'Lunch');
insert into Category (categoryID, catName) 
    values (5, 'Appetizers');

CREATE TABLE Restaurant (
    restaurantID int NOT NULL UNIQUE,
    restaurantName VARCHAR(100),
    streetAddress VARCHAR(100),
    city VARCHAR(30),
    usState VARCHAR(20),
    zip int,
    cuisine VARCHAR(15),
    PRIMARY KEY (restaurantID)
);

insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) 
    values (1, 'Taco Bell', '881 Waxwing Way', 'El Paso', 'Texas', 96902, 'Mexican');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) 
    values (2, 'Panera', '1 Harbort Circle', 'Charlotte', 'North Carolina', 61901, 'Comfort');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) 
    values (3, 'El Jefes', '05 Towne Road', 'Chattanooga', 'Tennessee', 92047, 'Mexican');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) 
    values (4, 'Modern Pizza', '73 Rusk Trail', 'Vero Beach', 'Florida', 55087, 'Italian');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) 
    values (5, 'Red Dragon', '21087 Monica Pass', 'Anaheim', 'California', 96916, 'Asian');


CREATE TABLE RestaurantManager (
    managerID int NOT NULL UNIQUE,
    managerName VARCHAR(100),
    salary int,
    restID int NOT NULL,
    PRIMARY KEY (managerID),

    CONSTRAINT manager_fk_1
        FOREIGN KEY (restID) REFERENCES Restaurant (restaurantID)
);

insert into RestaurantManager (managerID, managerName, salary, restID) 
    values (1, 'Elladine Adnams', 68911, 1);
insert into RestaurantManager (managerID, managerName, salary, restID) 
    values (2, 'Norry Ben-Aharon', 48897, 2);
insert into RestaurantManager (managerID, managerName, salary, restID) 
    values (3, 'Tricia Marland', 12695, 3);
insert into RestaurantManager (managerID, managerName, salary, restID) 
    values (4, 'Allan Sueter', 76273, 4);
insert into RestaurantManager (managerID, managerName, salary, restID) 
    values (5, 'Wells Ayrton', 45662, 5);

CREATE TABLE MenuItems (
    itemID int NOT NULL UNIQUE,
    categoryID int NOT NULL,
    restaurantID int NOT NULL,
    addedByManagerID int,
    itemName VARCHAR(50) NOT NULL,
    itemDescription TEXT,
    price int NOT NULL,
    PRIMARY KEY(itemID),

    CONSTRAINT menu_fk_1
        FOREIGN KEY (categoryID) REFERENCES Category (categoryID),
    CONSTRAINT menu_fk_2
        FOREIGN KEY (restaurantID) REFERENCES Restaurant (restaurantID),
    CONSTRAINT menu_fk_3
        FOREIGN KEY (addedByManagerID) REFERENCES RestaurantManager (managerID)
);

insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerID, itemName, itemDescription, price) 
    values (1, 1, 1, 1, 'Taco', 'Crunchy taco', 4);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerID, itemName, itemDescription, price) 
    values (6, 1, 1, 1, 'Quesarito', 'Yummy quesarito', 8);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerID, itemName, itemDescription, price) 
    values (2, 2, 2, 2, 'Mac and cheese', 'Warm, gooey goodness', 6);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerID, itemName, itemDescription, price) 
    values (3, 3, 3, 3, 'Burrito', 'Customized burrito', 10);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerID, itemName, itemDescription, price) 
    values (4, 4, 4, 4, 'Pizza', 'Delicious pizza', 15);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerID, itemName, itemDescription, price) 
    values (5, 5, 5, 5, 'Noodles', 'Spicy noodles', 12);

CREATE TABLE CustomerOrders (
    custID int NOT NULL,
    orderID int UNIQUE NOT NULL,
    driverID int NOT NULL,
    streetAddress VARCHAR(100),
    city VARCHAR(30),
    usState VARCHAR(20),
    zip int,
    orderDate date,
    totalPrice int,
    delivered boolean,
    PRIMARY KEY(orderID),

    CONSTRAINT order_fk_1
        FOREIGN KEY (custID) REFERENCES Customer (customerID),
    CONSTRAINT order_fk_2
        FOREIGN KEY (driverID) REFERENCES Driver (empID)
);

insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) 
    values (1, 1, 1, '7584 Towne Park', 'Washington', 'District of Columbia', 51040, '2021-12-10', 85842, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) 
    values (2, 2, 1, '5264 Claremont Street', 'Lancaster', 'Pennsylvania', 66605, '2022-07-31', 11850, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) 
    values (3, 3, 1, '33474 Trailsway Parkway', 'Modesto', 'California', 75824, '2022-09-29', 87955, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) 
    values (4, 4, 2, '89 Kenwood Place', 'Hyattsville', 'Maryland', 16639, '2022-06-10', 44475, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) 
    values (5, 5, 3, '33 Bluejay Terrace', 'Saint Paul', 'Minnesota', 97201, '2022-11-10', 58678, false);

CREATE TABLE OrderDetail (
    orderID int NOT NULL,
    detailID int NOT NULL UNIQUE,
    itemID int NOT NULL,
    price int NOT NULL,
    quantity int NOT NULL,
    PRIMARY KEY(detailID),

    CONSTRAINT order_detail_fk_1
        FOREIGN KEY (orderID) REFERENCES CustomerOrders (orderID),
    CONSTRAINT order_detail_fk_2
        FOREIGN KEY (itemID) REFERENCES MenuItems (itemID)
);

insert into OrderDetail (orderID, detailID, itemID, price, quantity) 
    values (1, 1, 1, 579, 62);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) 
    values (1, 6, 6, 12, 1);
    
insert into OrderDetail (orderID, detailID, itemID, price, quantity) 
    values (2, 2, 1, 48, 13);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) 
    values (3, 3, 5, 801, 31);
insert into OrderDetail (orderID, detailID, itemID, price, quantity)
    values (4, 4, 4, 26, 7);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) 
    values (5, 5, 3, 747, 91);

CREATE TABLE Tip (
    custID int NOT NULL,
    empID int NOT NULL,
    tipAmount int NOT NULL,

    CONSTRAINT tip_fk_1
        FOREIGN KEY (custID) REFERENCES Customer (customerID),

    CONSTRAINT tip_fk_2
        FOREIGN KEY (empID) REFERENCES Driver (empID)
);

insert into Tip (custID, empID, tipAmount)
    values (1, 1, 83);
insert into Tip (custID, empID, tipAmount) 
    values (2, 2, 10);
insert into Tip (custID, empID, tipAmount) 
    values (3, 3, 19);
insert into Tip (custID, empID, tipAmount)
    values (4, 4, 16);
insert into Tip (custID, empID, tipAmount) 
    values (5, 5, 23);

CREATE TABLE Communication (
    messageToDriver TEXT,
    custID int NOT NULL,
    driverID int NOT NULL,

    CONSTRAINT comm_fk_1
        FOREIGN KEY (custID) REFERENCES Customer (customerID),

    CONSTRAINT comm_fk_2
        FOREIGN KEY (driverID) REFERENCES Driver (empID)
);

insert into Communication (messageToDriver, custID, driverID) 
    values ('collaboration', 1, 1);
insert into Communication (messageToDriver, custID, driverID) 
    values ('hub', 2, 2);
insert into Communication (messageToDriver, custID, driverID) 
    values ('help-desk', 3, 3);
insert into Communication (messageToDriver, custID, driverID) 
    values ('Triple-buffered', 4, 4);
insert into Communication (messageToDriver, custID, driverID) 
    values ('capability', 5, 5);

CREATE TABLE Review (
    custID int NOT NULL,
    reviewID int NOT NULL UNIQUE,
    orderID int NOT NULL,
    orderDate Date,
    rating int,
    comment TEXT,
    mgrResponse TEXT,
    managerID int,
    PRIMARY KEY(reviewID),

    CONSTRAINT review_fk_1
        FOREIGN KEY (custID) REFERENCES Customer (customerID),

    CONSTRAINT review_fk_2
        FOREIGN KEY (orderID) REFERENCES CustomerOrders (orderID),

    CONSTRAINT review_fk_3
        FOREIGN KEY (managerID) REFERENCES RestaurantManager (managerID)
);

insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) 
    values (1, 1, 1, '2022-05-10', 4, 'The quesarito was very good, the taco could have been a bit crunchier', null, 1);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) 
    values (2, 2, 2, '2022-09-16', 3, 'This meal was a bit underwhelming. Will not be back.', null, 2);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) 
    values (3, 3, 3, '2022-01-10', 2, 'eh', null, 3);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) 
    values (4, 4, 4, '2021-05-10', 5, 'cool', null, 4);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) 
    values (5, 5, 5, '2022-05-12', 3, null, null, 5);

select restaurantName, o.orderID, o.streetAddress, mi.itemName, delivered 
from (CustomerOrders o JOIN Driver d on (o.driverID = d.empID) 
    JOIN OrderDetail od on (od.orderID = o.orderID) JOIN MenuItems mi on (od.itemID = mi.itemID) 
    JOIN Restaurant r on (r.restaurantID = mi.restaurantID)
    GROUP BY od.orderID) 
where d.empID = 1'
