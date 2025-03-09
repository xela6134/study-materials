create table Suppliers (
    sid     integer primary key,
    sname   text,
    address text
);

create table Parts (
    pid     integer primary key,
    pname   text,
    colour  text
);

create table Catalog (
    sid     integer references Suppliers(sid),
    pid     integer references Parts(pid),
    cost    numeric(6, 2),
    primary key (sid, pid)
);

insert into Suppliers (sid, sname, address) values (1, 'Alpha Supplies', '123 Main Street');
insert into Suppliers (sid, sname, address) values (2, 'Beta Corp', '456 Central Ave');
insert into Suppliers (sid, sname, address) values (3, 'Gamma Traders', '789 Market Road');
insert into Suppliers (sid, sname, address) values (4, 'Delta Distributors', '101 Commerce Blvd');
insert into Suppliers (sid, sname, address) values (5, 'Epsilon Wholesale', '202 Industrial Way');
insert into Suppliers (sid, sname, address) values (6, 'Zeta Retail', '303 Business Park');
insert into Suppliers (sid, sname, address) values (7, 'Yosemite Sham', '654 Mountain Road');
insert into Suppliers (sid, sname, address) values (8, 'Theta Goods', '987 Riverside Drive');
insert into Suppliers (sid, sname, address) values (9, 'Iota Exports', '111 Ocean View');
insert into Suppliers (sid, sname, address) values (10, 'Kappa Imports', '222 Lake St');
insert into Suppliers (sid, sname, address) values (11, 'Lambda Logistics', '333 River Road');
insert into Suppliers (sid, sname, address) values (12, 'Mu Merchants', '444 Suburban St');
insert into Suppliers (sid, sname, address) values (13, 'Nu Networks', '555 Tech Park');
insert into Suppliers (sid, sname, address) values (14, 'Xi Essentials', '666 Urban Lane');
insert into Suppliers (sid, sname, address) values (15, 'Omicron Outfitters', '777 Fashion Ave');
insert into Suppliers (sid, sname, address) values (16, 'Pi Providers', '888 High Street');
insert into Suppliers (sid, sname, address) values (17, 'Rho Retailers', '999 Discount Blvd');
insert into Suppliers (sid, sname, address) values (18, 'Sigma Supplies', '221 Packer Street');
insert into Suppliers (sid, sname, address) values (19, 'Tau Traders', '221 Packer Street');
insert into Suppliers (sid, sname, address) values (20, 'Upsilon Unlimited', '1234 Market Place');
insert into Suppliers (sid, sname, address) values (21, 'Phi Fabrics', '1357 Textile Rd');
insert into Suppliers (sid, sname, address) values (22, 'Chi Commodities', '2468 Business Ave');
insert into Suppliers (sid, sname, address) values (23, 'Psi Products', '3690 Commercial Blvd');
insert into Suppliers (sid, sname, address) values (24, 'Omega Options', '1478 Choice Way');
insert into Suppliers (sid, sname, address) values (25, 'Acme Corporation', '1590 Industrial Ave');
insert into Suppliers (sid, sname, address) values (26, 'Brightline Solutions', '1789 Efficiency Drive');
insert into Suppliers (sid, sname, address) values (27, 'Crestview Enterprises', '1876 Summit Road');
insert into Suppliers (sid, sname, address) values (28, 'Dynasty Distributors', '1965 Heritage Blvd');
insert into Suppliers (sid, sname, address) values (29, 'Evergreen Supplies', '2048 Forest Lane');
insert into Suppliers (sid, sname, address) values (30, 'Frontier Trading', '2130 Pioneer Blvd');

