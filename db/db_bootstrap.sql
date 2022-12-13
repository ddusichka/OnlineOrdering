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

insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Pietrek Buney', 1, '638 Fairview Avenue', 'Palo Alto', 'California', 80124);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Allys Lazonby', 2, '400 Mccormick Alley', 'Cincinnati', 'Ohio', 76056);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Jori Blucher', 3, '352 6th Lane', 'Stamford', 'Connecticut', 56803);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Lynett Collis', 4, '9 Stone Corner Terrace', 'Dallas', 'Texas', 47811);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Ursulina Trewin', 5, '7 Homewood Hill', 'Milwaukee', 'Wisconsin', 3797);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Merissa Bigadike', 6, '00 Haas Crossing', 'Houston', 'Texas', 91867);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Jobina Jukubczak', 7, '4 Brickson Park Terrace', 'Englewood', 'Colorado', 64381);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Mathias Stockin', 8, '31 Brickson Park Center', 'Peoria', 'Illinois', 24302);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Petrina Colt', 9, '94673 Sheridan Trail', 'Erie', 'Pennsylvania', 6339);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Burke Scutter', 10, '252 Darwin Alley', 'Mount Vernon', 'New York', 3241);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Franklin Gooders', 11, '88929 Algoma Parkway', 'Wichita Falls', 'Texas', 60306);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Hughie Iston', 12, '5129 Almo Way', 'Santa Clara', 'California', 66894);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Yulma Donhardt', 13, '79017 Bellgrove Road', 'Trenton', 'New Jersey', 58276);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Collin Wimpenny', 14, '67 Alpine Hill', 'Evansville', 'Indiana', 34709);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Elana Romagnosi', 15, '4 Clove Plaza', 'Oklahoma City', 'Oklahoma', 787);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Mead Popworth', 16, '4 Loomis Parkway', 'Boston', 'Massachusetts', 18240);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Lulu Lissett', 17, '76 Ryan Crossing', 'Wilmington', 'Delaware', 70275);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Laura Disbury', 18, '16591 Blackbird Court', 'Phoenix', 'Arizona', 8128);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Rudie Rodden', 19, '1286 Fremont Avenue', 'Milwaukee', 'Wisconsin', 63533);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Jean Stribbling', 20, '975 Autumn Leaf Park', 'Roanoke', 'Virginia', 66495);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Ezra Vouls', 21, '79 Hagan Hill', 'Des Moines', 'Iowa', 80270);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Ivar Glaserman', 22, '6344 Erie Center', 'Tacoma', 'Washington', 85292);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Miguel Simondson', 23, '35 Mallory Court', 'Glendale', 'California', 50815);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Amalia Tretwell', 24, '2 Cottonwood Plaza', 'Miami', 'Florida', 76273);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Hanson Moynihan', 25, '630 International Parkway', 'Washington', 'District of Columbia', 39765);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Binni Manuelli', 26, '5711 Sheridan Circle', 'Spokane', 'Washington', 16471);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Latrina Livingstone', 27, '7 Monument Park', 'El Paso', 'Texas', 25413);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Alic Conner', 28, '298 Graedel Junction', 'Colorado Springs', 'Colorado', 12497);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Bernetta Plet', 29, '413 Beilfuss Hill', 'Lexington', 'Kentucky', 22834);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Brooke Creddon', 30, '6496 Harbort Place', 'San Francisco', 'California', 97071);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Marcella Kobel', 31, '6 Rieder Parkway', 'Olympia', 'Washington', 16113);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Merle Mourge', 32, '235 Dakota Road', 'Trenton', 'New Jersey', 70126);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Daniella Franzke', 33, '0667 Sutherland Point', 'San Antonio', 'Texas', 1649);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Emory Auston', 34, '5 Marquette Hill', 'Seminole', 'Florida', 65219);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Elena Hollebon', 35, '750 Luster Crossing', 'Knoxville', 'Tennessee', 49249);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Colby Dauber', 36, '0 Kinsman Junction', 'Washington', 'District of Columbia', 84755);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Ado Santoro', 37, '6 Debs Center', 'Jacksonville', 'Florida', 40474);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Ashleigh Bourdas', 38, '23986 Sachs Plaza', 'Huntington', 'West Virginia', 9596);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Lenka Tallquist', 39, '00520 Warner Street', 'Minneapolis', 'Minnesota', 38165);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Constancia De Bernardi', 40, '60 Monument Court', 'Reading', 'Pennsylvania', 72957);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Dorella Gertz', 41, '42 Cherokee Avenue', 'Chicago', 'Illinois', 9267);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Blinni Bampfield', 42, '590 Monterey Trail', 'Augusta', 'Georgia', 43508);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Janis Wyrill', 43, '6119 Ramsey Pass', 'Baltimore', 'Maryland', 45443);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Elliott Dubose', 44, '0 Norway Maple Point', 'Phoenix', 'Arizona', 26616);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Shelli Munkton', 45, '26756 Melody Lane', 'Roanoke', 'Virginia', 90681);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Wilek Borghese', 46, '96 John Wall Park', 'Dallas', 'Texas', 35086);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Dacia Neenan', 47, '762 Vera Circle', 'Pasadena', 'California', 96436);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Estevan Swapp', 48, '10887 Buena Vista Lane', 'Huntsville', 'Alabama', 5467);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Meta Cloy', 49, '76 Oakridge Avenue', 'Silver Spring', 'Maryland', 42949);
insert into Customer (custName, customerID, streetAddress, city, usState, zip) values ('Gabbie Geraldini', 50, '47 Sullivan Circle', 'Crawfordsville', 'Indiana', 12024);

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

insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (1, 'Brod Frowd', '3528720535438444', 754, 3, 2024, '75 Stoughton Alley', 'Austin', 'Texas', 83406);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (2, 'Alain Astle', '3539955858019143', 117, 2, 2017, '0955 Comanche Lane', 'Boca Raton', 'Florida', 44433);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (3, 'Louella McClunaghan', '5002358856589824', 475, 12, 2015, '6655 Kensington Way', 'Arlington', 'Virginia', 24774);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (4, 'Maribeth Strongman', '3589578346278599', 768, 4, 2014, '30 Huxley Park', 'Dallas', 'Texas', 49749);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (5, 'Bernardo Rubbens', '3569582667191898', 575, 10, 2029, '77622 Packers Drive', 'Sacramento', 'California', 39714);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (6, 'Carolyne Pirdy', '3588600802043241', 522, 4, 2013, '53 John Wall Junction', 'Albuquerque', 'New Mexico', 35747);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (7, 'Loree de Mullett', '3557886151864777', 210, 9, 2006, '375 Almo Road', 'Los Angeles', 'California', 75554);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (8, 'Melinde Leverette', '3576805279836613', 32, 10, 2027, '4284 Carpenter Pass', 'Littleton', 'Colorado', 64930);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (9, 'Friedrich Caskey', '5602243006625906', 959, 3, 2014, '79848 Raven Road', 'Fort Smith', 'Arkansas', 63002);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (10, 'Raddie Trewartha', '3572752098260597', 281, 8, 2024, '8348 Muir Parkway', 'Shawnee Mission', 'Kansas', 2827);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (11, 'Myca Becraft', '3581048641714555', 692, 5, 2004, '88 Bonner Court', 'Phoenix', 'Arizona', 80818);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (12, 'Sherlocke O''Malley', '374283602144677', 44, 10, 2015, '9896 Swallow Hill', 'Daytona Beach', 'Florida', 38140);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (13, 'Flossie Rhoades', '3530901914044005', 516, 1, 2025, '33313 Almo Junction', 'Aiken', 'South Carolina', 6778);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (14, 'Elvera Junkison', '3574357007326915', 964, 2, 2003, '34 Quincy Pass', 'Indianapolis', 'Indiana', 89156);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (15, 'Eliza Mewis', '374622507577012', 619, 11, 2000, '5421 Northwestern Center', 'Topeka', 'Kansas', 2635);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (16, 'Laurella McCaughey', '3559171611770874', 664, 9, 2008, '9611 Sunbrook Lane', 'Minneapolis', 'Minnesota', 80437);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (17, 'Tatum Rolston', '3566279514310721', 33, 2, 2025, '482 Namekagon Terrace', 'Green Bay', 'Wisconsin', 16949);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (18, 'Maryanne Cleen', '5353015130373301', 711, 1, 2002, '995 Corben Park', 'Dallas', 'Texas', 65448);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (19, 'Dougy McCarl', '5100134872208603', 549, 6, 2004, '1893 Mallard Hill', 'Birmingham', 'Alabama', 49590);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (20, 'Laney Barthelet', '5010124933095759', 582, 3, 2010, '0 Blackbird Hill', 'Irving', 'Texas', 80337);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (21, 'Zorah Lorraine', '3541905669727596', 577, 9, 2024, '31892 Dapin Junction', 'Huntington', 'West Virginia', 98367);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (22, 'Aurore Clavering', '6381999406839596', 884, 2, 2009, '31205 Rutledge Way', 'Detroit', 'Michigan', 6626);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (23, 'Estell Leveritt', '3570746425583517', 753, 10, 2005, '7874 Mayer Road', 'Beaufort', 'South Carolina', 50089);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (24, 'Nobie Plumer', '3584585489344117', 5, 4, 2004, '83199 Lillian Circle', 'Kansas City', 'Kansas', 14908);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (25, 'Normie Nijssen', '4936220100149430780', 58, 9, 2008, '933 Veith Road', 'Newark', 'Delaware', 69466);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (26, 'Deanne Balch', '5586338405963013', 370, 11, 2001, '37625 Brentwood Drive', 'San Diego', 'California', 54088);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (27, 'Garvy Bartalini', '5108754849046497', 221, 8, 2030, '97 Johnson Crossing', 'Springfield', 'Massachusetts', 32960);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (28, 'Glenda Pagin', '5048377730806358', 297, 6, 2021, '52 Gerald Trail', 'Suffolk', 'Virginia', 95602);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (29, 'Bartolemo Powelee', '3540887537674203', 788, 6, 2003, '32 Becker Parkway', 'Brooklyn', 'New York', 42442);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (30, 'Damian Jaskiewicz', '337941746707263', 789, 10, 2010, '23 Dwight Circle', 'San Francisco', 'California', 84111);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (31, 'Myca Ramble', '3564029736056855', 272, 5, 2012, '7350 Mallard Point', 'Santa Ana', 'California', 22205);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (32, 'Debor Burnhams', '374288999118374', 611, 9, 2024, '3 Donald Trail', 'Rockford', 'Illinois', 44337);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (33, 'Upton Toffel', '3579392141114864', 272, 1, 2025, '4 Saint Paul Street', 'Canton', 'Ohio', 39588);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (34, 'Edna Dallow', '6304391895195066', 749, 5, 2013, '729 Judy Trail', 'Sacramento', 'California', 15093);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (35, 'Dieter Selby', '3548488986169977', 375, 3, 2015, '8 Merry Parkway', 'Orlando', 'Florida', 71019);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (36, 'Doralynn Anselm', '4917240302772526', 675, 3, 2011, '004 Kipling Street', 'Evansville', 'Indiana', 46883);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (37, 'Regine Munnery', '6706836926738304', 864, 4, 2030, '599 Armistice Circle', 'San Diego', 'California', 91011);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (38, 'Bobbie Storek', '3579702348609690', 855, 9, 2005, '8 Meadow Vale Point', 'Paterson', 'New Jersey', 52368);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (39, 'Isac Kunes', '4903291785807658898', 263, 6, 2026, '3503 Ohio Trail', 'Jacksonville', 'Florida', 84495);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (40, 'Cathy Sirmond', '5100136749824017', 349, 10, 2010, '9 Stephen Point', 'Birmingham', 'Alabama', 99011);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (41, 'Carlie Duran', '3577240953919817', 351, 1, 2027, '2 Steensland Road', 'Springfield', 'Illinois', 54973);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (42, 'Tamqrah Rand', '5610755284930211', 157, 12, 2017, '441 Pepper Wood Trail', 'Fort Lauderdale', 'Florida', 34021);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (43, 'Velvet Crayker', '3587232341181497', 390, 7, 2005, '5365 Crowley Crossing', 'Houston', 'Texas', 28617);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (44, 'Consuelo Diwell', '374283362685109', 897, 9, 2006, '983 Corry Drive', 'Baltimore', 'Maryland', 43075);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (45, 'Nikolas Beeze', '201958226923742', 571, 6, 2018, '5490 Cordelia Pass', 'El Paso', 'Texas', 32066);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (46, 'Lizette Simson', '3576597260360063', 706, 3, 2020, '1 Schiller Way', 'Temple', 'Texas', 95037);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (47, 'Clayborne Soggee', '560225180822157097', 218, 2, 2022, '6 Dottie Lane', 'Madison', 'Wisconsin', 42059);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (48, 'Florencia Breckin', '3586234772778644', 674, 9, 2013, '92606 Straubel Way', 'Fort Lauderdale', 'Florida', 40350);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (49, 'Cathyleen Hartshorne', '3585336842005055', 733, 1, 2026, '98 Farragut Terrace', 'San Jose', 'California', 90743);
insert into BillingInfo (custID, custName, cardNum, cvv, expirationMonth, expirationYear, streetAddress, city, usState, zip) values (50, 'Bab Spadoni', '3529867088341555', 615, 8, 2028, '035 Blaine Drive', 'Sacramento', 'California', 85853);

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

insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (1, 'agrills0', 'k5XkuKgV3', 'arontree0@gravatar.com', '7186178693');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (2, 'sjachimiak1', 'LrFKq1Yd', 'irimell1@census.gov', '1731164018');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (3, 'gscopyn2', 'sU6Q5CF4f', 'acopland2@webs.com', '9328945170');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (4, 'cpanketh3', 'fqDMLx', 'awestmerland3@marriott.com', '3677175405');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (5, 'cjaques4', '11k1x8gg', 'lskakunas4@prnewswire.com', '9851983716');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (6, 'sjocelyn5', 'ADHN0kqLVmjU', 'rdowker5@fastcompany.com', '9233123786');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (7, 'ltainton6', 'u81RrTQOpC', 'cpirrie6@sphinn.com', '5113464957');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (8, 'dgregol7', 'W9STq3qDxbWr', 'hcattell7@dion.ne.jp', '2158351956');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (9, 'jomrod8', 'xPPWeT', 'bbarzen8@ask.com', '4415823161');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (10, 'hgrason9', 'M9pQF1', 'spetyt9@nytimes.com', '6753776090');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (11, 'maspa', 'OE9syAKjFh', 'bwetherheada@biblegateway.com', '2457403257');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (12, 'rlefevreb', 'Fk4eSF3iFYq', 'kpeagramb@qq.com', '4025324404');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (13, 'iledurc', 'Nda3Qs', 'audenc@go.com', '8027465124');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (14, 'srobertetd', 'wZwNg7AwNfdj', 'storried@about.me', '7868464210');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (15, 'mmaffye', '9mhQT1KDp', 'anaseye@macromedia.com', '7341790494');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (16, 'labellaf', 'gJgfYdVR4Bq', 'ckenealyf@businesswire.com', '9601610104');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (17, 'hdominkag', '66lnNnuK4E6g', 'scromieg@aol.com', '4164721689');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (18, 'spickwellh', 'ZQHcdTquUMmc', 'wmctrustyh@ucsd.edu', '9133563599');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (19, 'tdrisselli', 'vMmW59o', 'dbingalli@nytimes.com', '3746596266');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (20, 'dpeekj', 'IMiJcKXg', 'rfirebracej@thetimes.co.uk', '3178419502');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (21, 'yivanuschkak', 'I71zEr', 'pstorchk@newsvine.com', '2663174837');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (22, 'cbridgerl', 'VZuHDiO', 'sklasingl@engadget.com', '3411115811');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (23, 'tmoutrayreadm', '2nVYtEr', 'lyolem@stumbleupon.com', '4748693409');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (24, 'ccayleyn', 'Qk6tIZTYiryq', 'minghamn@cbslocal.com', '5277113494');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (25, 'ffriselo', 'e4IEMB', 'pfitzsimonso@netvibes.com', '2646733728');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (26, 'cearwickerp', 'Elo8lscqWNNI', 'dhalfpennyp@twitpic.com', '9258527289');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (27, 'amaccallamq', 'GN3BSkz', 'lleymanq@typepad.com', '8409527327');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (28, 'dblinder', 'Q6jAu2W', 'bolifauntr@theglobeandmail.com', '9887612800');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (29, 'ckynochs', 'zuiuF6SnX', 'esebrights@reverbnation.com', '1285234777');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (30, 'vpaisht', 'cW0BcsPIhQ', 'ghammertont@freewebs.com', '9204637304');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (31, 'cshuggu', 'Z2FqGplW', 'mgerholzu@hc360.com', '9951109401');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (32, 'vdayleyv', 'jN9Dq3uiI', 'tsimmv@ca.gov', '9869428199');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (33, 'djeppsw', 'w3WTuZgQu', 'hflecknellw@tripod.com', '5159123036');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (34, 'gcrippsx', 'w4ydWN9EEr5', 'mpamplinx@posterous.com', '9707077964');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (35, 'gfilyashiny', 'iNhRrE', 'eelcoxy@ftc.gov', '2243117842');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (36, 'jbinnionz', 'hvhf8bh4XM', 'cchesshyrez@mozilla.com', '7311181551');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (37, 'iwhitear10', 'AHIFu7tUj', 'rburker10@creativecommons.org', '8585543027');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (38, 'bbartkiewicz11', 'BqCP6ID', 'dkira11@delicious.com', '3905363472');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (39, 'ohaslum12', 'IQDoQZ1APSD3', 'gioselev12@marketwatch.com', '3221289081');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (40, 'mwooff13', 'Xu7MQYyHUtKz', 'mhillborne13@t.co', '7527605201');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (41, 'djurgen14', 'RlIUg48RKmyW', 'jpickering14@diigo.com', '2148372500');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (42, 'gayrton15', 'iGw3Bzf', 'arewbottom15@spotify.com', '2564158534');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (43, 'sdorin16', 'dyQppWj9q2C', 'gbelfelt16@ucoz.ru', '4672488852');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (44, 'hnoel17', '9JEYvTxWdA', 'mcastiglio17@biblegateway.com', '1807210849');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (45, 'gchatin18', 'JwFFnPo', 'wmulvy18@ebay.com', '9968547884');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (46, 'mlorey19', 'OYhX4GgDoH6k', 'cstronghill19@mac.com', '9795219389');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (47, 'ttremblot1a', 'psQwMZFrXG', 'madam1a@scientificamerican.com', '5052060753');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (48, 'rgrimsdike1b', 'UqDi00j', 'wdarrington1b@wikipedia.org', '7807040393');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (49, 'mswalwel1c', 'SOZILGe', 'fwhyke1c@boston.com', '2283114167');
insert into AccountDetails (custID, username, userPassword, email, phoneNum) values (50, 'sfreire1d', 'DlXZmuBRfTy', 'zbiddulph1d@intel.com', '8081358468');

CREATE TABLE Driver (
    empID int NOT NULL UNIQUE,
    driverName char(100),
    PRIMARY KEY(empID)
);
insert into Driver (empID, driverName) values (1, 'Cecilio Lumby');
insert into Driver (empID, driverName) values (2, 'Scot Gleadle');
insert into Driver (empID, driverName) values (3, 'Marge MacCrackan');
insert into Driver (empID, driverName) values (4, 'Jeffry Vawton');
insert into Driver (empID, driverName) values (5, 'Arlin Draysay');
insert into Driver (empID, driverName) values (6, 'Maisey Purveys');
insert into Driver (empID, driverName) values (7, 'Marijn Brahan');
insert into Driver (empID, driverName) values (8, 'Jackie Kilfeather');
insert into Driver (empID, driverName) values (9, 'Tremain Dowry');
insert into Driver (empID, driverName) values (10, 'Ellette Czaple');
insert into Driver (empID, driverName) values (11, 'Eolanda Rantoull');
insert into Driver (empID, driverName) values (12, 'Brandice Binley');
insert into Driver (empID, driverName) values (13, 'Ximenez Alman');
insert into Driver (empID, driverName) values (14, 'Lonnie Del Checolo');
insert into Driver (empID, driverName) values (15, 'Gordie Shitliffe');
insert into Driver (empID, driverName) values (16, 'Hans Martinyuk');
insert into Driver (empID, driverName) values (17, 'Codie Goulden');
insert into Driver (empID, driverName) values (18, 'Conny Grimolbie');
insert into Driver (empID, driverName) values (19, 'Michele Frensch');
insert into Driver (empID, driverName) values (20, 'Emmaline Doag');
insert into Driver (empID, driverName) values (21, 'Giulietta Merner');
insert into Driver (empID, driverName) values (22, 'Daniela Obal');
insert into Driver (empID, driverName) values (23, 'Hieronymus Couldwell');
insert into Driver (empID, driverName) values (24, 'Zabrina McDougald');
insert into Driver (empID, driverName) values (25, 'Devlen Nowell');
insert into Driver (empID, driverName) values (26, 'Salvidor Falconer');
insert into Driver (empID, driverName) values (27, 'Aldric Tallow');
insert into Driver (empID, driverName) values (28, 'Kiersten Mariot');
insert into Driver (empID, driverName) values (29, 'Leoine Castan');
insert into Driver (empID, driverName) values (30, 'Iorgo Gentry');
insert into Driver (empID, driverName) values (31, 'Moira Mabone');
insert into Driver (empID, driverName) values (32, 'Ham Iannitti');
insert into Driver (empID, driverName) values (33, 'Laurel Coggins');
insert into Driver (empID, driverName) values (34, 'Serge Grelik');
insert into Driver (empID, driverName) values (35, 'Dre Rolling');
insert into Driver (empID, driverName) values (36, 'Ellie Rattery');
insert into Driver (empID, driverName) values (37, 'Lara Lynnett');
insert into Driver (empID, driverName) values (38, 'Ewart St. Quintin');
insert into Driver (empID, driverName) values (39, 'Carolynn Avard');
insert into Driver (empID, driverName) values (40, 'Viva Sparhawk');
insert into Driver (empID, driverName) values (41, 'Aguie Glazzard');
insert into Driver (empID, driverName) values (42, 'Abbie Pavis');
insert into Driver (empID, driverName) values (43, 'Ax Porte');
insert into Driver (empID, driverName) values (44, 'Fidole Punton');
insert into Driver (empID, driverName) values (45, 'Nicky Beeze');
insert into Driver (empID, driverName) values (46, 'Bernadine Valdes');
insert into Driver (empID, driverName) values (47, 'Horatio Haldane');
insert into Driver (empID, driverName) values (48, 'Cati Elwell');
insert into Driver (empID, driverName) values (49, 'Gordy McNeil');
insert into Driver (empID, driverName) values (50, 'Audrey Esser');

CREATE TABLE Category (
    categoryID int NOT NULL UNIQUE,
    catName VARCHAR(50),
    PRIMARY KEY(categoryID)
);

