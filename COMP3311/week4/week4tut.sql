-- Database name is week4tut

create table Employees (
    eid integer,
    ename varchar(40),
    age integer,
    salary real,
    primary key (eid)
);

create table Departments (
    did integer,
    dname varchar(40),
    budget integer,
    manager integer references Employees(eid),
    primary key (did)
);

create table WorksIn (
    eid integer references Employees(eid),
    did integer references Departments(did),
    percent integer,
    primary key (eid, did)
);

insert into Employees (eid, ename, age, salary) values (1, 'Alice Johnson', 23, 16000);
insert into Employees (eid, ename, age, salary) values (2, 'Bob Smith', 30, 25000);
insert into Employees (eid, ename, age, salary) values (3, 'Charlie Brown', 26, 30000);
insert into Employees (eid, ename, age, salary) values (4, 'Diana Prince', 28, 32000);
insert into Employees (eid, ename, age, salary) values (5, 'Evan Davis', 24, 17000);
insert into Employees (eid, ename, age, salary) values (6, 'Fiona White', 35, 40000);
insert into Employees (eid, ename, age, salary) values (7, 'George King', 45, 50000);
insert into Employees (eid, ename, age, salary) values (8, 'Hannah Lee', 32, 35000);
insert into Employees (eid, ename, age, salary) values (9, 'Ian Miller', 29, 28000);
insert into Employees (eid, ename, age, salary) values (10, 'Jackie Chan', 40, 45000);
insert into Employees (eid, ename, age, salary) values (11, 'Karen Black', 27, 31000);
insert into Employees (eid, ename, age, salary) values (12, 'Larry Page', 50, 60000);
insert into Employees (eid, ename, age, salary) values (13, 'Monica Geller', 26, 29000);
insert into Employees (eid, ename, age, salary) values (14, 'Nina Simone', 23, 18000);
insert into Employees (eid, ename, age, salary) values (15, 'Oscar Wilde', 33, 37000);
insert into Employees (eid, ename, age, salary) values (16, 'Paul Newman', 22, 15500);
insert into Employees (eid, ename, age, salary) values (17, 'Quincy Adams', 24, 16500);
insert into Employees (eid, ename, age, salary) values (18, 'Rachel Green', 30, 32000);
insert into Employees (eid, ename, age, salary) values (19, 'Steve Rogers', 28, 34000);
insert into Employees (eid, ename, age, salary) values (20, 'Tony Stark', 45, 80000);

insert into Departments (did, dname, budget, manager) values (1, 'Sales', 100000, 2);       -- Manager: Bob Smith (eid 2)
insert into Departments (did, dname, budget, manager) values (2, 'Engineering', 200000, 4); -- Manager: Diana Prince (eid 4)
insert into Departments (did, dname, budget, manager) values (3, 'HR', 80000, 6);           -- Manager: Fiona White (eid 6)
insert into Departments (did, dname, budget, manager) values (4, 'Marketing', 120000, 11);  -- Manager: Karen Black (eid 11)
insert into Departments (did, dname, budget, manager) values (5, 'Operations', 150000, 7);  -- Manager: George King (eid 7)

-- Department 1: Sales
insert into WorksIn (eid, did, percent) values (2, 1, 100);
insert into WorksIn (eid, did, percent) values (1, 1, 50);
insert into WorksIn (eid, did, percent) values (5, 1, 60);

-- Department 2: Engineering
insert into WorksIn (eid, did, percent) values (4, 2, 100);
insert into WorksIn (eid, did, percent) values (9, 2, 40);
insert into WorksIn (eid, did, percent) values (16, 2, 60);

-- Department 3: HR
insert into WorksIn (eid, did, percent) values (6, 3, 100);
insert into WorksIn (eid, did, percent) values (14, 3, 50);
insert into WorksIn (eid, did, percent) values (17, 3, 50);

-- Department 4: Marketing
insert into WorksIn (eid, did, percent) values (11, 4, 100);
insert into WorksIn (eid, did, percent) values (3, 4, 40);
insert into WorksIn (eid, did, percent) values (13, 4, 60);

-- Department 5: Operations
insert into WorksIn (eid, did, percent) values (7, 5, 100);
insert into WorksIn (eid, did, percent) values (8, 5, 50);
insert into WorksIn (eid, did, percent) values (15, 5, 50);

-- Additional cross–department assignments
insert into WorksIn (eid, did, percent) values (10, 1, 40);
insert into WorksIn (eid, did, percent) values (10, 4, 50);
insert into WorksIn (eid, did, percent) values (18, 2, 50);
insert into WorksIn (eid, did, percent) values (18, 5, 40);
insert into WorksIn (eid, did, percent) values (19, 2, 70);
insert into WorksIn (eid, did, percent) values (19, 3, 30);