insert into Parts (pid, pname, colour) values (1, 'Widget', 'red');
insert into Parts (pid, pname, colour) values (2, 'Gadget', 'green');
insert into Parts (pid, pname, colour) values (3, 'Component', 'blue');
insert into Parts (pid, pname, colour) values (4, 'Module', 'yellow');
insert into Parts (pid, pname, colour) values (5, 'Device', 'red');
insert into Parts (pid, pname, colour) values (6, 'Apparatus', 'green');
insert into Parts (pid, pname, colour) values (7, 'Instrument', 'blue');
insert into Parts (pid, pname, colour) values (8, 'Mechanism', 'yellow');
insert into Parts (pid, pname, colour) values (9, 'Tool', 'red');
insert into Parts (pid, pname, colour) values (10, 'Implement', 'green');
insert into Parts (pid, pname, colour) values (11, 'Utensil', 'blue');
insert into Parts (pid, pname, colour) values (12, 'Appliance', 'yellow');
insert into Parts (pid, pname, colour) values (13, 'Contraption', 'red');
insert into Parts (pid, pname, colour) values (14, 'Gizmo', 'green');
insert into Parts (pid, pname, colour) values (15, 'Doohickey', 'blue');
insert into Parts (pid, pname, colour) values (16, 'Thingamajig', 'yellow');
insert into Parts (pid, pname, colour) values (17, 'Widget Pro', 'red');
insert into Parts (pid, pname, colour) values (18, 'Gadget Plus', 'green');
insert into Parts (pid, pname, colour) values (19, 'Component X', 'blue');
insert into Parts (pid, pname, colour) values (20, 'Module Z', 'yellow');
insert into Parts (pid, pname, colour) values (21, 'Device Ultra', 'red');
insert into Parts (pid, pname, colour) values (22, 'Apparatus Prime', 'green');
insert into Parts (pid, pname, colour) values (23, 'Instrument Max', 'blue');
insert into Parts (pid, pname, colour) values (24, 'Mechanism Elite', 'yellow');
insert into Parts (pid, pname, colour) values (25, 'Tool Advance', 'red');
insert into Parts (pid, pname, colour) values (26, 'Implement Supreme', 'green');
insert into Parts (pid, pname, colour) values (27, 'Utensil Next', 'blue');
insert into Parts (pid, pname, colour) values (28, 'Appliance Mini', 'yellow');
insert into Parts (pid, pname, colour) values (29, 'Contraption Ultra', 'red');
insert into Parts (pid, pname, colour) values (30, 'Gizmo Elite', 'green');

insert into Catalog (sid, pid, cost) values (1, 1, 25.50);
insert into Catalog (sid, pid, cost) values (1, 2, 35.75);
insert into Catalog (sid, pid, cost) values (1, 3, 45.00);
insert into Catalog (sid, pid, cost) values (1, 4, 55.25);
insert into Catalog (sid, pid, cost) values (1, 5, 65.50);

insert into Catalog (sid, pid, cost) values (2, 2, 75.00);
insert into Catalog (sid, pid, cost) values (2, 3, 85.25);
insert into Catalog (sid, pid, cost) values (2, 4, 95.50);
insert into Catalog (sid, pid, cost) values (2, 6, 105.75);
insert into Catalog (sid, pid, cost) values (2, 7, 115.00);

insert into Catalog (sid, pid, cost) values (3, 1, 125.25);
insert into Catalog (sid, pid, cost) values (3, 3, 135.50);
insert into Catalog (sid, pid, cost) values (3, 5, 145.75);
insert into Catalog (sid, pid, cost) values (3, 7, 155.00);
insert into Catalog (sid, pid, cost) values (3, 9, 165.25);

insert into Catalog (sid, pid, cost) values (4, 2, 175.50);
insert into Catalog (sid, pid, cost) values (4, 4, 185.75);
insert into Catalog (sid, pid, cost) values (4, 6, 195.00);
insert into Catalog (sid, pid, cost) values (4, 8, 205.25);
insert into Catalog (sid, pid, cost) values (4, 10, 215.50);

insert into Catalog (sid, pid, cost) values (5, 1, 225.75);
insert into Catalog (sid, pid, cost) values (5, 4, 235.00);
insert into Catalog (sid, pid, cost) values (5, 7, 245.25);
insert into Catalog (sid, pid, cost) values (5, 10, 255.50);
insert into Catalog (sid, pid, cost) values (5, 13, 265.75);

insert into Catalog (sid, pid, cost) values (6, 3, 275.00);
insert into Catalog (sid, pid, cost) values (6, 6, 285.25);
insert into Catalog (sid, pid, cost) values (6, 9, 295.50);
insert into Catalog (sid, pid, cost) values (6, 12, 305.75);
insert into Catalog (sid, pid, cost) values (6, 15, 315.00);

insert into Catalog (sid, pid, cost) values (7, 1, 50.00);
insert into Catalog (sid, pid, cost) values (7, 2, 60.00);
insert into Catalog (sid, pid, cost) values (7, 3, 70.00);
insert into Catalog (sid, pid, cost) values (7, 4, 80.00);
insert into Catalog (sid, pid, cost) values (7, 5, 90.00);
insert into Catalog (sid, pid, cost) values (7, 6, 100.00);