insert into Category (categoryID, catName) values (1, 'Desserts');
insert into Category (categoryID, catName) values (2, 'Entrees');
insert into Category (categoryID, catName) values (3, 'Appetizers');
insert into Category (categoryID, catName) values (4, 'Breakfast');
insert into Category (categoryID, catName) values (5, 'Snacks');
insert into Category (categoryID, catName) values (6, 'Drinks');
insert into Category (categoryID, catName) values (7, 'Seafood');
insert into Category (categoryID, catName) values (8, 'Chicken');
insert into Category (categoryID, catName) values (9, 'Pasta');
insert into Category (categoryID, catName) values (10, 'Pizza');

CREATE TABLE Restaurant (
    restaurantID int NOT NULL UNIQUE,
    restaurantName VARCHAR(100),
    streetAddress VARCHAR(100),
    city VARCHAR(30),
    usState VARCHAR(20),
    zip int,
    cuisine VARCHAR(50),
    PRIMARY KEY (restaurantID)
);

insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (1, 'Vandervort and Sons', '3136 Anhalt Circle', 'Charlotte', 'North Carolina', 44383, 'Costa Rican');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (2, 'Auer-Abbott', '28 Lien Trail', 'New York City', 'New York', 73230, 'Guatemalan');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (3, 'Bernhard, Botsford and Lynch', '140 Crownhardt Terrace', 'Dallas', 'Texas', 12887, 'Seminole');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (4, 'Cummings, Vandervort and Goodwin', '2157 Messerschmidt Center', 'London', 'Kentucky', 56916, 'Filipino');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (5, 'Jast-Kub', '053 Dawn Lane', 'Cincinnati', 'Ohio', 84448, 'Alaskan Athabascan');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (6, 'Osinski, Olson and Roberts', '47675 Nelson Plaza', 'Fresno', 'California', 48444, 'Hmong');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (7, 'Hoppe, Thiel and Schaden', '709 Bartelt Way', 'Baltimore', 'Maryland', 56460, 'Japanese');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (8, 'Langworth-Brakus', '07528 Red Cloud Way', 'Fresno', 'California', 27797, 'Tohono O''Odham');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (9, 'Kunze-Huel', '85726 Rieder Avenue', 'New Orleans', 'Louisiana', 59259, 'Puerto Rican');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (10, 'Von and Sons', '54 Pennsylvania Drive', 'Savannah', 'Georgia', 74919, 'Peruvian');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (11, 'Morissette Group', '21820 Nova Point', 'Lawrenceville', 'Georgia', 24899, 'Japanese');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (12, 'Halvorson-Trantow', '1 Burning Wood Terrace', 'Las Vegas', 'Nevada', 46693, 'Ecuadorian');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (13, 'Brakus LLC', '118 Saint Paul Center', 'San Diego', 'California', 12163, 'Puget Sound Salish');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (14, 'Schulist, Von and Koepp', '312 Burrows Court', 'Rochester', 'New York', 60128, 'Polynesian');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (15, 'Gusikowski-Stehr', '132 East Crossing', 'Tulsa', 'Oklahoma', 77464, 'Potawatomi');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (16, 'Graham-Durgan', '0335 Arkansas Parkway', 'Tacoma', 'Washington', 17533, 'Pakistani');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (17, 'Metz-Johnston', '8 Prairieview Parkway', 'Saint Louis', 'Missouri', 81619, 'Costa Rican');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (18, 'Kovacek and Sons', '4207 Sullivan Terrace', 'Memphis', 'Tennessee', 34032, 'Spaniard');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (19, 'Conroy and Sons', '6 Bunting Street', 'Little Rock', 'Arkansas', 76683, 'Colville');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (20, 'O''Keefe Inc', '59640 Raven Way', 'Seattle', 'Washington', 27233, 'Iroquois');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (21, 'Ratke Inc', '0518 Monument Court', 'New Bedford', 'Massachusetts', 77725, 'Dominican (Dominican Republic)');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (22, 'Kuvalis Inc', '3293 Lien Alley', 'Ann Arbor', 'Michigan', 11794, 'Colville');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (23, 'Ziemann, Morar and Marvin', '5 Oneill Junction', 'San Francisco', 'California', 43386, 'Pakistani');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (24, 'Gleichner-Willms', '4 Merry Court', 'Hampton', 'Virginia', 74323, 'Bangladeshi');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (25, 'Witting, Dicki and Gerlach', '05811 Forest Run Junction', 'Maple Plain', 'Minnesota', 83843, 'Costa Rican');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (26, 'Hickle LLC', '79 Starling Junction', 'Tampa', 'Florida', 45669, 'Yaqui');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (27, 'Becker, Gerhold and Pollich', '775 Boyd Trail', 'Silver Spring', 'Maryland', 88827, 'Houma');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (28, 'Treutel, Crooks and Carter', '10 Swallow Trail', 'Saint Petersburg', 'Florida', 78695, 'South American');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (29, 'Sauer-Hilpert', '1 Forest Dale Crossing', 'Aiken', 'South Carolina', 28139, 'Bangladeshi');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (30, 'Schamberger-Hahn', '7109 Calypso Lane', 'Louisville', 'Kentucky', 48665, 'Navajo');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (31, 'Yost-Murazik', '419 Crowley Circle', 'Washington', 'District of Columbia', 86385, 'Paiute');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (32, 'Lesch LLC', '32 Milwaukee Hill', 'Lakewood', 'Washington', 37426, 'Laotian');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (33, 'Leffler, Smitham and Rippin', '15202 Hoepker Parkway', 'Cleveland', 'Ohio', 67178, 'Polynesian');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (34, 'Bogan, Kohler and Medhurst', '57 Sachs Hill', 'Chicago', 'Illinois', 59090, 'Paiute');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (35, 'Lueilwitz-Pagac', '20 Brickson Park Hill', 'Portland', 'Oregon', 95667, 'Polynesian');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (36, 'Ullrich, Quigley and Carroll', '86931 Sommers Alley', 'Norcross', 'Georgia', 71385, 'Chippewa');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (37, 'Parisian, Kerluke and Torphy', '764 Jay Court', 'Dallas', 'Texas', 98971, 'Navajo');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (38, 'Strosin, Harris and Harris', '253 Maple Parkway', 'Fort Worth', 'Texas', 32751, 'Micronesian');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (39, 'Hirthe, Ward and Blanda', '493 Texas Plaza', 'Columbus', 'Ohio', 22525, 'Puerto Rican');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (40, 'Zieme Group', '59 Heath Point', 'Philadelphia', 'Pennsylvania', 17136, 'Comanche');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (41, 'Pacocha-Runolfsdottir', '1 Lakeland Court', 'Sacramento', 'California', 59546, 'Pakistani');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (42, 'Wuckert, Greenfelder and Baumbach', '617 Messerschmidt Hill', 'Miami', 'Florida', 36734, 'Seminole');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (43, 'Wunsch Inc', '9 Linden Place', 'Washington', 'District of Columbia', 61366, 'Choctaw');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (44, 'Collier Group', '95273 Crest Line Place', 'Columbus', 'Mississippi', 56526, 'Cherokee');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (45, 'Shields and Sons', '091 Delladonna Parkway', 'San Diego', 'California', 81953, 'Pueblo');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (46, 'Harber LLC', '96156 Mcguire Street', 'Van Nuys', 'California', 99627, 'Salvadoran');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (47, 'Jenkins, Kozey and Klein', '82403 Coolidge Way', 'Kansas City', 'Kansas', 11385, 'Cuban');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (48, 'Kilback, Schinner and Rutherford', '28346 Derek Junction', 'Houston', 'Texas', 79533, 'Ottawa');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (49, 'Gusikowski, Bauch and Schinner', '67 Johnson Circle', 'Cape Coral', 'Florida', 7025, 'Tongan');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (50, 'Abernathy-Wuckert', '96294 Mallard Hill', 'Tampa', 'Florida', 83855, 'Argentinian');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (51, 'Rutherford Inc', '3239 Melody Way', 'Tampa', 'Florida', 29617, 'Menominee');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (52, 'Hamill LLC', '3 Killdeer Trail', 'Greensboro', 'North Carolina', 69007, 'American Indian and Alaska Native (AIAN)');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (53, 'Rodriguez Group', '61 Fair Oaks Road', 'West Palm Beach', 'Florida', 89869, 'Native Hawaiian and Other Pacific Islander (NHPI)');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (54, 'Morissette and Sons', '931 Blaine Road', 'Buffalo', 'New York', 54821, 'Blackfeet');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (55, 'Treutel Group', '711 3rd Crossing', 'Arlington', 'Texas', 47473, 'Malaysian');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (56, 'Skiles-Witting', '43 Stone Corner Road', 'Waco', 'Texas', 30412, 'Cambodian');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (57, 'VonRueden, Brakus and Medhurst', '2 Stoughton Lane', 'Roanoke', 'Virginia', 26570, 'Yaqui');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (58, 'Lindgren, Schneider and Witting', '801 Mosinee Lane', 'Mobile', 'Alabama', 71699, 'Aleut');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (59, 'Schneider-McClure', '973 Ilene Parkway', 'Detroit', 'Michigan', 85026, 'Micronesian');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (60, 'Zemlak and Sons', '30847 Sheridan Crossing', 'Lexington', 'Kentucky', 61315, 'Asian Indian');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (61, 'Friesen, Lueilwitz and Sipes', '64 Carpenter Way', 'Baltimore', 'Maryland', 75154, 'Iroquois');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (62, 'Borer-Gulgowski', '91 Norway Maple Lane', 'Fort Wayne', 'Indiana', 88641, 'Tohono O''Odham');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (63, 'Sauer-Rogahn', '82441 Melody Junction', 'Jackson', 'Mississippi', 92037, 'Lumbee');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (64, 'Legros-Kilback', '273 Clyde Gallagher Road', 'Boston', 'Massachusetts', 66261, 'Guamanian');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (65, 'Nicolas, Ledner and Littel', '548 Drewry Street', 'Akron', 'Ohio', 74015, 'Apache');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (66, 'Adams, Ruecker and Hegmann', '51651 Havey Circle', 'Clearwater', 'Florida', 29298, 'Crow');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (67, 'Gislason Inc', '7 Lakewood Court', 'Washington', 'District of Columbia', 55246, 'Cherokee');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (68, 'Ullrich-MacGyver', '5284 Michigan Way', 'Tacoma', 'Washington', 68107, 'Cuban');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (69, 'Nitzsche and Sons', '024 Graedel Hill', 'Raleigh', 'North Carolina', 72403, 'Polynesian');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (70, 'Torphy-Hilll', '9 Eggendart Hill', 'San Antonio', 'Texas', 2649, 'Asian Indian');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (71, 'Stanton LLC', '1 Autumn Leaf Court', 'Toledo', 'Ohio', 42520, 'Tlingit-Haida');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (72, 'Price-Zemlak', '5 Sutherland Circle', 'Houston', 'Texas', 54288, 'Iroquois');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (73, 'Kertzmann Inc', '891 Fairview Hill', 'Alpharetta', 'Georgia', 37667, 'Potawatomi');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (74, 'Pagac, Rutherford and Dibbert', '45 Declaration Way', 'Laurel', 'Maryland', 63043, 'Navajo');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (75, 'Weber-Morissette', '44 Springview Plaza', 'Albuquerque', 'New Mexico', 69229, 'American Indian');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (76, 'Kirlin-Reilly', '98 Jana Point', 'Portland', 'Oregon', 58519, 'Chilean');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (77, 'Swaniawski-Wilderman', '34436 Paget Terrace', 'Pasadena', 'Texas', 79244, 'Chinese');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (78, 'Volkman LLC', '89344 Barby Junction', 'Suffolk', 'Virginia', 46850, 'Mexican');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (79, 'Runolfsdottir Inc', '96525 Calypso Place', 'Alexandria', 'Louisiana', 42838, 'Latin American Indian');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (80, 'Cruickshank-Keebler', '35514 Scott Parkway', 'Tacoma', 'Washington', 85115, 'Honduran');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (81, 'Gleason, Frami and Skiles', '2804 Carioca Circle', 'Cincinnati', 'Ohio', 15768, 'Menominee');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (82, 'Beahan-Daugherty', '0731 Prairieview Junction', 'Modesto', 'California', 93150, 'Asian');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (83, 'Hintz-Dickinson', '927 Division Trail', 'Pittsburgh', 'Pennsylvania', 36968, 'Asian');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (84, 'Ullrich, Considine and O''Reilly', '6261 Bobwhite Court', 'Madison', 'Wisconsin', 1789, 'Vietnamese');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (85, 'Muller and Sons', '18893 Prairieview Hill', 'Roanoke', 'Virginia', 47525, 'Indonesian');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (86, 'Nitzsche, Gleichner and Wilkinson', '9726 Annamark Parkway', 'San Rafael', 'California', 62061, 'Central American');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (87, 'Powlowski Inc', '761 Loomis Crossing', 'Virginia Beach', 'Virginia', 81234, 'Seminole');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (88, 'Gutkowski-Lang', '000 Armistice Junction', 'Saint Louis', 'Missouri', 69723, 'Navajo');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (89, 'Wolf and Sons', '9 Hermina Plaza', 'Clearwater', 'Florida', 21224, 'Menominee');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (90, 'Kunze Group', '93 Kinsman Center', 'Tampa', 'Florida', 92807, 'Melanesian');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (91, 'Pagac Group', '61012 Tony Drive', 'Johnson City', 'Tennessee', 57193, 'Lumbee');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (92, 'Lueilwitz Group', '886 Gale Trail', 'San Francisco', 'California', 73758, 'Chilean');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (93, 'Jenkins-O''Hara', '37 Twin Pines Trail', 'Tucson', 'Arizona', 36422, 'Central American');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (94, 'Dietrich LLC', '42488 Kedzie Road', 'Toledo', 'Ohio', 34153, 'Kiowa');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (95, 'Torphy-Beahan', '3 Northwestern Avenue', 'Kansas City', 'Missouri', 11084, 'Chickasaw');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (96, 'Feil Inc', '844 Spohn Park', 'Dallas', 'Texas', 10555, 'Asian');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (97, 'Wunsch Inc', '55571 Green Court', 'Cincinnati', 'Ohio', 26083, 'Seminole');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (98, 'Marks, Sanford and Hansen', '7 Bunker Hill Way', 'San Antonio', 'Texas', 21769, 'Cuban');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (99, 'Treutel-Stanton', '397 Green Ridge Way', 'Houston', 'Texas', 5865, 'American Indian');
insert into Restaurant (restaurantID, restaurantName, streetAddress, city, usState, zip, cuisine) values (100, 'Hermiston-Goodwin', '817 Glendale Street', 'Miami', 'Florida', 24317, 'Pakistani');