insert into Catalog (sid, pid, cost) values (8, 2, 110.00);
insert into Catalog (sid, pid, cost) values (8, 5, 120.50);
insert into Catalog (sid, pid, cost) values (8, 8, 130.75);
insert into Catalog (sid, pid, cost) values (8, 11, 140.00);
insert into Catalog (sid, pid, cost) values (8, 14, 150.25);

insert into Catalog (sid, pid, cost) values (9, 3, 160.50);
insert into Catalog (sid, pid, cost) values (9, 6, 170.75);
insert into Catalog (sid, pid, cost) values (9, 9, 180.00);
insert into Catalog (sid, pid, cost) values (9, 12, 190.25);
insert into Catalog (sid, pid, cost) values (9, 15, 200.50);

insert into Catalog (sid, pid, cost) values (10, 4, 210.75);
insert into Catalog (sid, pid, cost) values (10, 7, 220.00);
insert into Catalog (sid, pid, cost) values (10, 10, 230.25);
insert into Catalog (sid, pid, cost) values (10, 13, 240.50);
insert into Catalog (sid, pid, cost) values (10, 16, 250.75);

insert into Catalog (sid, pid, cost) values (11, 5, 260.00);
insert into Catalog (sid, pid, cost) values (11, 8, 270.25);
insert into Catalog (sid, pid, cost) values (11, 11, 280.50);
insert into Catalog (sid, pid, cost) values (11, 14, 290.75);
insert into Catalog (sid, pid, cost) values (11, 17, 300.00);

insert into Catalog (sid, pid, cost) values (12, 6, 310.25);
insert into Catalog (sid, pid, cost) values (12, 9, 320.50);
insert into Catalog (sid, pid, cost) values (12, 12, 330.75);
insert into Catalog (sid, pid, cost) values (12, 15, 340.00);
insert into Catalog (sid, pid, cost) values (12, 18, 350.25);

insert into Catalog (sid, pid, cost) values (13, 7, 360.50);
insert into Catalog (sid, pid, cost) values (13, 10, 370.75);
insert into Catalog (sid, pid, cost) values (13, 13, 380.00);
insert into Catalog (sid, pid, cost) values (13, 16, 390.25);
insert into Catalog (sid, pid, cost) values (13, 19, 400.50);

insert into Catalog (sid, pid, cost) values (14, 8, 410.75);
insert into Catalog (sid, pid, cost) values (14, 11, 420.00);
insert into Catalog (sid, pid, cost) values (14, 14, 430.25);
insert into Catalog (sid, pid, cost) values (14, 17, 440.50);
insert into Catalog (sid, pid, cost) values (14, 20, 450.75);

insert into Catalog (sid, pid, cost) values (15, 9, 460.00);
insert into Catalog (sid, pid, cost) values (15, 12, 470.25);
insert into Catalog (sid, pid, cost) values (15, 15, 480.50);
insert into Catalog (sid, pid, cost) values (15, 18, 490.75);
insert into Catalog (sid, pid, cost) values (15, 21, 500.00);

insert into Catalog (sid, pid, cost) values (16, 10, 30.00);
insert into Catalog (sid, pid, cost) values (16, 13, 40.25);
insert into Catalog (sid, pid, cost) values (16, 16, 50.50);
insert into Catalog (sid, pid, cost) values (16, 19, 60.75);
insert into Catalog (sid, pid, cost) values (16, 22, 70.00);

insert into Catalog (sid, pid, cost) values (17, 11, 80.25);
insert into Catalog (sid, pid, cost) values (17, 14, 90.50);
insert into Catalog (sid, pid, cost) values (17, 17, 100.75);
insert into Catalog (sid, pid, cost) values (17, 20, 110.00);
insert into Catalog (sid, pid, cost) values (17, 23, 120.25);

insert into Catalog (sid, pid, cost) values (18, 12, 130.50);
insert into Catalog (sid, pid, cost) values (18, 15, 140.75);
insert into Catalog (sid, pid, cost) values (18, 18, 150.00);
insert into Catalog (sid, pid, cost) values (18, 21, 160.25);
insert into Catalog (sid, pid, cost) values (18, 24, 170.50);

insert into Catalog (sid, pid, cost) values (19, 13, 180.75);
insert into Catalog (sid, pid, cost) values (19, 16, 190.00);
insert into Catalog (sid, pid, cost) values (19, 19, 200.25);
insert into Catalog (sid, pid, cost) values (19, 22, 210.50);
insert into Catalog (sid, pid, cost) values (19, 25, 220.75);

insert into Catalog (sid, pid, cost) values (20, 14, 230.00);
insert into Catalog (sid, pid, cost) values (20, 17, 240.25);
insert into Catalog (sid, pid, cost) values (20, 20, 250.50);
insert into Catalog (sid, pid, cost) values (20, 23, 260.75);
insert into Catalog (sid, pid, cost) values (20, 26, 270.00);

insert into Catalog (sid, pid, cost) values (21, 15, 280.25);
insert into Catalog (sid, pid, cost) values (21, 18, 290.50);
insert into Catalog (sid, pid, cost) values (21, 21, 300.75);
insert into Catalog (sid, pid, cost) values (21, 24, 310.00);
insert into Catalog (sid, pid, cost) values (21, 27, 320.25);

insert into Catalog (sid, pid, cost) values (22, 16, 330.50);
insert into Catalog (sid, pid, cost) values (22, 19, 340.75);
insert into Catalog (sid, pid, cost) values (22, 22, 350.00);
insert into Catalog (sid, pid, cost) values (22, 25, 360.25);
insert into Catalog (sid, pid, cost) values (22, 28, 370.50);

insert into Catalog (sid, pid, cost) values (23, 17, 380.75);
insert into Catalog (sid, pid, cost) values (23, 20, 390.00);
insert into Catalog (sid, pid, cost) values (23, 23, 400.25);
insert into Catalog (sid, pid, cost) values (23, 26, 410.50);
insert into Catalog (sid, pid, cost) values (23, 29, 420.75);

insert into Catalog (sid, pid, cost) values (24, 18, 430.00);
insert into Catalog (sid, pid, cost) values (24, 21, 440.25);
insert into Catalog (sid, pid, cost) values (24, 24, 450.50);
insert into Catalog (sid, pid, cost) values (24, 27, 460.75);
insert into Catalog (sid, pid, cost) values (24, 30, 470.00);

insert into Catalog (sid, pid, cost) values (25, 19, 480.25);
insert into Catalog (sid, pid, cost) values (25, 22, 490.50);
insert into Catalog (sid, pid, cost) values (25, 25, 500.00);
insert into Catalog (sid, pid, cost) values (25, 28, 45.00);
insert into Catalog (sid, pid, cost) values (25, 1, 55.25);

insert into Catalog (sid, pid, cost) values (26, 20, 65.50);
insert into Catalog (sid, pid, cost) values (26, 23, 75.75);
insert into Catalog (sid, pid, cost) values (26, 26, 85.00);
insert into Catalog (sid, pid, cost) values (26, 29, 95.25);
insert into Catalog (sid, pid, cost) values (26, 2, 105.50);

insert into Catalog (sid, pid, cost) values (27, 21, 115.75);
insert into Catalog (sid, pid, cost) values (27, 24, 125.00);
insert into Catalog (sid, pid, cost) values (27, 27, 135.25);
insert into Catalog (sid, pid, cost) values (27, 30, 145.50);
insert into Catalog (sid, pid, cost) values (27, 3, 155.75);

insert into Catalog (sid, pid, cost) values (28, 22, 165.00);
insert into Catalog (sid, pid, cost) values (28, 25, 175.25);
insert into Catalog (sid, pid, cost) values (28, 28, 185.50);
insert into Catalog (sid, pid, cost) values (28, 1, 195.75);
insert into Catalog (sid, pid, cost) values (28, 4, 205.00);

insert into Catalog (sid, pid, cost) values (29, 23, 215.25);
insert into Catalog (sid, pid, cost) values (29, 26, 225.50);
insert into Catalog (sid, pid, cost) values (29, 29, 235.75);
insert into Catalog (sid, pid, cost) values (29, 2, 246.00);
insert into Catalog (sid, pid, cost) values (29, 5, 256.25);

insert into Catalog (sid, pid, cost) values (30, 24, 266.50);
insert into Catalog (sid, pid, cost) values (30, 27, 276.75);
insert into Catalog (sid, pid, cost) values (30, 30, 287.00);
insert into Catalog (sid, pid, cost) values (30, 3, 297.25);
insert into Catalog (sid, pid, cost) values (30, 6, 307.50);