CREATE TABLE RestaurantManager (
    managerID int NOT NULL UNIQUE,
    managerName VARCHAR(100),
    salary int,
    restID int NOT NULL,
    PRIMARY KEY (managerID),

    CONSTRAINT manager_fk_1
        FOREIGN KEY (restID) REFERENCES Restaurant (restaurantID)
);

insert into RestaurantManager (managerID, managerName, salary, restID) values (1, 'Shela Cleveley', 31397, 46);
insert into RestaurantManager (managerID, managerName, salary, restID) values (2, 'Maxy Stachini', 44383, 21);
insert into RestaurantManager (managerID, managerName, salary, restID) values (3, 'Glynnis Pressland', 131669, 71);
insert into RestaurantManager (managerID, managerName, salary, restID) values (4, 'Davina McNeil', 131651, 65);
insert into RestaurantManager (managerID, managerName, salary, restID) values (5, 'Asia Cull', 88897, 23);
insert into RestaurantManager (managerID, managerName, salary, restID) values (6, 'Tracie Feetham', 595, 6);
insert into RestaurantManager (managerID, managerName, salary, restID) values (7, 'Petronilla Vero', 7809, 40);
insert into RestaurantManager (managerID, managerName, salary, restID) values (8, 'Aylmer Fasey', 22246, 24);
insert into RestaurantManager (managerID, managerName, salary, restID) values (9, 'Grannie Goodwin', 36639, 77);
insert into RestaurantManager (managerID, managerName, salary, restID) values (10, 'Clarette Conklin', 143028, 84);
insert into RestaurantManager (managerID, managerName, salary, restID) values (11, 'Monti Marks', 88159, 63);
insert into RestaurantManager (managerID, managerName, salary, restID) values (12, 'Michelina De la Yglesia', 84690, 45);
insert into RestaurantManager (managerID, managerName, salary, restID) values (13, 'Xymenes Mascall', 48755, 32);
insert into RestaurantManager (managerID, managerName, salary, restID) values (14, 'Nissa Sleath', 41436, 19);
insert into RestaurantManager (managerID, managerName, salary, restID) values (15, 'Baldwin Held', 75042, 97);
insert into RestaurantManager (managerID, managerName, salary, restID) values (16, 'Idell Lawn', 5619, 64);
insert into RestaurantManager (managerID, managerName, salary, restID) values (17, 'Nell Swinley', 100066, 37);
insert into RestaurantManager (managerID, managerName, salary, restID) values (18, 'Catharina Dumingo', 147475, 18);
insert into RestaurantManager (managerID, managerName, salary, restID) values (19, 'Margalit Adrienne', 83569, 88);
insert into RestaurantManager (managerID, managerName, salary, restID) values (20, 'Leonardo Monteith', 23647, 50);
insert into RestaurantManager (managerID, managerName, salary, restID) values (21, 'Dolph Melly', 15178, 76);
insert into RestaurantManager (managerID, managerName, salary, restID) values (22, 'Sheilakathryn Noonan', 135192, 87);
insert into RestaurantManager (managerID, managerName, salary, restID) values (23, 'Tonye Pettengell', 146981, 86);
insert into RestaurantManager (managerID, managerName, salary, restID) values (24, 'Cullin Brehaut', 68253, 36);
insert into RestaurantManager (managerID, managerName, salary, restID) values (25, 'Dina Beswetherick', 146489, 46);
insert into RestaurantManager (managerID, managerName, salary, restID) values (26, 'Claudia Stanesby', 29296, 59);
insert into RestaurantManager (managerID, managerName, salary, restID) values (27, 'Padgett Scolli', 83199, 66);
insert into RestaurantManager (managerID, managerName, salary, restID) values (28, 'Hope Oby', 17934, 58);
insert into RestaurantManager (managerID, managerName, salary, restID) values (29, 'Emili Tandy', 15019, 28);
insert into RestaurantManager (managerID, managerName, salary, restID) values (30, 'Deanne Chedgey', 134167, 9);
insert into RestaurantManager (managerID, managerName, salary, restID) values (31, 'Elysee McGlynn', 44925, 60);
insert into RestaurantManager (managerID, managerName, salary, restID) values (32, 'Agace Sandaver', 114014, 83);
insert into RestaurantManager (managerID, managerName, salary, restID) values (33, 'Tiebout Probbing', 10495, 8);
insert into RestaurantManager (managerID, managerName, salary, restID) values (34, 'Lavina Chowne', 43083, 69);
insert into RestaurantManager (managerID, managerName, salary, restID) values (35, 'Frazer Pactat', 25895, 6);
insert into RestaurantManager (managerID, managerName, salary, restID) values (36, 'Shell Larvor', 28249, 75);
insert into RestaurantManager (managerID, managerName, salary, restID) values (37, 'Kimberlyn Simonnin', 111398, 39);
insert into RestaurantManager (managerID, managerName, salary, restID) values (38, 'Rivy Gerssam', 80063, 41);
insert into RestaurantManager (managerID, managerName, salary, restID) values (39, 'Rudiger Tythe', 12154, 100);
insert into RestaurantManager (managerID, managerName, salary, restID) values (40, 'Mozes MacCosto', 129441, 85);
insert into RestaurantManager (managerID, managerName, salary, restID) values (41, 'Carmine Tatem', 41414, 82);
insert into RestaurantManager (managerID, managerName, salary, restID) values (42, 'Arlyn Reignould', 130821, 12);
insert into RestaurantManager (managerID, managerName, salary, restID) values (43, 'Rubetta Berriman', 49367, 60);
insert into RestaurantManager (managerID, managerName, salary, restID) values (44, 'Rhona Dutnell', 12251, 25);
insert into RestaurantManager (managerID, managerName, salary, restID) values (45, 'Hadlee Heigl', 146382, 15);
insert into RestaurantManager (managerID, managerName, salary, restID) values (46, 'Kevon O''Flaverty', 6985, 36);
insert into RestaurantManager (managerID, managerName, salary, restID) values (47, 'Lemmy MacShirrie', 3907, 89);
insert into RestaurantManager (managerID, managerName, salary, restID) values (48, 'Emmye Mongan', 72322, 99);
insert into RestaurantManager (managerID, managerName, salary, restID) values (49, 'Bernarr Penny', 67802, 94);
insert into RestaurantManager (managerID, managerName, salary, restID) values (50, 'Charissa Morritt', 64728, 34);
insert into RestaurantManager (managerID, managerName, salary, restID) values (51, 'Mano Stallan', 141027, 58);
insert into RestaurantManager (managerID, managerName, salary, restID) values (52, 'Janot Collomosse', 122866, 61);
insert into RestaurantManager (managerID, managerName, salary, restID) values (53, 'Ronalda Barts', 128655, 86);
insert into RestaurantManager (managerID, managerName, salary, restID) values (54, 'Miller Benezeit', 108440, 20);
insert into RestaurantManager (managerID, managerName, salary, restID) values (55, 'Ethyl D''Costa', 98833, 86);
insert into RestaurantManager (managerID, managerName, salary, restID) values (56, 'Jobi Strugnell', 21771, 25);
insert into RestaurantManager (managerID, managerName, salary, restID) values (57, 'Gifford Burnsyde', 62714, 86);
insert into RestaurantManager (managerID, managerName, salary, restID) values (58, 'Starlin Carlens', 17635, 46);
insert into RestaurantManager (managerID, managerName, salary, restID) values (59, 'Merrily Belch', 75554, 60);
insert into RestaurantManager (managerID, managerName, salary, restID) values (60, 'Ignace Gregorace', 10900, 85);
insert into RestaurantManager (managerID, managerName, salary, restID) values (61, 'Shelba Randals', 1084, 38);
insert into RestaurantManager (managerID, managerName, salary, restID) values (62, 'Blancha Livens', 80031, 9);
insert into RestaurantManager (managerID, managerName, salary, restID) values (63, 'Isidor Stot', 145060, 95);
insert into RestaurantManager (managerID, managerName, salary, restID) values (64, 'Calla Behling', 135457, 53);
insert into RestaurantManager (managerID, managerName, salary, restID) values (65, 'Cyndi Pinhorn', 104779, 78);
insert into RestaurantManager (managerID, managerName, salary, restID) values (66, 'Zandra Lawles', 143421, 69);
insert into RestaurantManager (managerID, managerName, salary, restID) values (67, 'Krystle Nan Carrow', 140657, 92);
insert into RestaurantManager (managerID, managerName, salary, restID) values (68, 'Padgett Aime', 49, 28);
insert into RestaurantManager (managerID, managerName, salary, restID) values (69, 'Mabelle Corbin', 12126, 16);
insert into RestaurantManager (managerID, managerName, salary, restID) values (70, 'Patten Orred', 97166, 10);
insert into RestaurantManager (managerID, managerName, salary, restID) values (71, 'Arnie Gilstin', 61975, 77);
insert into RestaurantManager (managerID, managerName, salary, restID) values (72, 'Aveline Garmon', 50856, 47);
insert into RestaurantManager (managerID, managerName, salary, restID) values (73, 'Ugo Atrill', 44631, 92);
insert into RestaurantManager (managerID, managerName, salary, restID) values (74, 'Dorothea de Pinna', 13586, 18);
insert into RestaurantManager (managerID, managerName, salary, restID) values (75, 'Lyn Graeme', 109278, 58);
insert into RestaurantManager (managerID, managerName, salary, restID) values (76, 'Twila Steger', 96238, 76);
insert into RestaurantManager (managerID, managerName, salary, restID) values (77, 'Aksel Tamburo', 2015, 93);
insert into RestaurantManager (managerID, managerName, salary, restID) values (78, 'Cyndi Howle', 94143, 66);
insert into RestaurantManager (managerID, managerName, salary, restID) values (79, 'Jarib Couthard', 99866, 61);
insert into RestaurantManager (managerID, managerName, salary, restID) values (80, 'Wye Gryglewski', 93457, 50);
insert into RestaurantManager (managerID, managerName, salary, restID) values (81, 'Lannie Stinton', 54372, 85);
insert into RestaurantManager (managerID, managerName, salary, restID) values (82, 'Byrom McCotter', 95993, 66);
insert into RestaurantManager (managerID, managerName, salary, restID) values (83, 'Freeland Sowray', 112593, 7);
insert into RestaurantManager (managerID, managerName, salary, restID) values (84, 'Lorilyn Whittenbury', 60078, 68);
insert into RestaurantManager (managerID, managerName, salary, restID) values (85, 'Veronike Binford', 8473, 97);
insert into RestaurantManager (managerID, managerName, salary, restID) values (86, 'Arluene Parke', 79035, 29);
insert into RestaurantManager (managerID, managerName, salary, restID) values (87, 'Ava Silversmidt', 113949, 71);
insert into RestaurantManager (managerID, managerName, salary, restID) values (88, 'Hadleigh Low', 65992, 50);
insert into RestaurantManager (managerID, managerName, salary, restID) values (89, 'Efrem McMeeking', 67131, 92);
insert into RestaurantManager (managerID, managerName, salary, restID) values (90, 'Berkley Knoton', 139783, 4);
insert into RestaurantManager (managerID, managerName, salary, restID) values (91, 'Jaynell Harwood', 39010, 25);
insert into RestaurantManager (managerID, managerName, salary, restID) values (92, 'Jasmine Teodoro', 41511, 89);
insert into RestaurantManager (managerID, managerName, salary, restID) values (93, 'Davida Poyner', 69929, 37);
insert into RestaurantManager (managerID, managerName, salary, restID) values (94, 'Humberto Ciottoi', 68305, 42);
insert into RestaurantManager (managerID, managerName, salary, restID) values (95, 'Ally Hanford', 100291, 28);
insert into RestaurantManager (managerID, managerName, salary, restID) values (96, 'Elmo Schenfisch', 149307, 82);
insert into RestaurantManager (managerID, managerName, salary, restID) values (97, 'Derril Feehery', 108412, 26);
insert into RestaurantManager (managerID, managerName, salary, restID) values (98, 'Lemar Amoss', 5454, 12);
insert into RestaurantManager (managerID, managerName, salary, restID) values (99, 'Melinde Stother', 35675, 45);
insert into RestaurantManager (managerID, managerName, salary, restID) values (100, 'Bax Calvard', 122138, 92);

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

insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (1, 2, 27, 1, 'Sobe - Orange Carrot', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.', 56);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (2, 1, 14, 2, 'Lamb Tenderloin Nz Fr', 'Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 14);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (3, 6, 50, 3, 'Wine - Balbach Riverside', 'Aliquam erat volutpat.', 3);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (4, 1, 81, 4, 'Cherries - Fresh', 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 31);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (5, 2, 38, 5, 'Beef - Diced', 'Ut tellus. Nulla ut erat id mauris vulputate elementum.', 71);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (6, 1, 80, 6, 'Roe - Flying Fish', 'Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 9);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (7, 8, 65, 7, 'Rice - Wild', 'Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 12);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (8, 4, 46, 8, 'Calypso - Strawberry Lemonade', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 55);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (9, 1, 57, 9, 'Cup - 8oz Coffee Perforated', 'Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.', 7);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (10, 4, 28, 10, 'Wine - Vidal Icewine Magnotta', 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia.', 81);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (11, 3, 20, 11, 'Trout - Hot Smkd, Dbl Fillet', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.', 89);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (12, 8, 16, 12, 'Apple - Royal Gala', 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.', 73);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (13, 5, 91, 13, 'Cheese Cheddar Processed', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 67);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (14, 3, 25, 14, 'Lemon Grass', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 75);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (15, 10, 39, 15, 'Mace Ground', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl.', 47);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (16, 2, 89, 16, 'Sauce Tomato Pouch', 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 96);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (17, 9, 28, 17, 'Buffalo - Striploin', 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 2);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (18, 10, 3, 18, 'Nacho Chips', 'Cras in purus eu magna vulputate luctus.', 20);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (19, 4, 42, 19, 'Bread - French Baquette', 'Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy.', 28);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (20, 6, 35, 20, 'Goat - Whole Cut', 'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.', 89);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (21, 1, 3, 21, 'Fish - Soup Base, Bouillon', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 30);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (22, 2, 51, 22, 'Bread - Roll, Soft White Round', 'Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.', 86);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (23, 9, 16, 23, 'Soho Lychee Liqueur', 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc.', 73);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (24, 8, 96, 24, 'Cranberries - Dry', 'Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 67);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (25, 5, 98, 25, 'Wine - Alsace Gewurztraminer', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 20);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (26, 6, 1, 26, 'Beef - Tenderlion, Center Cut', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.', 26);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (27, 5, 58, 27, 'Wine - Marlbourough Sauv Blanc', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.', 61);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (28, 9, 29, 28, 'Wine - Red, Pelee Island Merlot', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus.', 74);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (29, 7, 70, 29, 'Beer - Corona', 'Duis at velit eu est congue elementum.', 24);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (30, 9, 44, 30, 'Triple Sec - Mcguinness', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.', 57);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (31, 4, 82, 31, 'Glaze - Clear', 'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', 29);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (32, 8, 21, 32, 'Bread - Multigrain Oval', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.', 41);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (33, 5, 1, 33, 'Kolrabi', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 3);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (34, 9, 41, 34, 'Vinegar - Sherry', 'Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', 100);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (35, 5, 41, 35, 'Beef - Outside, Round', 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.', 20);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (36, 4, 79, 36, 'Soup - Chicken And Wild Rice', 'Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus.', 98);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (37, 3, 85, 37, 'Juice - Orangina', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo.', 46);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (38, 8, 92, 38, 'Sauce - Oyster', 'Morbi vel lectus in quam fringilla rhoncus.', 100);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (39, 2, 51, 39, 'Wine - Magnotta - Red, Baco', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.', 18);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (40, 8, 44, 40, 'Marjoram - Fresh', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 96);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (41, 9, 44, 41, 'Shrimp - 150 - 250', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue.', 42);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (42, 4, 56, 42, 'Scampi Tail', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.', 27);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (43, 7, 32, 43, 'Long Island Ice Tea', 'Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus.', 98);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (44, 4, 16, 44, 'Sauce - White, Mix', 'Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 32);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (45, 4, 45, 45, 'Crackers - Melba Toast', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 43);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (46, 4, 90, 46, 'Grapes - Green', 'Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus.', 48);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (47, 4, 9, 47, 'Sauce - Fish 25 Ozf Bottle', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum.', 3);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (48, 5, 86, 48, 'Soup - Cream Of Broccoli', 'In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.', 96);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (49, 3, 49, 49, 'Squid - U 5', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 78);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (50, 2, 45, 50, 'Rum - Cream, Amarula', 'Pellentesque at nulla. Suspendisse potenti.', 63);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (51, 8, 42, 51, 'Beer - Pilsner Urquell', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.', 96);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (52, 10, 14, 52, 'Coconut - Shredded, Unsweet', 'Vestibulum ac est lacinia nisi venenatis tristique.', 84);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (53, 6, 78, 53, 'Salami - Genova', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 96);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (54, 9, 13, 54, 'Shrimp - Baby, Warm Water', 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 86);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (55, 9, 29, 55, 'Kellogs Cereal In A Cup', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 2);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (56, 1, 80, 56, 'Beef - Striploin', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo.', 57);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (57, 5, 10, 57, 'Pasta - Lasagne, Fresh', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.', 10);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (58, 3, 77, 58, 'Bread - Granary Small Pull', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 69);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (59, 1, 4, 59, 'Juice - Apple Cider', 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.', 44);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (60, 7, 41, 60, 'Venison - Striploin', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', 24);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (61, 10, 14, 61, 'Pail - 15l White, With Handle', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', 8);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (62, 2, 41, 62, 'Loquat', 'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh.', 30);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (63, 8, 88, 63, 'Tandoori Curry Paste', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo.', 71);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (64, 5, 16, 64, 'Flour - Strong Pizza', 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', 65);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (65, 7, 70, 65, 'Beef - Baby, Liver', 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis.', 33);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (66, 3, 48, 66, 'Napkin - Beverage 1 Ply', 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.', 64);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (67, 9, 31, 67, 'Beer - Guiness', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus.', 80);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (68, 6, 25, 68, 'Tart Shells - Barquettes, Savory', 'Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 5);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (69, 4, 25, 69, 'Nantucket - Pomegranate Pear', 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.', 71);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (70, 3, 78, 70, 'Pepper - Green Thai', 'Ut at dolor quis odio consequat varius.', 95);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (71, 8, 86, 71, 'Clams - Canned', 'Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.', 13);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (72, 9, 73, 72, 'Wine - Montecillo Rioja Crianza', 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', 15);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (73, 3, 12, 73, 'Muffin Mix - Lemon Cranberry', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue.', 45);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (74, 10, 38, 74, 'Bread - Flat Bread', 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', 23);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (75, 2, 81, 75, 'Soup - Campbells Mac N Cheese', 'Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 33);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (76, 4, 18, 76, 'Beef - Top Butt', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 48);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (77, 7, 90, 77, 'Worcestershire Sauce', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis.', 54);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (78, 10, 76, 78, 'Tomatoes - Cherry, Yellow', 'Proin eu mi.', 57);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (79, 4, 69, 79, 'Vermouth - Sweet, Cinzano', 'Integer non velit.', 72);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (80, 5, 15, 80, 'Flavouring - Raspberry', 'In sagittis dui vel nisl.', 90);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (81, 7, 100, 81, 'Milk - Chocolate 250 Ml', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', 69);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (82, 2, 44, 82, 'Rum - Coconut, Malibu', 'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 22);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (83, 2, 47, 83, 'Chilli Paste, Hot Sambal Oelek', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Nam tristique tortor eu pede.', 32);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (84, 7, 56, 84, 'Pork - Sausage, Medium', 'Duis at velit eu est congue elementum.', 64);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (85, 6, 20, 85, 'Tart Shells - Savory, 4', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus.', 26);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (86, 7, 63, 86, 'Yogurt - Raspberry, 175 Gr', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo.', 2);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (87, 2, 7, 87, 'Food Colouring - Pink', 'Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', 75);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (88, 4, 72, 88, 'Beer - Blue Light', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.', 57);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (89, 9, 2, 89, 'Cape Capensis - Fillet', 'Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 64);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (90, 9, 32, 90, 'Mustard - Seed', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.', 25);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (91, 10, 55, 91, 'Samosa - Veg', 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.', 31);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (92, 9, 77, 92, 'Syrup - Pancake', 'Suspendisse accumsan tortor quis turpis.', 63);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (93, 7, 99, 93, 'Lamb - Leg, Bone In', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', 65);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (94, 3, 65, 94, 'Wine - Pinot Noir Pond Haddock', 'Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.', 31);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (95, 1, 48, 95, 'Anchovy Paste - 56 G Tube', 'Nulla ut erat id mauris vulputate elementum.', 74);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (96, 1, 71, 96, 'Rambutan', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', 71);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (97, 3, 2, 97, 'Strawberries', 'Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.', 78);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (98, 4, 53, 98, 'Banana - Leaves', 'Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna.', 43);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (99, 8, 85, 99, 'Beer - Corona', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.', 44);
insert into MenuItems (itemID, categoryID, restaurantID, addedByManagerid, itemName, itemDescription, price) values (100, 8, 100, 100, 'Aromat Spice / Seasoning', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 11);

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

insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (24, 1, 27, '25 Bay Pass', 'Springfield', 'Massachusetts', 55532, '2022-01-20', 4, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (16, 2, 30, '5 Jana Court', 'Metairie', 'Louisiana', 39432, '2022-09-01', 19, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (19, 3, 5, '355 Buena Vista Pass', 'Dallas', 'Texas', 48244, '2022-09-03', 50, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (9, 4, 41, '46 Summerview Crossing', 'Anchorage', 'Alaska', 29070, '2022-08-03', 60, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (33, 5, 10, '994 Toban Terrace', 'Honolulu', 'Hawaii', 10994, '2022-07-23', 23, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (32, 6, 44, '3 Kingsford Park', 'Saint Louis', 'Missouri', 94145, '2022-08-14', 48, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (36, 7, 8, '1 Clyde Gallagher Lane', 'Pueblo', 'Colorado', 69449, '2022-02-18', 43, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (16, 8, 5, '10511 Hanson Road', 'New Orleans', 'Louisiana', 71091, '2022-08-04', 25, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (36, 9, 38, '509 3rd Pass', 'Memphis', 'Tennessee', 25183, '2022-10-25', 45, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (38, 10, 20, '81 Village Green Pass', 'Toledo', 'Ohio', 26921, '2021-12-15', 60, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (37, 11, 48, '41 Forest Dale Street', 'Oklahoma City', 'Oklahoma', 86142, '2022-01-31', 47, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (25, 12, 28, '5711 Emmet Park', 'Austin', 'Texas', 90132, '2022-09-22', 14, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (34, 13, 8, '590 1st Circle', 'Washington', 'District of Columbia', 2846, '2022-06-03', 37, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (21, 14, 10, '68 Truax Avenue', 'Saint Petersburg', 'Florida', 89347, '2022-07-15', 100, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (47, 15, 49, '9 Graceland Alley', 'Alexandria', 'Virginia', 90544, '2022-05-19', 34, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (45, 16, 31, '9 Artisan Alley', 'Houston', 'Texas', 12875, '2022-06-10', 81, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (39, 17, 43, '064 Maple Wood Plaza', 'Columbus', 'Ohio', 14563, '2022-07-05', 94, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (2, 18, 6, '18219 Hanover Circle', 'Wilkes Barre', 'Pennsylvania', 67600, '2022-08-28', 76, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (16, 19, 25, '54452 Iowa Avenue', 'Worcester', 'Massachusetts', 35797, '2022-09-07', 41, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (31, 20, 28, '72116 Ridge Oak Circle', 'Louisville', 'Kentucky', 99514, '2022-06-15', 89, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (23, 21, 24, '52 Di Loreto Parkway', 'Kansas City', 'Missouri', 55224, '2022-05-26', 59, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (27, 22, 48, '6197 Comanche Junction', 'Columbus', 'Ohio', 96304, '2022-07-20', 21, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (49, 23, 9, '67 4th Junction', 'Charleston', 'West Virginia', 17133, '2022-08-21', 32, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (5, 24, 31, '190 Anzinger Park', 'Houston', 'Texas', 48160, '2022-11-05', 5, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (6, 25, 44, '1926 Vernon Terrace', 'Tucson', 'Arizona', 97566, '2022-03-25', 61, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (3, 26, 28, '69 Brentwood Center', 'Boise', 'Idaho', 16721, '2022-08-22', 78, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (28, 27, 9, '93 Trailsway Center', 'Rochester', 'New York', 60184, '2022-12-27', 68, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (44, 28, 19, '4244 Iowa Alley', 'Cincinnati', 'Ohio', 95572, '2022-01-12', 92, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (27, 29, 35, '42 Arkansas Road', 'Reno', 'Nevada', 28012, '2022-10-03', 39, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (47, 30, 44, '1 Derek Pass', 'Katy', 'Texas', 90117, '2022-10-31', 43, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (15, 31, 44, '87598 Prairie Rose Center', 'Des Moines', 'Iowa', 86420, '2022-04-17', 81, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (45, 32, 18, '61 Graedel Parkway', 'Huntsville', 'Alabama', 93393, '2022-03-20', 36, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (6, 33, 50, '8 Linden Lane', 'Fresno', 'California', 36166, '2022-11-04', 13, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (34, 34, 32, '7 New Castle Court', 'Washington', 'District of Columbia', 96096, '2022-02-18', 80, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (9, 35, 6, '3515 Jana Circle', 'Meridian', 'Mississippi', 5585, '2021-12-14', 14, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (24, 36, 37, '465 Judy Drive', 'Stockton', 'California', 65494, '2022-04-10', 14, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (33, 37, 1, '39 Mendota Park', 'Pittsburgh', 'Pennsylvania', 38603, '2021-12-29', 58, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (38, 38, 4, '5240 Mesta Center', 'Atlanta', 'Georgia', 44223, '2022-03-30', 54, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (7, 39, 16, '17 Hauk Trail', 'Charleston', 'West Virginia', 80249, '2022-01-29', 23, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (4, 40, 24, '1 David Drive', 'Lancaster', 'Pennsylvania', 65607, '2022-07-21', 60, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (6, 41, 10, '778 Toban Place', 'Milwaukee', 'Wisconsin', 56722, '2022-09-18', 8, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (34, 42, 35, '69 Iowa Trail', 'Seattle', 'Washington', 74193, '2022-08-02', 50, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (11, 43, 36, '0 Hoffman Hill', 'Newton', 'Massachusetts', 98338, '2022-06-29', 16, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (11, 44, 6, '4524 Hermina Road', 'Colorado Springs', 'Colorado', 68837, '2022-03-15', 82, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (13, 45, 44, '25 Bluestem Way', 'Boulder', 'Colorado', 34468, '2022-04-25', 36, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (10, 46, 35, '47 Iowa Point', 'Louisville', 'Kentucky', 92129, '2022-01-12', 34, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (12, 47, 25, '80 Sullivan Hill', 'Boston', 'Massachusetts', 33541, '2022-01-01', 23, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (6, 48, 50, '28166 Scoville Park', 'San Francisco', 'California', 68006, '2022-12-21', 47, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (6, 49, 20, '26 Messerschmidt Street', 'Columbus', 'Ohio', 9553, '2022-11-07', 53, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (3, 50, 28, '24 Bunker Hill Drive', 'Portland', 'Oregon', 71355, '2022-12-03', 64, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (42, 51, 17, '49660 Washington Way', 'San Antonio', 'Texas', 5996, '2022-06-21', 56, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (47, 52, 46, '63001 Garrison Trail', 'New York City', 'New York', 1458, '2022-06-27', 32, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (15, 53, 6, '52151 Atwood Crossing', 'Lexington', 'Kentucky', 31917, '2022-06-29', 60, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (2, 54, 44, '6 Express Court', 'Springfield', 'Illinois', 25618, '2022-11-25', 57, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (45, 55, 49, '9 Nelson Street', 'Fort Myers', 'Florida', 28048, '2022-03-18', 58, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (28, 56, 42, '21825 Maryland Park', 'Baton Rouge', 'Louisiana', 56558, '2022-04-21', 58, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (3, 57, 11, '2 Grayhawk Court', 'Richmond', 'Virginia', 70211, '2022-05-03', 99, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (47, 58, 39, '20054 4th Park', 'Ogden', 'Utah', 62395, '2022-10-12', 50, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (46, 59, 41, '0893 High Crossing Way', 'Henderson', 'Nevada', 24422, '2022-07-16', 54, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (30, 60, 35, '5 Lyons Drive', 'Annapolis', 'Maryland', 37052, '2022-11-04', 28, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (32, 61, 12, '0332 Basil Drive', 'Saint Louis', 'Missouri', 43804, '2022-05-11', 32, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (27, 62, 23, '048 Maple Place', 'Fort Lauderdale', 'Florida', 82329, '2022-10-09', 24, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (16, 63, 35, '7 Packers Circle', 'Valley Forge', 'Pennsylvania', 86538, '2022-04-23', 37, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (32, 64, 15, '7770 Loeprich Drive', 'Washington', 'District of Columbia', 46307, '2022-08-28', 90, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (43, 65, 8, '0 Fair Oaks Drive', 'Baltimore', 'Maryland', 19909, '2022-06-13', 86, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (32, 66, 19, '5077 Coleman Plaza', 'Charlotte', 'North Carolina', 23206, '2022-12-06', 35, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (47, 67, 50, '177 Reindahl Place', 'Montgomery', 'Alabama', 95984, '2022-08-06', 74, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (34, 68, 33, '99192 Fieldstone Trail', 'Irving', 'Texas', 77660, '2022-01-06', 63, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (33, 69, 19, '16527 Walton Street', 'Washington', 'District of Columbia', 32770, '2022-04-03', 2, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (48, 70, 27, '72 Jana Crossing', 'Johnstown', 'Pennsylvania', 56250, '2022-08-20', 89, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (34, 71, 4, '34555 Banding Crossing', 'Saint Petersburg', 'Florida', 60089, '2022-12-18', 30, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (32, 72, 22, '6 Pond Pass', 'Wichita', 'Kansas', 73812, '2022-02-08', 5, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (3, 73, 41, '99 Chinook Park', 'Washington', 'District of Columbia', 44620, '2022-11-02', 6, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (41, 74, 31, '6169 Delaware Terrace', 'Houston', 'Texas', 4032, '2022-12-23', 81, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (21, 75, 2, '537 Service Avenue', 'Anderson', 'South Carolina', 69084, '2022-05-23', 3, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (37, 76, 20, '1 Autumn Leaf Place', 'Des Moines', 'Iowa', 58271, '2022-07-10', 27, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (23, 77, 39, '0021 Grim Crossing', 'Boston', 'Massachusetts', 27211, '2022-04-07', 6, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (14, 78, 35, '6757 Rutledge Hill', 'Mobile', 'Alabama', 56987, '2022-01-26', 28, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (22, 79, 40, '04 American Ash Parkway', 'Clearwater', 'Florida', 9003, '2022-05-17', 29, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (16, 80, 35, '099 Melrose Parkway', 'Prescott', 'Arizona', 93250, '2022-10-08', 71, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (21, 81, 17, '7 Fuller Hill', 'Sacramento', 'California', 28253, '2022-03-06', 60, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (40, 82, 23, '32799 Forest Run Crossing', 'Washington', 'District of Columbia', 12255, '2022-01-15', 12, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (13, 83, 47, '6721 Myrtle Pass', 'Indianapolis', 'Indiana', 67007, '2022-08-27', 96, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (29, 84, 18, '07 Derek Way', 'Portland', 'Oregon', 36952, '2022-09-18', 81, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (36, 85, 29, '75 Susan Court', 'Waco', 'Texas', 62792, '2022-11-04', 50, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (25, 86, 44, '48105 Laurel Way', 'Beaverton', 'Oregon', 14810, '2022-04-12', 32, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (34, 87, 27, '59 International Hill', 'Santa Rosa', 'California', 42654, '2022-11-02', 25, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (34, 88, 4, '42 Almo Way', 'Philadelphia', 'Pennsylvania', 35156, '2022-02-06', 25, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (10, 89, 50, '14884 Fuller Parkway', 'Louisville', 'Kentucky', 86369, '2022-06-06', 38, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (10, 90, 18, '80525 Hanson Park', 'Kansas City', 'Missouri', 99776, '2022-05-04', 70, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (48, 91, 23, '25461 New Castle Place', 'Fort Worth', 'Texas', 56295, '2022-11-22', 74, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (49, 92, 37, '52 Jackson Lane', 'Dayton', 'Ohio', 89713, '2021-12-14', 60, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (5, 93, 40, '867 Riverside Road', 'Phoenix', 'Arizona', 41932, '2022-11-04', 29, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (43, 94, 13, '1 Badeau Terrace', 'Chicago', 'Illinois', 69925, '2022-09-19', 71, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (26, 95, 36, '1610 Golden Leaf Alley', 'Lakewood', 'Washington', 50105, '2022-02-12', 17, true);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (45, 96, 34, '57237 Hooker Terrace', 'Kansas City', 'Missouri', 55038, '2022-06-10', 87, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (46, 97, 32, '94 Maple Wood Parkway', 'Midland', 'Texas', 52187, '2022-02-02', 82, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (29, 98, 15, '8 Packers Alley', 'Albuquerque', 'New Mexico', 13757, '2022-10-29', 41, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (48, 99, 21, '319 Elgar Trail', 'Norfolk', 'Virginia', 96660, '2022-06-11', 78, false);
insert into CustomerOrders (custID, orderID, driverID, streetAddress, city, usState, zip, orderDate, totalPrice, delivered) values (29, 100, 34, '8462 Sunbrook Point', 'Cincinnati', 'Ohio', 36752, '2022-09-06', 78, true);

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
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (1, 1, 1, 77, 56);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (2, 2, 2, 63, 38);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (3, 3, 3, 25, 78);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (4, 4, 4, 34, 70);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (5, 5, 5, 3, 32);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (6, 6, 6, 99, 67);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (7, 7, 7, 16, 39);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (8, 8, 8, 1, 90);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (9, 9, 9, 38, 34);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (10, 10, 10, 54, 18);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (11, 11, 11, 55, 3);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (12, 12, 12, 81, 21);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (13, 13, 13, 21, 49);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (14, 14, 14, 40, 84);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (15, 15, 15, 79, 84);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (16, 16, 16, 65, 92);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (17, 17, 17, 63, 73);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (18, 18, 18, 95, 76);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (19, 19, 19, 28, 57);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (20, 20, 20, 68, 13);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (21, 21, 21, 25, 10);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (22, 22, 22, 59, 4);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (23, 23, 23, 94, 27);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (24, 24, 24, 77, 74);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (25, 25, 25, 18, 25);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (26, 26, 26, 88, 5);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (27, 27, 27, 95, 95);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (28, 28, 28, 78, 66);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (29, 29, 29, 5, 92);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (30, 30, 30, 29, 100);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (31, 31, 31, 4, 68);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (32, 32, 32, 92, 27);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (33, 33, 33, 2, 89);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (34, 34, 34, 94, 93);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (35, 35, 35, 18, 23);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (36, 36, 36, 11, 90);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (37, 37, 37, 8, 66);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (38, 38, 38, 5, 43);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (39, 39, 39, 20, 97);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (40, 40, 40, 92, 29);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (41, 41, 41, 9, 57);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (42, 42, 42, 97, 19);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (43, 43, 43, 1, 49);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (44, 44, 44, 9, 72);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (45, 45, 45, 32, 23);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (46, 46, 46, 58, 79);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (47, 47, 47, 81, 94);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (48, 48, 48, 62, 68);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (49, 49, 49, 78, 45);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (50, 50, 50, 23, 81);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (51, 51, 51, 78, 44);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (52, 52, 52, 80, 10);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (53, 53, 53, 17, 32);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (54, 54, 54, 94, 67);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (55, 55, 55, 93, 33);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (56, 56, 56, 93, 50);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (57, 57, 57, 70, 12);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (58, 58, 58, 70, 82);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (59, 59, 59, 92, 86);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (60, 60, 60, 45, 4);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (61, 61, 61, 93, 19);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (62, 62, 62, 36, 100);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (63, 63, 63, 18, 11);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (64, 64, 64, 20, 58);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (65, 65, 65, 92, 1);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (66, 66, 66, 42, 100);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (67, 67, 67, 49, 74);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (68, 68, 68, 75, 19);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (69, 69, 69, 27, 96);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (70, 70, 70, 31, 28);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (71, 71, 71, 70, 94);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (72, 72, 72, 91, 46);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (73, 73, 73, 40, 31);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (74, 74, 74, 44, 17);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (75, 75, 75, 7, 59);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (76, 76, 76, 100, 37);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (77, 77, 77, 36, 84);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (78, 78, 78, 43, 15);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (79, 79, 79, 79, 65);
insert into OrderDetail (orderID, detailID, itemID, price, quantity) values (80, 80, 80, 86, 91);

CREATE TABLE Tip (
    custID int NOT NULL,
    empID int NOT NULL,
    tipAmount int NOT NULL,

    CONSTRAINT tip_fk_1
        FOREIGN KEY (custID) REFERENCES Customer (customerID),

    CONSTRAINT tip_fk_2
        FOREIGN KEY (empID) REFERENCES Driver (empID)
);
insert into Tip (custID, empID, tipAmount) values (1, 1, 3);
insert into Tip (custID, empID, tipAmount) values (2, 2, 41);
insert into Tip (custID, empID, tipAmount) values (3, 3, 55);
insert into Tip (custID, empID, tipAmount) values (4, 4, 44);
insert into Tip (custID, empID, tipAmount) values (5, 5, 7);
insert into Tip (custID, empID, tipAmount) values (6, 6, 73);
insert into Tip (custID, empID, tipAmount) values (7, 7, 85);
insert into Tip (custID, empID, tipAmount) values (8, 8, 31);
insert into Tip (custID, empID, tipAmount) values (9, 9, 51);
insert into Tip (custID, empID, tipAmount) values (10, 10, 90);
insert into Tip (custID, empID, tipAmount) values (11, 11, 70);
insert into Tip (custID, empID, tipAmount) values (12, 12, 1);
insert into Tip (custID, empID, tipAmount) values (13, 13, 18);
insert into Tip (custID, empID, tipAmount) values (14, 14, 37);
insert into Tip (custID, empID, tipAmount) values (15, 15, 57);
insert into Tip (custID, empID, tipAmount) values (16, 16, 44);
insert into Tip (custID, empID, tipAmount) values (17, 17, 34);
insert into Tip (custID, empID, tipAmount) values (18, 18, 100);
insert into Tip (custID, empID, tipAmount) values (19, 19, 72);
insert into Tip (custID, empID, tipAmount) values (20, 20, 39);
insert into Tip (custID, empID, tipAmount) values (21, 21, 51);
insert into Tip (custID, empID, tipAmount) values (22, 22, 72);
insert into Tip (custID, empID, tipAmount) values (23, 23, 27);
insert into Tip (custID, empID, tipAmount) values (24, 24, 58);
insert into Tip (custID, empID, tipAmount) values (25, 25, 65);
insert into Tip (custID, empID, tipAmount) values (26, 26, 46);
insert into Tip (custID, empID, tipAmount) values (27, 27, 47);
insert into Tip (custID, empID, tipAmount) values (28, 28, 91);
insert into Tip (custID, empID, tipAmount) values (29, 29, 17);
insert into Tip (custID, empID, tipAmount) values (30, 30, 22);
insert into Tip (custID, empID, tipAmount) values (31, 31, 86);
insert into Tip (custID, empID, tipAmount) values (32, 32, 58);
insert into Tip (custID, empID, tipAmount) values (33, 33, 17);
insert into Tip (custID, empID, tipAmount) values (34, 34, 78);
insert into Tip (custID, empID, tipAmount) values (35, 35, 60);
insert into Tip (custID, empID, tipAmount) values (36, 36, 71);
insert into Tip (custID, empID, tipAmount) values (37, 37, 42);
insert into Tip (custID, empID, tipAmount) values (38, 38, 52);
insert into Tip (custID, empID, tipAmount) values (39, 39, 15);
insert into Tip (custID, empID, tipAmount) values (40, 40, 1);
insert into Tip (custID, empID, tipAmount) values (41, 41, 68);
insert into Tip (custID, empID, tipAmount) values (42, 42, 77);
insert into Tip (custID, empID, tipAmount) values (43, 43, 62);
insert into Tip (custID, empID, tipAmount) values (44, 44, 59);
insert into Tip (custID, empID, tipAmount) values (45, 45, 6);
insert into Tip (custID, empID, tipAmount) values (46, 46, 3);
insert into Tip (custID, empID, tipAmount) values (47, 47, 52);
insert into Tip (custID, empID, tipAmount) values (48, 48, 69);
insert into Tip (custID, empID, tipAmount) values (49, 49, 89);
insert into Tip (custID, empID, tipAmount) values (50, 50, 72);


CREATE TABLE Communication (
    messageToDriver TEXT,
    custID int NOT NULL,
    driverID int NOT NULL,

    CONSTRAINT comm_fk_1
        FOREIGN KEY (custID) REFERENCES Customer (customerID),

    CONSTRAINT comm_fk_2
        FOREIGN KEY (driverID) REFERENCES Driver (empID)
);
insert into Communication (messageToDriver, custID, driverID) values ('duis bibendum morbi non quam nec', 1, 1);
insert into Communication (messageToDriver, custID, driverID) values ('rhoncus aliquet pulvinar sed nisl nunc rhoncus dui', 2, 2);
insert into Communication (messageToDriver, custID, driverID) values ('dui luctus rutrum nulla tellus in sagittis dui vel', 3, 3);
insert into Communication (messageToDriver, custID, driverID) values ('pede venenatis non sodales sed tincidunt eu felis fusce', 4, 4);
insert into Communication (messageToDriver, custID, driverID) values ('mi pede malesuada in imperdiet', 5, 5);
insert into Communication (messageToDriver, custID, driverID) values ('nulla ut erat', 6, 6);
insert into Communication (messageToDriver, custID, driverID) values ('curae nulla dapibus dolor vel est', 7, 7);
insert into Communication (messageToDriver, custID, driverID) values ('vitae mattis nibh ligula nec sem', 8, 8);
insert into Communication (messageToDriver, custID, driverID) values ('purus aliquet at', 9, 9);
insert into Communication (messageToDriver, custID, driverID) values ('posuere felis sed lacus morbi', 10, 10);
insert into Communication (messageToDriver, custID, driverID) values ('condimentum curabitur in libero ut massa volutpat', 11, 11);
insert into Communication (messageToDriver, custID, driverID) values ('dui nec nisi', 12, 12);
insert into Communication (messageToDriver, custID, driverID) values ('magnis dis', 13, 13);
insert into Communication (messageToDriver, custID, driverID) values ('pharetra magna ac consequat', 14, 14);
insert into Communication (messageToDriver, custID, driverID) values ('neque vestibulum eget vulputate ut ultrices', 15, 15);
insert into Communication (messageToDriver, custID, driverID) values ('dictumst maecenas ut massa quis augue luctus', 16, 16);
insert into Communication (messageToDriver, custID, driverID) values ('nulla suspendisse potenti cras', 17, 17);
insert into Communication (messageToDriver, custID, driverID) values ('in blandit ultrices enim lorem ipsum dolor sit', 18, 18);
insert into Communication (messageToDriver, custID, driverID) values ('in sapien iaculis congue vivamus metus arcu adipiscing', 19, 19);
insert into Communication (messageToDriver, custID, driverID) values ('id massa id nisl venenatis lacinia aenean sit amet justo', 20, 20);
insert into Communication (messageToDriver, custID, driverID) values ('blandit ultrices', 21, 21);
insert into Communication (messageToDriver, custID, driverID) values ('neque sapien placerat ante nulla justo aliquam quis turpis eget', 22, 22);
insert into Communication (messageToDriver, custID, driverID) values ('iaculis congue vivamus metus arcu adipiscing molestie', 23, 23);
insert into Communication (messageToDriver, custID, driverID) values ('pede ullamcorper augue a suscipit nulla elit ac nulla', 24, 24);
insert into Communication (messageToDriver, custID, driverID) values ('sapien dignissim vestibulum vestibulum ante ipsum primis', 25, 25);
insert into Communication (messageToDriver, custID, driverID) values ('diam erat fermentum', 26, 26);
insert into Communication (messageToDriver, custID, driverID) values ('mauris morbi non', 27, 27);
insert into Communication (messageToDriver, custID, driverID) values ('lobortis ligula sit amet eleifend pede libero quis orci', 28, 28);
insert into Communication (messageToDriver, custID, driverID) values ('ut ultrices vel augue vestibulum ante ipsum primis in', 29, 29);
insert into Communication (messageToDriver, custID, driverID) values ('ultrices posuere cubilia curae donec pharetra magna', 30, 30);
insert into Communication (messageToDriver, custID, driverID) values ('vestibulum velit id pretium iaculis diam erat fermentum justo nec', 31, 31);
insert into Communication (messageToDriver, custID, driverID) values ('ligula in lacus curabitur at ipsum ac tellus semper interdum', 32, 32);
insert into Communication (messageToDriver, custID, driverID) values ('ut erat id mauris vulputate elementum nullam varius', 33, 33);
insert into Communication (messageToDriver, custID, driverID) values ('imperdiet sapien', 34, 34);
insert into Communication (messageToDriver, custID, driverID) values ('in imperdiet et commodo vulputate justo in blandit ultrices enim', 35, 35);
insert into Communication (messageToDriver, custID, driverID) values ('luctus et ultrices posuere cubilia curae mauris viverra', 36, 36);
insert into Communication (messageToDriver, custID, driverID) values ('mattis pulvinar nulla pede ullamcorper augue a', 37, 37);
insert into Communication (messageToDriver, custID, driverID) values ('nulla tempus vivamus in felis eu sapien cursus vestibulum', 38, 38);
insert into Communication (messageToDriver, custID, driverID) values ('duis at velit eu', 39, 39);
insert into Communication (messageToDriver, custID, driverID) values ('donec quis orci eget orci', 40, 40);
insert into Communication (messageToDriver, custID, driverID) values ('neque sapien placerat ante nulla justo aliquam quis turpis', 41, 41);
insert into Communication (messageToDriver, custID, driverID) values ('proin leo odio porttitor id', 42, 42);
insert into Communication (messageToDriver, custID, driverID) values ('nisi vulputate nonummy maecenas tincidunt lacus at velit', 43, 43);
insert into Communication (messageToDriver, custID, driverID) values ('posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat', 44, 44);
insert into Communication (messageToDriver, custID, driverID) values ('porttitor lorem id ligula suspendisse ornare consequat lectus', 45, 45);
insert into Communication (messageToDriver, custID, driverID) values ('sit amet nunc viverra dapibus nulla suscipit ligula', 46, 46);
insert into Communication (messageToDriver, custID, driverID) values ('penatibus et magnis', 47, 47);
insert into Communication (messageToDriver, custID, driverID) values ('in ante vestibulum', 48, 48);
insert into Communication (messageToDriver, custID, driverID) values ('felis donec semper sapien a libero nam', 49, 49);
insert into Communication (messageToDriver, custID, driverID) values ('pretium iaculis diam erat fermentum', 50, 50);

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
);insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (46, 1, 65, '2022-04-01', 3, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', null, 29);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (41, 2, 65, '2022-11-18', 4, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', null, 25);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (4, 3, 7, '2022-01-15', 5, 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo.', 96);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (34, 4, 8, '2022-10-19', 5, 'Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Nam tristique tortor eu pede.', null, 79);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (25, 5, 20, '2022-09-20', 1, 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 7);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (2, 6, 9, '2022-10-05', 4, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat.', null, 48);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (2, 7, 35, '2022-06-29', 1, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum.', null, 50);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (22, 8, 55, '2022-06-16', 4, 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis.', null, 24);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (39, 9, 7, '2022-09-05', 2, 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 68);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (4, 10, 24, '2022-05-23', 2, 'Morbi a ipsum. Integer a nibh. In quis justo.', null, 28);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (20, 11, 90, '2022-10-27', 5, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.', null, 1);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (29, 12, 39, '2022-01-19', 3, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius.', 1);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (40, 13, 43, '2022-05-27', 2, 'Nunc purus.', null, 63);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (10, 14, 26, '2022-06-25', 5, 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 84);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (14, 15, 4, '2022-09-10', 5, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.', null, 88);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (3, 16, 11, '2022-06-01', 5, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla.', null, 42);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (1, 17, 69, '2022-04-14', 4, 'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum.', null, 62);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (28, 18, 53, '2022-08-21', 5, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus.', 'In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.', 79);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (10, 19, 28, '2022-08-18', 3, 'Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', 'Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum.', 59);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (20, 20, 22, '2022-10-17', 3, 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', null, 62);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (50, 21, 33, '2022-09-24', 3, 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.', null, 74);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (39, 22, 59, '2022-04-17', 1, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.', null, 66);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (15, 23, 45, '2022-01-04', 4, 'Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.', 4);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (14, 24, 32, '2022-12-08', 3, 'Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia.', null, 26);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (39, 25, 27, '2022-02-27', 5, 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.', null, 76);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (30, 26, 10, '2022-10-12', 3, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.', null, 60);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (1, 27, 28, '2022-08-12', 5, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.', null, 85);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (11, 28, 51, '2022-02-05', 5, 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum.', null, 50);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (13, 29, 45, '2022-08-24', 1, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis.', null, 34);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (6, 30, 89, '2022-04-12', 1, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', null, 61);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (34, 31, 70, '2022-01-15', 2, 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', null, 88);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (28, 32, 44, '2022-12-08', 5, 'Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero.', null, 88);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (12, 33, 23, '2022-05-26', 3, 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', null, 17);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (35, 34, 92, '2022-07-18', 1, 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', null, 51);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (44, 35, 40, '2022-02-07', 1, 'Quisque porta volutpat erat.', null, 81);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (46, 36, 12, '2021-12-24', 1, 'Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', null, 70);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (8, 37, 62, '2022-11-26', 2, 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', null, 18);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (8, 38, 68, '2022-03-11', 1, 'Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', 'Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 14);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (49, 39, 17, '2022-11-05', 4, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.', null, 56);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (31, 40, 78, '2022-03-11', 4, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', null, 72);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (16, 41, 97, '2022-05-23', 5, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.', null, 18);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (8, 42, 100, '2022-09-04', 5, 'Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Nam tristique tortor eu pede.', 'Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.', 71);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (18, 43, 76, '2022-04-06', 3, 'Praesent blandit lacinia erat.', null, 1);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (43, 44, 39, '2022-03-18', 2, 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh.', null, 80);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (16, 45, 54, '2022-08-14', 1, 'Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', null, 39);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (32, 46, 58, '2022-05-17', 4, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', null, 9);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (43, 47, 58, '2022-06-15', 3, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 16);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (32, 48, 79, '2022-11-29', 2, 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', null, 97);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (36, 49, 13, '2022-01-02', 4, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.', 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.', 29);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (35, 50, 85, '2022-05-05', 4, 'Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna.', null, 4);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (50, 51, 63, '2022-07-03', 4, 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.', null, 36);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (34, 52, 25, '2022-03-28', 2, 'Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis.', null, 8);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (49, 53, 28, '2022-11-11', 1, 'Nullam porttitor lacus at turpis.', null, 76);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (25, 54, 20, '2022-10-01', 5, 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', null, 30);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (21, 55, 78, '2022-03-20', 4, 'Ut at dolor quis odio consequat varius. Integer ac leo.', null, 2);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (15, 56, 53, '2022-09-05', 4, 'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.', null, 51);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (18, 57, 55, '2022-11-14', 2, 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', null, 37);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (39, 58, 27, '2022-09-29', 5, 'Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.', null, 23);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (17, 59, 25, '2022-04-28', 2, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', null, 35);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (16, 60, 50, '2022-05-19', 2, 'In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', null, 41);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (16, 61, 80, '2022-02-20', 4, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.', null, 16);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (26, 62, 75, '2022-01-23', 5, 'Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', null, 98);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (5, 63, 75, '2022-01-11', 4, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', null, 30);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (12, 64, 22, '2022-04-14', 5, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', null, 36);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (48, 65, 88, '2022-06-22', 4, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.', null, 12);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (22, 66, 38, '2022-03-23', 3, 'Integer ac leo. Pellentesque ultrices mattis odio.', null, 14);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (21, 67, 92, '2022-10-30', 3, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.', null, 56);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (10, 68, 92, '2022-03-12', 1, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', null, 71);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (18, 69, 61, '2022-12-02', 3, 'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', null, 5);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (13, 70, 24, '2022-10-11', 4, 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 72);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (2, 71, 26, '2022-08-23', 2, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla.', 97);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (10, 72, 2, '2022-06-18', 1, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', null, 39);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (24, 73, 75, '2022-07-30', 2, 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', null, 27);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (11, 74, 19, '2022-07-31', 2, 'In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh.', null, 68);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (24, 75, 82, '2022-07-17', 1, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', null, 27);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (5, 76, 52, '2022-02-11', 1, 'Nulla mollis molestie lorem. Quisque ut erat.', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.', 37);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (40, 77, 21, '2022-10-28', 3, 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', null, 27);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (39, 78, 61, '2022-04-12', 5, 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 24);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (4, 79, 23, '2021-12-20', 2, 'Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', null, 33);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (31, 80, 58, '2022-11-07', 3, 'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', null, 76);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (25, 81, 35, '2022-09-08', 2, 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.', null, 21);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (40, 82, 90, '2022-02-24', 4, 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.', null, 70);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (43, 83, 58, '2022-08-19', 3, 'Cras pellentesque volutpat dui.', null, 41);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (20, 84, 27, '2022-06-11', 5, 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', 33);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (9, 85, 81, '2022-04-11', 5, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', null, 13);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (5, 86, 58, '2022-11-14', 5, 'Vivamus in felis eu sapien cursus vestibulum.', null, 83);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (10, 87, 41, '2022-02-28', 2, 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.', null, 60);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (14, 88, 7, '2022-10-14', 1, 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', 44);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (30, 89, 91, '2022-07-31', 3, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', null, 23);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (50, 90, 20, '2022-03-10', 2, 'Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', null, 75);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (40, 91, 16, '2022-06-23', 1, 'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', null, 81);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (1, 92, 17, '2022-02-06', 3, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', null, 65);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (4, 93, 55, '2021-12-29', 2, 'Donec semper sapien a libero.', null, 39);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (45, 94, 67, '2022-02-03', 1, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.', null, 99);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (22, 95, 58, '2022-03-20', 4, 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.', null, 10);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (30, 96, 55, '2022-03-31', 5, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.', null, 53);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (42, 97, 88, '2022-08-16', 1, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', null, 89);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (49, 98, 50, '2022-07-01', 3, 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus.', null, 99);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (19, 99, 3, '2022-01-29', 3, 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', null, 23);
insert into Review (custID, reviewID, orderID, orderDate, rating, comment, mgrResponse, managerID) values (10, 100, 80, '2022-05-09', 4, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', null, 94);
